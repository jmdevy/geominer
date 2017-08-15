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



--Entity that drops from crystals that makes area glow
minetest.register_entity("geominer:glow_en_crystal_fire", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collisionbox = {-0.18,-0.18,-0.18, 0.18,0.18,0.18},
		visual = "sprite",
		visual_size = {x=0.5, y=0.5},
		textures = {"geominer_fire_drop.png"},
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
      tnt.boom(temp_pos, {
                  name = "geominer:fire_gas",
                  description = "Fire Gas",
                  radius = 2,
                  damage_radius = 5
                })
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
    interval = 5,
    chance = 2,
    action = function(pos, node, active_object_count, active_object_count_wider)
      obj = minetest.add_entity({x=pos.x, y=pos.y-1.3, z=pos.z}, "geominer:glow_en_crystal")
        
      obj:setvelocity({x=0, y=-2, z=0})
      obj:setacceleration({x=0, y=-10, z=0})
    end,
  })

  --Fire crystals don't drop as often
  minetest.register_abm({
    nodenames = {"geominer:fire_crystal"},
    neighbors = {"air"},
    interval = 5,
    chance = 2,
    action = function(pos, node, active_object_count, active_object_count_wider)
      obj = minetest.add_entity({x=pos.x, y=pos.y-1, z=pos.z}, "geominer:glow_en_crystal_fire")
        
      obj:setvelocity({x=0, y=-2, z=0})
      obj:setacceleration({x=0, y=-10, z=0})
    end,
  })
end