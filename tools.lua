

--Tools
minetest.register_tool("geominer:pick_beryl", {
	description = "Beryl Pickaxe",
	inventory_image = "geominer_pick_beryl.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.15, [2]=0.2, [3]=0.25, [4]=0.3, [5]=1.5, [6]=2.0, [7]=2.5, [8]=3.0, [9]=3.5, [10]=4.0, [11]=4.5, [12]=5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_emerald", {
	description = "Emerald Pickaxe",
	inventory_image = "geominer_pick_emerald.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.1, [2]=0.15, [3]=0.2, [4]=0.25, [5]=0.3, [6]=1.5, [7]=2.0, [8]=2.5, [9]=3.0, [10]=3.5, [11]=4.0, [12]=4.5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_sapphire", {
	description = "Sapphire Pickaxe",
	inventory_image = "geominer_pick_sapphire.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.05, [2]=0.1, [3]=0.15, [4]=0.2, [5]=0.25, [6]=0.3, [7]=1.5, [8]=2.0, [9]=2.5, [10]=3.0, [11]=3.5, [12]=4.0}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_hematite", {
	description = "Hematite Pickaxe",
	inventory_image = "geominer_pick_hematite.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.05, [3]=0.1, [4]=0.15, [5]=0.2, [6]=0.25, [7]=0.3, [8]=1.5, [9]=2.0, [10]=2.5, [11]=3.0, [12]=3.5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_agate", {
	description = "Agate Pickaxe",
	inventory_image = "geominer_pick_agate.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.005, [3]=0.05, [4]=0.1, [5]=0.15, [6]=0.2, [7]=0.25, [8]=0.3, [9]=1.5, [10]=2.0, [11]=2.5, [12]=3.0}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_ruby", {
	description = "Ruby Pickaxe",
	inventory_image = "geominer_pick_ruby.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.005, [3]=0.005, [4]=0.05, [5]=0.1, [6]=0.15, [7]=0.2, [8]=0.25, [9]=0.3, [10]=1.5, [11]=2.0, [12]=2.5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_larimar", {
	description = "Larimar Pickaxe",
	inventory_image = "geominer_pick_larimar.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.005, [3]=0.005, [4]=0.005, [5]=0.05, [6]=0.1, [7]=0.15, [8]=0.2, [9]=0.25, [10]=0.3, [11]=1.5, [12]=2.0}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_sunstone", {
	description = "Sunstone Pickaxe",
	inventory_image = "geominer_pick_sunstone.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.005, [3]=0.005, [4]=0.005, [5]=0.005, [6]=0.05, [7]=0.1, [8]=0.15, [9]=0.2, [10]=0.25, [11]=0.3, [12]=1.5}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})

minetest.register_tool("geominer:pick_moonstone", {
	description = "Moonstone Pickaxe",
	inventory_image = "geominer_pick_moonstone.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[1]=0.005, [2]=0.005, [3]=0.005, [4]=0.005, [5]=0.005, [6]=0.005, [7]=0.05, [8]=0.1, [9]=0.15, [10]=0.2, [11]=0.25, [12]=0.3}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})








