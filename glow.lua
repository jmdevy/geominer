--This node is invisble but emits light. This is added and removed when certain entities move
minetest.register_node("geominer:glow_drop", {
	description = "glow_drop",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climbable = false,
  pointable = false,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2, not_in_creative_inventory = 1},
  light_source = 14,
})



--Is this stuff going to mess up if more than one player uses a glowstick at the same time?
local starting_throw = 1.1
local count = starting_throw
local max_throw = 24
local throw_multiplier = 1.089
local pixel_count = 0



minetest.register_craftitem("geominer:glowstick_throw", {
	description = "Glowstick throw",
	drawtype = "normal",
	paramtype = "light",
  inventory_image = "geominer_glowstick_throw.png",
  wield_image = "geominer_glowstick_throw.png",
	sunlight_propagates = true,
	walkable = false,
	climbable = false,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
  stack_max = 10,
  
  on_use = function(itemstack, user, pointed_thing)
    if count > 1.8 and user:get_player_control().LMB then
    
      obj = minetest.add_entity({x=user:getpos().x, y=user:getpos().y+1.2, z=user:getpos().z}, "geominer:glow_en_throw")
      
      dir = user:get_look_dir()
      obj:setvelocity({x=dir.x*count, y=dir.y*count, z=dir.z*count})
      obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
      
      itemstack:take_item()
      count = starting_throw
      pixel_count = 0
    end
    return itemstack
	end,
  
  on_drop = function(itemstack, dropper, pos)
    if count <= max_throw then
      count = count * throw_multiplier
      pixel_count = pixel_count + 1
      minetest.chat_send_all(pixel_count)
    end
	end,
})



minetest.register_entity("geominer:glow_en_throw", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collisionbox = {-0.18,-0.18,-0.18, 0.18,0.18,0.18},
		visual = "sprite",
		visual_size = {x=0.5, y=0.5},
		textures = {"geominer_glowstick_throw.png"},
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
      self.itemstring_check_glow = ""
    end
    
    node = minetest.get_node({x=self.last_glow_pos.x, y=self.last_glow_pos.y-0.3, z=self.last_glow_pos.z})
    
    if minetest.registered_nodes[node.name].walkable then
      self.object:setvelocity({x=0,y=-2,z=0})
      self.object:setacceleration({x=0, y=-10, z=0})
    end
	end,

		on_punch = function(self, hitter)
    
    nodes_near = minetest.find_nodes_in_area({x=self.last_glow_pos.x-1, y=self.last_glow_pos.y-1, z=self.last_glow_pos.z-1}, 
      {x=self.last_glow_pos.x+1, y=self.last_glow_pos.y+1, z=self.last_glow_pos.z+1}, {"geominer:glow_drop"})
    for i=1, table.getn(nodes_near) do
        minetest.set_node(nodes_near[i], {name="air"})
    end
    
    hitter:get_inventory():add_item("main", "geominer:glowstick_throw")

	end,
})



minetest.register_craftitem("geominer:glowstick", {
	description = "Glowstick",
	drawtype = "normal",
	paramtype = "light",
  inventory_image = "geominer_glowstick.png",
  wield_image = "geominer_glowstick.png",
	sunlight_propagates = true,
	walkable = false,
	climbable = false,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
  stack_max = 10,
  
  on_drop = function(itemstack, dropper, pos)
    
    obj = minetest.add_entity({x=pos.x, y=pos.y+1.2, z=pos.z}, "geominer:glow_en")
      
    dir = dropper:get_look_dir()
    obj:setvelocity({x=dir.x*4, y=dir.y*4, z=dir.z*4})
    obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
    
    itemstack:take_item()
		return itemstack
	end,
})



minetest.register_entity("geominer:glow_en", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collisionbox = {-0.12,-0.12,-0.12, 0.12,0.12,0.12},
		visual = "sprite",
		visual_size = {x=0.5, y=0.5},
		textures = {"geominer_glowstick.png"},
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
      self.itemstring_check_glow = ""
    end
    
    node = minetest.get_node({x=self.last_glow_pos.x, y=self.last_glow_pos.y-0.3, z=self.last_glow_pos.z})
    
    if minetest.registered_nodes[node.name].walkable then
      self.object:setvelocity({x=0,y=-2,z=0})
      self.object:setacceleration({x=0, y=-10, z=0})
    end
	end,

		on_punch = function(self, hitter)
    
    nodes_near = minetest.find_nodes_in_area({x=self.last_glow_pos.x-1, y=self.last_glow_pos.y-1, z=self.last_glow_pos.z-1}, 
      {x=self.last_glow_pos.x+1, y=self.last_glow_pos.y+1, z=self.last_glow_pos.z+1}, {"geominer:glow_drop"})
    for i=1, table.getn(nodes_near) do
        minetest.set_node(nodes_near[i], {name="air"})
    end
    
    hitter:get_inventory():add_item("main", "geominer:glowstick")

	end,
})