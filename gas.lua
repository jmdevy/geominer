minetest.register_node("geominer:gas", {
	description = "gas",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drawtype = "glasslike",
	post_effect_color = {a = 180, r = 120, g = 120, b = 120},
	alpha = 20,
	tiles = {"geominer_limestone.png^[colorize:#E0E0E0CC"},
	groups = {marsair=1,not_in_creative_inventory=0},
	paramtype = "light",
	sunlight_propagates = true,
--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(30)
--	end,
--	on_timer = function (pos, elapsed)
--		minetest.set_node(pos, {name = "marsair:air_stable"})
--	end,
--	on_place = function(itemstack, placer, pointed_thing)
--		return itemstack
--	end,
--	on_drop = function(itemstack, dropper, pos)
--		itemstack:clear()
--		return itemstack
--		--dropper:get_inventory():remove_item("main", itemstack)
--	end
})


minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:gas",
    wherein        = {"default:stone", "geominer:diorite", "geominer:granite", "geominer:hornfels", "geominer:scoria", "geominer:limestone", "geominer:slate", "geominer:gneiss",
      "geominer:marble", "geominer:peridotite"},
    clust_scarcity = 21000,
    clust_num_ores = 6,
    clust_size     = 6,
    height_min     = -3000,   --TODO make it so the ores only spawn in y-axis of the layer, not all the layers.
    height_max     = -300,
})







minetest.register_abm({
	nodenames = {"geominer:gas"},
	neighbors = {"air"},
	interval = 0.8,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
    
    if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then
      minetest.set_node(pos, {name="air"})
      minetest.set_node({x=pos.x, y=pos.y+1, z=pos.z}, {name="geominer:gas"})
    else
      local next_pos = pos
      next_pos.x = next_pos.x + (math.random(-1, 1))
      next_pos.z = next_pos.z + (math.random(-1, 1))
      if minetest.get_node(next_pos).name == "air" then
        minetest.set_node(next_pos, {name="geominer:gas"})
        minetest.set_node(pos, {name="air"})
      end
    end
  
    local all_objects = minetest.get_objects_inside_radius(pos, 3)
    local _,obj
    for _,obj in ipairs(all_objects) do
      if obj:is_player() then
        tnt.boom(pos, {
                  name = "geominer:gas",
                  description = "Gas",
                  radius = 4,
                  damage_radius = 4
                })
      end
    end
  
	end,
})





























