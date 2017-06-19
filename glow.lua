



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

      --dropper:get_inventory():add_item("main", "geominer:glowstick_throw " .. itemstack:get_count())
      
      count = starting_throw
      pixel_count = 0
    end
    
    
    
    
    --minetest.item_drop(itemstack, dropper, pos)
    return itemstack
    
    
    
		-- Takes one item from the stack
--		itemstack:take_item()
--		return itemstack
	end,
  
  on_drop = function(itemstack, dropper, pos)
    
--    if count > 0 and dropper:get_player_control().RMB then
    
--      obj = minetest.add_entity({x=pos.x, y=pos.y+1.2, z=pos.z}, "geominer:glow_en_throw")
      
--      dir = dropper:get_look_dir()
--      obj:setvelocity({x=dir.x*count, y=dir.y*count, z=dir.z*count})
--      obj:setacceleration({x=dir.x*-3, y=-10, z=dir.z*-3})
      
--      itemstack:take_item(1)

--      --dropper:get_inventory():add_item("main", "geominer:glowstick_throw " .. itemstack:get_count())
      
--      count = starting_throw
--    end
    
    if count <= max_throw then
      count = count * throw_multiplier
      pixel_count = pixel_count + 1
      minetest.chat_send_all(pixel_count)
    end
    

--    --minetest.item_drop(itemstack, dropper, pos)
--    return itemstack
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

  get_staticdata = function(self)
    
  end,



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

  get_staticdata = function(self)
    
  end,



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









--Copied from https://github.com/PilzAdam/builtin_item/blob/master/init.lua

--local itemstring_check_glow = ""
--local last_glow_pos = {x=-1, y=-1, z=-1}

--minetest.register_entity(":__builtin:item", {
--	initial_properties = {
--		hp_max = 1,
--		physical = true,
--		collisionbox = {-0.17,-0.17,-0.17, 0.17,0.17,0.17},
--		visual = "sprite",
--		visual_size = {x=0.5, y=0.5},
--		textures = {""},
--		spritediv = {x=1, y=1},
--		initial_sprite_basepos = {x=0, y=0},
--		is_visible = false,
--		timer = 0,
--	},
	
--	itemstring = '',
--	physical_state = true,

--	set_item = function(self, itemstring)
--		self.itemstring = itemstring
--		local stack = ItemStack(itemstring)
--		local itemtable = stack:to_table()
--		local itemname = nil
--		if itemtable then
--			itemname = stack:to_table().name
--		end
--		local item_texture = nil
--		local item_type = ""
--		if minetest.registered_items[itemname] then
--			item_texture = minetest.registered_items[itemname].inventory_image
--			item_type = minetest.registered_items[itemname].type
--		end
--		prop = {
--			is_visible = true,
--			visual = "sprite",
--			textures = {"unknown_item.png"}
--		}
--		if item_texture and item_texture ~= "" then
--			prop.visual = "sprite"
--			prop.textures = {item_texture}
--			prop.visual_size = {x=0.50, y=0.50}
--		else
--			prop.visual = "wielditem"
--			prop.textures = {itemname}
--			prop.visual_size = {x=0.20, y=0.20}
--			prop.automatic_rotate = math.pi * 0.25
--		end
--		self.object:set_properties(prop)
--	end,

--	get_staticdata = function(self)
--		--return self.itemstring
--		return minetest.serialize({
--			itemstring = self.itemstring,
--			always_collect = self.always_collect,
--			timer = self.timer,
--		})
--	end,

--	on_activate = function(self, staticdata, dtime_s)
    
--		if string.sub(staticdata, 1, string.len("return")) == "return" then
--			local data = minetest.deserialize(staticdata)
--			if data and type(data) == "table" then
--				self.itemstring = data.itemstring
--				self.always_collect = data.always_collect
--				self.timer = data.timer
--				if not self.timer then
--					self.timer = 0
--				end
--				self.timer = self.timer+dtime_s
--			end
--		else
--			self.itemstring = staticdata
--		end
--		self.object:set_armor_groups({immortal=1})
--    if dir == nil then
--      return
--    end
----    self.object:setvelocity({x=dir.x, y=dir.y, z=dir.z})
----    self.object:setacceleration({x=dir.x*15, y=-10, z=dir.z*15})
--    self.object:setvelocity({x=0, y=2, z=0})
--		self.object:setacceleration({x=0, y=-10, z=0})
--		self:set_item(self.itemstring)
--	end,
--	itemstring_check_glow = '',
--  last_glow_pos = {x=-1, y=-1, z=-1},
--	on_step = function(self, dtime)

    
    
--    if self.itemstring_check_glow == "" and self.object:getvelocity().y ~= 0 then
--      for word in string.gmatch(self.itemstring, '([^ ]+)') do
--          if word == "geominer:glowstick" then
--            self.itemstring_check_glow = word
--            self.last_glow_pos = self.object:getpos()
--            break
--          end
--      end
--    elseif self.itemstring_check_glow == "geominer:glowstick" then
--      temp_pos = self.object:getpos()
--      if self.last_glow_pos.y ~= temp_pos.y then
--        --minetest.chat_send_all(temp_pos.y)
--        minetest.set_node(self.last_glow_pos, {name="air"})
--        self.last_glow_pos = temp_pos
--        minetest.set_node(self.last_glow_pos, {name="geominer:glow_drop"})
--      else
--        self.itemstring_check_glow = ""
--        --minetest.chat_send_all("DONE")
--      end
--    end
    
----    minetest.chat_send_all(last_glow_pos.y)
    
--		local time = tonumber(minetest.settings:get("remove_items"))
--		if not time then
--			time = 300
--		end
--		if not self.timer then
--			self.timer = 0
--		end
--		self.timer = self.timer + dtime
--		if time ~= 0 and (self.timer > time) then
--			self.object:remove()
--      nodes_near = minetest.find_nodes_in_area({x=self.last_glow_pos.x-1, y=self.last_glow_pos.y-1, z=self.last_glow_pos.z-1}, 
--        {x=self.last_glow_pos.x+1, y=self.last_glow_pos.y+1, z=self.last_glow_pos.z+1}, {"geominer:glow_drop"})
--      for i=1, table.getn(nodes_near) do
--          minetest.set_node(nodes_near[i], {name="air"})
--      end
--		end
		
--		local p = self.object:getpos()
		
--		local name = minetest.env:get_node(p).name
--		if name == "default:lava_flowing" or name == "default:lava_source" then
--			minetest.sound_play("builtin_item_lava", {pos=self.object:getpos()})
--			self.object:remove()
--			return
--		end
		
--		if minetest.registered_nodes[name].liquidtype == "flowing" then
--			get_flowing_dir = function(self)
--				local pos = self.object:getpos()
--				local param2 = minetest.env:get_node(pos).param2
--				for i,d in ipairs({-1, 1, -1, 1}) do
--					if i<3 then
--						pos.x = pos.x+d
--					else
--						pos.z = pos.z+d
--					end
					
--					local name = minetest.env:get_node(pos).name
--					local par2 = minetest.env:get_node(pos).param2
--					if name == "default:water_flowing" and par2 < param2 then
--						return pos
--					end
					
--					if i<3 then
--						pos.x = pos.x-d
--					else
--						pos.z = pos.z-d
--					end
--				end
--			end
			
--			local vec = get_flowing_dir(self)
--			if vec then
--				local v = self.object:getvelocity()
--				if vec and vec.x-p.x > 0 then
--					self.object:setvelocity({x=0.5,y=v.y,z=0})
--				elseif vec and vec.x-p.x < 0 then
--					self.object:setvelocity({x=-0.5,y=v.y,z=0})
--				elseif vec and vec.z-p.z > 0 then
--					self.object:setvelocity({x=0,y=v.y,z=0.5})
--				elseif vec and vec.z-p.z < 0 then
--					self.object:setvelocity({x=0,y=v.y,z=-0.5})
--				end
--				self.object:setacceleration({x=0, y=-10, z=0})
--				self.physical_state = true
--				self.object:set_properties({
--					physical = true
--				})
--				return
--			end
--		end
		
--		p.y = p.y - 0.3
--		local nn = minetest.env:get_node(p).name
--		-- If node is not registered or node is walkably solid
--		if not minetest.registered_nodes[nn] or minetest.registered_nodes[nn].walkable then
--			if self.physical_state then
--				self.object:setvelocity({x=0,y=0,z=0})
--				self.object:setacceleration({x=0, y=0, z=0})
--				self.physical_state = false
--				self.object:set_properties({
--					physical = false
--				})
--			end
--		else
--			if not self.physical_state then
--				self.object:setvelocity({x=0,y=0,z=0})
--				self.object:setacceleration({x=0, y=-10, z=0})
--				self.physical_state = true
--				self.object:set_properties({
--					physical = true
--				})
--			end
--		end
--	end,

--	on_punch = function(self, hitter)

--    for word in string.gmatch(self.itemstring, '([^ ]+)') do
--      if word == "geominer:glowstick" then
--        nodes_near = minetest.find_nodes_in_area({x=self.last_glow_pos.x-1, y=self.last_glow_pos.y-1, z=self.last_glow_pos.z-1}, 
--          {x=self.last_glow_pos.x+1, y=self.last_glow_pos.y+1, z=self.last_glow_pos.z+1}, {"geominer:glow_drop"})
--        for i=1, table.getn(nodes_near) do
--            minetest.set_node(nodes_near[i], {name="air"})
--        end
--        break
--      end
--    end

--		if self.itemstring ~= '' then
--			local left = hitter:get_inventory():add_item("main", self.itemstring)
--			if not left:is_empty() then
--				self.itemstring = left:to_string()
--				return
--			end
--		end
--		self.object:remove()
--	end,
--})




