

--Tools
minetest.register_tool("geominer:pick_beryl", {
	description = "Beryl Pickaxe",
	inventory_image = "geominer_pick_beryl.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[3]=0.2, [4]=0.3, [5]=0.4, [6]=0.5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})