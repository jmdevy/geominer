--minetest.register_node("geominer:testblock", {
--	description = "Test Block",
--	tiles = {"test.png"},
--	is_ground_content = true,
--  diggable = true,
--	sounds = default.node_sound_stone_defaults(),
--	groups = {cracky = 3, hardness=1 , stone=1, use_texture_alpha = 1}, --hardness 3 refers to 30 seconds with dia pick
--})





--*******************Plant Nodes
minetest.register_node("geominer:bush_stem_beryl", {
	description = "Beryl Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_beryl.png"},
	inventory_image = "geominer_bush_stem_beryl.png",
	wield_image = "geominer_bush_stem_beryl.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_beryl", {
	description = "Beryl Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_beryl.png"},
	inventory_image = "geominer_sapling_beryl.png",
	wield_image = "geominer_sapling_beryl.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_emerald", {
	description = "Emerald Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_emerald.png"},
	inventory_image = "geominer_bush_stem_emerald.png",
	wield_image = "geominer_bush_stem_emerald.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_emerald", {
	description = "Emerald Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_emerald.png"},
	inventory_image = "geominer_sapling_emerald.png",
	wield_image = "geominer_sapling_emerald.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_hematite", {
	description = "Hematite Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_hematite.png"},
	inventory_image = "geominer_bush_stem_hematite.png",
	wield_image = "geominer_bush_stem_hematite.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_hematite", {
	description = "Hematite Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_hematite.png"},
	inventory_image = "geominer_sapling_hematite.png",
	wield_image = "geominer_sapling_hematite.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_sapphire", {
	description = "Sapphire Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_sapphire.png"},
	inventory_image = "geominer_bush_stem_sapphire.png",
	wield_image = "geominer_bush_stem_sapphire.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_sapphire", {
	description = "Sapphire Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_sapphire.png"},
	inventory_image = "geominer_sapling_sapphire.png",
	wield_image = "geominer_sapling_sapphire.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_agate", {
	description = "Agate Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_agate.png"},
	inventory_image = "geominer_bush_stem_agate.png",
	wield_image = "geominer_bush_stem_agate.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_agate", {
	description = "Agate Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_agate.png"},
	inventory_image = "geominer_sapling_agate.png",
	wield_image = "geominer_sapling_agate.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_ruby", {
	description = "Ruby Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_ruby.png"},
	inventory_image = "geominer_bush_stem_ruby.png",
	wield_image = "geominer_bush_stem_ruby.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_ruby", {
	description = "Ruby Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_ruby.png"},
	inventory_image = "geominer_sapling_ruby.png",
	wield_image = "geominer_sapling_ruby.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_larimar", {
	description = "Larimar Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_larimar.png"},
	inventory_image = "geominer_bush_stem_larimar.png",
	wield_image = "geominer_bush_stem_larimar.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_larimar", {
	description = "Larimar Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_larimar.png"},
	inventory_image = "geominer_sapling_larimar.png",
	wield_image = "geominer_sapling_larimar.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_sunstone", {
	description = "Sunstone Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_sunstone.png"},
	inventory_image = "geominer_bush_stem_sunstone.png",
	wield_image = "geominer_bush_stem_sunstone.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_sunstone", {
	description = "Sunstone Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_sunstone.png"},
	inventory_image = "geominer_sapling_sunstone.png",
	wield_image = "geominer_sapling_sunstone.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})


minetest.register_node("geominer:bush_stem_moonstone", {
	description = "Moonstone Bush Stem",
	drawtype = "plantlike",
	visual_scale = 1.41,
	tiles = {"geominer_bush_stem_moonstone.png"},
	inventory_image = "geominer_bush_stem_moonstone.png",
	wield_image = "geominer_bush_stem_moonstone.png",
	paramtype = "light",
	sunlight_propagates = true,
	groups = {choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-7 / 16, -0.5, -7 / 16, 7 / 16, 0.54, 7 / 16},
	},
})
minetest.register_node("geominer:sapling_moonstone", {
	description = "Moonstone Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_sapling_moonstone.png"},
	inventory_image = "geominer_sapling_moonstone.png",
	wield_image = "geominer_sapling_moonstone.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	--on_timer = default.grow_sapling,
--	selection_box = {
--		type = "fixed",
--		fixed = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16}
--	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),

--	on_construct = function(pos)
--		minetest.get_node_timer(pos):start(math.random(2400,4800))
--	end,

--	on_place = function(itemstack, placer, pointed_thing)
--		itemstack = default.sapling_on_place(itemstack, placer, pointed_thing,
--			"geominer_beryl_sapling.png",
--			-- minp, maxp to be checked, relative to sapling pos
--			-- minp_relative.y = 1 because sapling pos has been checked
--			{x = -4, y = 1, z = -4},
--			{x = 4, y = 6, z = 4},
--			-- maximum interval of interior volume check
--			4)

--		return itemstack
--	end,
})








--***************Nodes for layers
minetest.register_node("geominer:diorite", {
  walkable = true,
	description = "diorite",
	tiles = {"geominer_diorite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})

minetest.register_node("geominer:granite", {
  walkable = true,
	description = "granite",
	tiles = {"geominer_granite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 5}
})

minetest.register_node("geominer:hornfels", {
  walkable = true,
	description = "hornfels",
	tiles = {"geominer_hornfels_top.png", "geominer_hornfels_top.png", "geominer_hornfels.png", "geominer_hornfels.png", "geominer_hornfels.png", "geominer_hornfels.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 6}
})

minetest.register_node("geominer:scoria", {
  walkable = true,
	description = "Scoria",
	tiles = {"geominer_scoria.png", "geominer_scoria.png", "geominer_scoria.png", "geominer_scoria.png", "geominer_scoria.png", "geominer_scoria.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 7}
})

minetest.register_node("geominer:limestone", {
  walkable = true,
	description = "Limestone",
	tiles = {"geominer_limestone.png", "geominer_limestone.png", "geominer_limestone.png", "geominer_limestone.png", "geominer_limestone.png", "geominer_limestone.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 8}
})

minetest.register_node("geominer:slate", {
  walkable = true,
	description = "Slate",
	tiles = {"geominer_slate.png", "geominer_slate.png", "geominer_slate.png", "geominer_slate.png", "geominer_slate.png", "geominer_slate.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 9}
})

minetest.register_node("geominer:gneiss", {
  walkable = true,
	description = "Gneiss",
	tiles = {"geominer_gneiss_top.png", "geominer_gneiss_top.png", "geominer_gneiss.png", "geominer_gneiss.png", "geominer_gneiss.png", "geominer_gneiss.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 10}
})

minetest.register_node("geominer:marble", {
  walkable = true,
	description = "Marble",
	tiles = {"geominer_marble.png", "geominer_marble.png", "geominer_marble.png", "geominer_marble.png", "geominer_marble.png", "geominer_marble.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 11}
})

minetest.register_node("geominer:peridotite", {
  walkable = true,
	description = "Peridotite",
	tiles = {"geominer_peridotite_top.png", "geominer_peridotite_top.png", "geominer_peridotite.png", "geominer_peridotite.png", "geominer_peridotite.png", "geominer_peridotite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 12}
})






--************Ore Nodes
minetest.register_node("geominer:ore_beryl", {
  walkable = true,
	description = "Beryl Ore",
	tiles = {"geominer_ore_beryl.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:berly",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:ore_beryl",
    wherein        = "geominer:diorite",
    clust_scarcity = 700,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,   --TODO make it so the ores only spawn in y-axis of the layer, not all the layers.
    height_max     = -300,
})


minetest.register_node("geominer:ore_emerald", {
  walkable = true,
	description = "Emerald Ore",
	tiles = {"geominer_ore_emerald.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:emerald",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:ore_emerald",
    wherein        = "geominer:granite",
    clust_scarcity = 720,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:sapphire_ore", {
  walkable = true,
	description = "Sapphire Ore",
	tiles = {"geominer_sapphire_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:sapphire",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:sapphire_ore",
    wherein        = "geominer:hornfels",
    clust_scarcity = 740,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:hematite_ore", {
  walkable = true,
	description = "Hematite Ore",
	tiles = {"geominer_hematite_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:hematite",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:hematite_ore",
    wherein        = "geominer:scoria",
    clust_scarcity = 760,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:agate_ore", {
  walkable = true,
	description = "Agate Ore",
	tiles = {"geominer_agate_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:agate",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:agate_ore",
    wherein        = "geominer:limestone",
    clust_scarcity = 780,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:ruby_ore", {
  walkable = true,
	description = "Ruby Ore",
	tiles = {"geominer_ruby_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:ruby",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:ruby_ore",
    wherein        = "geominer:slate",
    clust_scarcity = 800,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:larimar_ore", {
  walkable = true,
	description = "Larimar Ore",
	tiles = {"geominer_larimar_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:larimar",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:larimar_ore",
    wherein        = "geominer:gneiss",
    clust_scarcity = 820,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:sunstone_ore", {
  walkable = true,
	description = "Sunstone Ore",
	tiles = {"geominer_sunstone_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:sunstone",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:sunstone_ore",
    wherein        = "geominer:marble",
    clust_scarcity = 840,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})


minetest.register_node("geominer:moonstone_ore", {
  walkable = true,
	description = "Moonstone Ore",
	tiles = {"geominer_moonstone_ore.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:moonstone",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:moonstone_ore",
    wherein        = "geominer:peridotite",
    clust_scarcity = 860,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -3000,
    height_max     = -300,
})






minetest.register_node("geominer:creepy_crawlies", {
	description = "EWWWW Source",
	drawtype = "allfaces_optional",
	tiles = {
		{
			name = "creepy_crawlies.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "creepy_crawlies.png",
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
	liquid_viscosity = 1,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_water_defaults(),
})



