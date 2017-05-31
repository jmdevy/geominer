minetest.register_node("geominer:testblock", {
	description = "Test Block",
	tiles = {"test.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3, hardness=1 , stone=1, use_texture_alpha = 1}, --hardness 3 refers to 30 seconds with dia pick
})





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

minetest.register_node("geominer:bush_leaves", {
	description = "Geominer Bush Leaves",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"geominer_bush_leaves.png"},
	paramtype = "light",
	groups = {snappy = 3, flammable = 2, leaves = 1},
	sounds = default.node_sound_leaves_defaults(),
})

minetest.register_node("geominer:sapling_beryl", {
	description = "Beryl Bush Sapling",
	drawtype = "plantlike",
	tiles = {"geominer_beryl_sapling.png"},
	inventory_image = "geominer_beryl_sapling.png",
	wield_image = "geominer_beryl_sapling.png",
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
	description = "diorite",
	tiles = {"geominer_diorite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})

minetest.register_node("geominer:granite", {
	description = "granite",
	tiles = {"geominer_granite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 5}
})

minetest.register_node("geominer:hornfels", {
	description = "hornfels",
	tiles = {"geominer_hornfels_top.png", "geominer_hornfels_top.png", "geominer_hornfels.png", "geominer_hornfels.png", "geominer_hornfels.png", "geominer_hornfels.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 6}
})






--************Ore Nodes
minetest.register_node("geominer:ore_beryl", {
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
    wherein        = "default:stone",
    clust_scarcity = 500,
    clust_num_ores = 3,
    clust_size     = 3,
    height_min     = -600,
    height_max     = -270,
})



