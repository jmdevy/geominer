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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
	groups = {snappy = 2, dig_immediate = 3, flammable = 2, attached_node = 1, sapling = 1},
	sounds = default.node_sound_leaves_defaults(),
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
    y_min     = _geo.min(10),   --TODO make it so the ores only spawn in y-axis of the layer, not all the layers.
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
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
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
})



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
minetest.register_node("geominer:fire_crystal", {
  walkable = true,
	description = "Crystal stalagmite",
	tiles = {"geominer_fire_crystal.png"},
	is_ground_content = true,
  diggable = true,
  drop = "geominer:fire_crystal",
  paramtype = "light",
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 3},
  light_source = 10,
})

if spawn_glow_crystals == "true" then

minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:fire_crystal",
    wherein        = "geominer:hell_stone",
    clust_scarcity = 2850,
    clust_num_ores = 1,
    clust_size     = 1,
    y_min     = _geo.max(10)-80,
    y_max     = _geo.max(10),
})
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "geominer:crystal",
    wherein        = {"geominer:peridotite", "geominer:marble", "geominer:gneiss", "geominer:slate", "geominer:limestone", "geominer:scoria", "geominer:hornfels",
      "geominer:granite", "geominer:diorite", },
    clust_scarcity = 2850,
    clust_num_ores = 1,
    clust_size     = 1,
    y_min     = _geo.min(10),
    y_max     = first_layer_start,
})
end



--Hell nodes/ores
minetest.register_node("geominer:hell_stone", {
  walkable = true,
	description = "Hell Stone",
	tiles = {"geominer_hell_stone.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 10},
  paramtype = "light",
  light_source = 3,
})

minetest.register_node("geominer:hell_blower", {
  walkable = true,
	description = "Hell blower",
	is_ground_content = true,
  tiles = {"geominer_hell_blower.png"},
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 10, oddly_breakable_by_hand=10},
  paramtype = "light",
  light_source = 3,
})

if spawn_hell_blowers == "true" then
  minetest.register_ore({
      ore_type       = "scatter",
      ore            = "geominer:hell_blower",
      wherein        = "geominer:hell_stone",
      clust_scarcity = 2050,
      clust_num_ores = 1,
      clust_size     = 1,
      y_min     = _geo.max(10)-80,
      y_max     = _geo.max(10),
  })
end

minetest.register_node("geominer:hell_lava_source", {
	description = "Hell Lava Source",
	drawtype = "liquid",
	tiles = {
		{
			name = "geominer_hell_lava_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "geominer_hell_lava_source.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "geominer:hell_lava_source",
	liquid_alternative_source = "geominer:hell_lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
  liquid_range = 0,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 191, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, igniter = 1},
})