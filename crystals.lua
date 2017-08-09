--VoxelMinp defs
local c_air = minetest.get_content_id"air"
local c_ignore = minetest.get_content_id"ignore"
 
 
 
--Register the crystal node that drops entities
minetest.register_node("geominer:crystal", {
  walkable = true,
	description = "Crystal stalagmite",
	tiles = {"geominer_crystal.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:glow_blue_drop 3",
  paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 3},
  light_source = 10,
})

--Entity that drops from crystals that makes area glow
minetest.register_entity("geominer:glow_en_crystal", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collisionbox = {-0.18,-0.18,-0.18, 0.18,0.18,0.18},
		visual = "sprite",
		visual_size = {x=0.5, y=0.5},
		textures = {"geominer_drop.png"},
		spritediv = {x=1, y=1},
		initial_sprite_basepos = {x=0, y=0},
		is_visible = true,
		timer = 0,
    physical = true,
    collide_with_objects = true
	},
	on_activate = function(self, staticdata, dtime_s)
    
    last_glow_pos = self.object:getpos()

	end,

  last_glow_pos = {x=-1, y=-1, z=-1},
  
  
	on_step = function(self, dtime)

    temp_pos = self.object:getpos()
    if self.last_glow_pos.y ~= temp_pos.y then
      minetest.set_node(self.last_glow_pos, {name="air"})
      self.last_glow_pos = temp_pos
      minetest.set_node(self.last_glow_pos, {name="geominer:glow_drop"})
    else
      minetest.set_node(temp_pos, {name="air"})
      self.object:remove()
    end
    
    node = minetest.get_node({x=self.last_glow_pos.x, y=self.last_glow_pos.y-0.3, z=self.last_glow_pos.z})
	end,
})

if drop_glow_entities == "true" then
  --Make crystals drop blue drops
  minetest.register_abm({
    nodenames = {"geominer:crystal"},
    neighbors = {"air"},
    interval = 3,
    chance = 4,
    action = function(pos, node, active_object_count, active_object_count_wider)
      obj = minetest.add_entity({x=pos.x, y=pos.y-1, z=pos.z}, "geominer:glow_en_crystal")
        
      obj:setvelocity({x=0, y=-2, z=0})
      obj:setacceleration({x=0, y=-10, z=0})
    end,
  })
end
 

 
 if spawn_glow_crystals == "true" then
 
  --Spawn the crystals
  minetest.register_on_generated(function(minp, maxp)
    -- Do nothing if the area is above first_layer_start
    if minp.y > first_layer_start then
      return
    end
   
    -- Get the vmanip mapgen object and the nodes and VoxelArea
    local vm, emin, emax = minetest.get_mapgen_object"voxelmanip"
    local data = vm:get_data()
    local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
   

    local max_index = table.getn(data)
    
    
    for c = 0, 60, 1 do
    
      local i = math.random(0, max_index)
      
      if data[i] == c_air then
        local pos = area:position(i)
        
        for b = 0, 20, 1 do
            pos.y = pos.y+1
            if data[area:index(pos.x, pos.y, pos.z)] ~= c_air and data[area:index(pos.x, pos.y, pos.z)] ~= c_ignore then
              minetest.set_node(pos, {name="geominer:crystal"})
              break
            end
        end
      end
    end
  end)

end