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
})

if gas_spawn == "true" then

  minetest.register_ore({
      ore_type       = "scatter",
      ore            = "geominer:gas",
      wherein        = {"default:stone", "geominer:diorite", "geominer:granite", "geominer:hornfels", "geominer:scoria", "geominer:limestone", "geominer:slate", "geominer:gneiss",
        "geominer:marble", "geominer:peridotite"},
      clust_scarcity = 22000,
      clust_num_ores = 5,
      clust_size     = 5,
      height_min     = _geo.min(10),   --TODO make it so the ores only spawn in y-axis of the layer, not all the layers.
      height_max     = first_layer_start,
  })

end







minetest.register_abm({
	nodenames = {"geominer:gas"},
	neighbors = {"air"},
	interval = 0.8,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
    
    --Float
    if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then
      minetest.set_node(pos, {name="air"})
      minetest.set_node({x=pos.x, y=pos.y+1, z=pos.z}, {name="geominer:gas"})
    end
  
    --Go boom!
    local all_objects = minetest.get_objects_inside_radius(pos, 3)
    local _,obj
    for _,obj in ipairs(all_objects) do
      if obj:is_player() then
        minetest.set_node(pos, {name="air"})  --Get rid of the gas block so it doesn't drop as item on boom
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

