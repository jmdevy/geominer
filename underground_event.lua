local search_or_spawn = 0 --false means search and true means spawn cave-in blocks/flood
local time_track = 0
local cavein_time = 0 --Tracker for the current time the cave-in has been going on
local players_to_hurt = {} --All of the players around the player that started the cave-in event. These players will take damge upon impact

local min_cavein_time = 10  --The minimum time a cave-in will last
local max_cavin_time = 25   --The maximum time a cave-in will last

local max_flood_life = 1500 --The bigger this number the longer a flood will last before turning into regular water
local flood_life = max_flood_life --tracks the current flood life

--This stuff is used for finding cave-in blocks
local data
local e1, e2
local area

--Table of blocks that will fall
local nodes_to_fall = {}


--Function to round to a decimal to a certain deciaml place
function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local c_air = minetest.get_content_id("air")
local c_ignore = minetest.get_content_id("ignore")

--Ids of the nodes that will be allowed to fall
local cavein_ids = {}
cavein_ids[1] = {id=minetest.get_content_id("geominer:diorite"), falling_name="geominer:diorite_falling"}
cavein_ids[2] = {id=minetest.get_content_id("geominer:granite"), falling_name="geominer:granite_falling"}
cavein_ids[3] = {id=minetest.get_content_id("geominer:hornfels"), falling_name="geominer:hornfels_falling"}
cavein_ids[4] = {id=minetest.get_content_id("geominer:scoria"), falling_name="geominer:scoria_falling"}
cavein_ids[5] = {id=minetest.get_content_id("geominer:limestone"), falling_name="geominer:limestone_falling"}
cavein_ids[6] = {id=minetest.get_content_id("geominer:slate"), falling_name="geominer:slate_falling"}
cavein_ids[7] = {id=minetest.get_content_id("geominer:gneiss"), falling_name="geominer:gneiss_falling"}
cavein_ids[8] = {id=minetest.get_content_id("geominer:marble"), falling_name="geominer:marble_falling"}
cavein_ids[9] = {id=minetest.get_content_id("geominer:peridotite"), falling_name="geominer:peridotite_falling"}
cavein_ids[10] = {id=minetest.get_content_id("default:stone"), falling_name="geominer:normal_stone_falling"}
cavein_ids[11] = {id=minetest.get_content_id("geominer:hell_stone"), falling_name="geominer:hell_stone_falling"}

function GetFallingNode(id)
  for index, value in ipairs(cavein_ids) do
      if value.id == id then
          return value.falling_name
      end
  end
  return nil
end



--Only have floods/cave-ins if the user says so
if underground_events == "true" then
  minetest.register_globalstep(function(dtime)
      time_track = time_track + dtime
    if search_or_spawn > 2 then
      
      --Loop through the players
      for i3, player in ipairs(players_to_hurt) do
        
        --Get falling node that could be on player
        falling_objects = minetest.get_objects_inside_radius(player:getpos(), 1) 
        
        --Round the visual size to 0.667 if it is a falling node (there should be a better way to identify them!)
        if round(falling_objects[1]:get_properties().visual_size.x, 3) == 0.667 then
          
            --Damage the player
            player:set_hp(player:get_hp()-0.0000000000001)
        end
      end
        
      if #nodes_to_fall > 0 then
        rand_index = math.random(1, #nodes_to_fall)
      end
      
      --make the nodes fall. Also check if it is an air node
      if data[area:index(nodes_to_fall[rand_index].pos.x, nodes_to_fall[rand_index].pos.y, nodes_to_fall[rand_index].pos.z)] ~= c_air then
        minetest.set_node(nodes_to_fall[rand_index].pos, {name=nodes_to_fall[rand_index].falling_node})
        minetest.check_for_falling(nodes_to_fall[rand_index].pos)
      end
      
      --Get the node above the node that fell so it has a chance to fall aswell. Also check if it is an air node
      if data[area:index(nodes_to_fall[rand_index].pos.x, nodes_to_fall[rand_index].pos.y+1, nodes_to_fall[rand_index].pos.z)] ~= c_air then
        nodes_to_fall[rand_index].pos.y = nodes_to_fall[rand_index].pos.y + 1
      end
      
      --Check if cave-in should end
      if time_track > cavein_time then --if after time then go back and randomly check for cave-in
        
        --Reset vars
        search_or_spawn = 0
        time_track = 0
        cavein_time = 0
        players_to_hurt = {}
        nodes_to_fall = {}
      end
      
    elseif time_track > underground_event_check_time then

      for _,player in ipairs(minetest.get_connected_players()) do
        
        --Get the player's position
        player_pos = player:getpos()
        
        --Cave-ins only happen below the first layer of hard blocks
        if player_pos.y < first_layer_start then
          if math.random(1, underground_event_chance) == 2 then --One in whatever chance of a cave-in happening
          
            vox_manip = minetest.get_voxel_manip({x=player_pos.x-8, y=player_pos.y-1, z=player_pos.z-8}, {x=player_pos.x+8, y=player_pos.y+8, z=player_pos.z+8})
            
            data = vox_manip:get_data()
            e1, e2 = vox_manip:get_emerged_area()
            area = VoxelArea:new{MinEdge=e1, MaxEdge=e2}
            
            --Used to decide if the event should be a cave-in or flood
            water_cavin = math.random(1, 2)
            
            if water_cavin == 1 and flash_flood_event == "true" then  --flash-flood
              
              --reset life of flood
              flood_life = 0
              
              --Spawn the flood only in small caves
              for i in area:iterp(e1, e2) do
                
                temp_pos = area:position(i)
                temp_pos.y = temp_pos.y + 1
                if temp_pos.y > player_pos.y + 4 then
                    ceiling_node_name = vox_manip:get_node_at({x=temp_pos.x, y=temp_pos.y, z=temp_pos.z}).name
                    if data[i] == air and ceiling_node_name ~= "air" and ceiling_node_name ~= "ignore"then
                        check_y_down = vox_manip:get_node_at({x=temp_pos.x, y=temp_pos.y-10, z=temp_pos.z}).name
                        
                        check_x_up = vox_manip:get_node_at({x=temp_pos.x+10, y=temp_pos.y, z=temp_pos.z}).name
                        check_x_down = vox_manip:get_node_at({x=temp_pos.x-10, y=temp_pos.y, z=temp_pos.z}).name
                        
                        check_z_up = vox_manip:get_node_at({x=temp_pos.x, y=temp_pos.y, z=temp_pos.z+10}).name
                        check_z_down = vox_manip:get_node_at({x=temp_pos.x, y=temp_pos.y, z=temp_pos.z-10}).name
                        
                        if check_y_down ~= "air" and check_y_down ~= "ignore" and
                        check_x_down ~= "air" and check_x_down ~= "ignore" and
                        check_z_down ~= "air" and check_z_down ~= "ignore" and
                        check_x_up ~= "air" and check_x_up ~= "ignore" and
                        check_z_up ~= "air" and check_z_up ~= "ignore" then
                          minetest.set_node({x=temp_pos.x, y=temp_pos.y, z=temp_pos.z}, {name="geominer:water"})
                          return
                        end
                    end
                end
              end
            elseif cavein_event == "true" then --cave-in
              
              --Find nodes that are on the ceiling of the cave, meaning they have air under them to fall into
              for i in area:iterp(e1, e2) do
                
                  local to_fall_pos = area:position(i)
                  local check_below_pos_index = area:index(to_fall_pos.x, to_fall_pos.y-1, to_fall_pos.z)
                  
                  local falling_node_name = GetFallingNode(data[i])
                  if data[check_below_pos_index] == c_air and falling_node_name ~= nil then
                      nodes_to_fall[#nodes_to_fall+1] = {pos=to_fall_pos, falling_node=falling_node_name}
                      search_or_spawn = search_or_spawn + 1
                  end
              end
            end
            
            --if search_or_spawn == true then find a random time between given ranges
            cavein_time = math.random(min_cavein_time, max_cavin_time)

            --Get all the players in a certain radius so they can be hurt by "__builtin:falling_node" (gravel)
            objects_to_hurt = minetest.get_objects_inside_radius(player_pos, 25)
            table.insert(players_to_hurt, player) --Insert the player that is the one that spawned the cave-in
            for i2,object_to_hurt in ipairs(objects_to_hurt) do
              if object_to_hurt:is_player() then
                table.insert(players_to_hurt, object_to_hurt)
              end
            end
            --reset
            time_track = 0

          end
        end
      end
    end
  end)

end


--Node and abm defs for water that floods caves
minetest.register_node("geominer:water", {
  description = "Geominer Water Source",
  drawtype = "liquid",
  tiles = {
    {
      name = "default_water_source_animated.png",
      animation = {
        type = "vertical_frames",
        aspect_w = 16,
        aspect_h = 16,
        length = 2.0,
      },
    },
  },
  special_tiles = {
    {
      name = "default_water_source_animated.png",
      animation = {
        type = "vertical_frames",
        aspect_w = 16,
        aspect_h = 16,
        length = 2.0,
      },
      backface_culling = false,
    },
  },
  alpha = 160,
  paramtype = "light",
  walkable = false,
  pointable = false,
  diggable = false,
  buildable_to = true,
  is_ground_content = false,
  drop = "",
  drowning = 1,
  liquidtype = "source",
  liquid_alternative_flowing = "geominer:water",
  liquid_alternative_source = "geominer:water",
  liquid_viscosity = 1,
  liquid_range = 7,
  post_effect_color = {a = 103, r = 30, g = 60, b = 90},
  groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
  sounds = default.node_sound_water_defaults(),
  on_construct = function(pos)
      --If the life if the floods goes over the max then set the nodes to normal water
      if flood_life >= max_flood_life then
          minetest.set_node(pos, {name="default:water_source"})
      end
  end,
})


--Without setting the nodes to regular water the flood would go on forever
minetest.register_abm({
  nodenames = {"geominer:water"},
  neighbors = {"air"},
  interval = 2.5,
  chance = 1,
  action = function(pos, node, active_object_count, active_object_count_wider)
    
    flood_life = flood_life + 1
    --If the life if the floods goes over the max then set the nodes to normal water
    if flood_life >= max_flood_life then
      minetest.set_node(pos, {name="default:water_source"})
    end
    
  end,
})