local air = minetest.get_content_id("air")
local ceiling_node_positions = {{x=-1, y=-1, z=-1}}
local array_index = 0
local search_or_spawn = 0 --false means search and true means spawn cave-in blocks
local time_track = 0
local cavein_time = 0
local players_to_hurt = {}
local sound_handle

local caveing_max_height = -300
local cavein_max_chance = 3000 --1 - 3000 chance of cave-in spawning
local min_cavein_time = 10
local max_cavin_time = 25
local time_to_check = 120 --seconds

local temp_player


function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end


minetest.register_globalstep(function(dtime)
    time_track = time_track + dtime
    
  if search_or_spawn > 2 then
    

    --Loop through the players
    for i3,player in ipairs(players_to_hurt) do
       
      --player:set_look_vertical(player:get_look_vertical() + math.random(-0.9, 0.9))
      
--      x = math.random(-0.8, 0.8)
--      y = math.random(-0.8, 0.8)
--      z = math.random(-0.8, 0.8)
      
--      player_pos = player:getpos()
--      player_pos.x = player_pos.x + x
--      player_pos.y = player_pos.y + y
--      player_pos.z = player_pos.z + z
--      player_pos = player:setpos(player_pos)
      
      --Get falling node that could be on player
      falling_objects = minetest.get_objects_inside_radius(player:getpos(), 1) 
      
      --Round the visual size to 0.667 if it is a falling node (there should be a better way to identify them!)
      if round(falling_objects[1]:get_properties().visual_size.x, 3) == 0.667 then
        
          --Damage the player
          player:set_hp(player:get_hp()-0.0000000000001)
      end
    end
      
      
    if array_index > 0 then
      rand_index = math.random(1, array_index-1)
    end
    
    --make the nodes fall
    minetest.set_node(ceiling_node_positions[rand_index], {name="default:gravel"})
    minetest.check_for_falling(ceiling_node_positions[rand_index])
    ceiling_node_positions[rand_index].y = ceiling_node_positions[rand_index].y + 1
    
    --Check if cave-in should end
    if time_track > cavein_time then --if after time then go back and randomly check for cave-in
      
      --Stop sound
      minetest.sound_stop(sound_handle)
      
      --Reset vars
      search_or_spawn = 0
      array_index = 0
      time_track = 0
      ceiling_node_positions = {{x=-1, y=-1, z=-1}}
      cavein_time = 0
      players_to_hurt = {}
    end
    
  elseif time_track > time_to_check then --Two mintues

    for _,player in ipairs(minetest.get_connected_players()) do
      
      --Get the player's position
      player_pos = player:getpos()
      
      --Cave-ins only happen below -300 blocks
      if player_pos.y < caveing_max_height then
        if math.random(1, cavein_max_chance) == 2 then --One in whatever chance of a cave-in happening
        
          vox_manip = minetest.get_voxel_manip({x=player_pos.x-8, y=player_pos.y-1, z=player_pos.z-8}, {x=player_pos.x+8, y=player_pos.y+8, z=player_pos.z+8})
          
          local data = vox_manip:get_data()
          e1, e2 = vox_manip:get_emerged_area()
          area = VoxelArea:new{MinEdge=e1, MaxEdge=e2}
          
          
          for i in area:iterp(e1, e2) do
            
            temp_pos = area:position(i)
            temp_pos.y = temp_pos.y+1
            ceiling_node_name = vox_manip:get_node_at({x=temp_pos.x, y=temp_pos.y, z=temp_pos.z}).name
            
            
            if data[i] == air and ceiling_node_name ~= "air" and ceiling_node_name ~= "ignore"then
              ceiling_node_positions[array_index] = temp_pos
              array_index = array_index + 1
              search_or_spawn = search_or_spawn + 1
            end
          end
          

--        if search_or_spawn then
          cavein_time = math.random(min_cavein_time, max_cavin_time)

          --Get all the players in a certain radius so they can be hurt by "__builtin:falling_node" (gravel)
          objects_to_hurt = minetest.get_objects_inside_radius(player_pos, 25)
          table.insert(players_to_hurt, player) --Insert the player that is the one that spawned the cave-in
          for i2,object_to_hurt in ipairs(objects_to_hurt) do
            if object_to_hurt:is_player() then
              table.insert(players_to_hurt, object_to_hurt)
            end
          end
          
          sound_handle = minetest.sound_play("earth", {
            pos = player_pos,
            max_hear_distance = 100,
            gain = 10.0,
          })
        
        time_track = 0

        end
      end
    end
  end
end)