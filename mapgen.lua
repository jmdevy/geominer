--Some info on this: https://github.com/CoderForTheBetter/geominer/issues/1
minetest.clear_registered_biomes()
minetest.clear_registered_ores()
minetest.clear_registered_decorations()



-- Icesheet

	minetest.register_biome({
		name = "icesheet",
		node_dust = "default:snowblock",
		node_top = "default:snowblock",
		depth_top = 1,
		node_filler = "default:snowblock",
		depth_filler = 3,
		node_stone = "default:ice",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		node_river_water = "default:ice",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -8,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 73,
	})

	minetest.register_biome({
		name = "icesheet_ocean",
		node_dust = "default:snowblock",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		node_water_top = "default:ice",
		depth_water_top = 10,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 73,
	})

	-- Tundra

	minetest.register_biome({
		name = "tundra",
		node_dust = "default:snowblock",
		--node_top = ,
		--depth_top = ,
		--node_filler = ,
		--depth_filler = ,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = 2,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_beach",
		--node_dust = "",
		node_top = "default:gravel",
		depth_top = 1,
		node_filler = "default:gravel",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -3,
		y_max = 1,
		heat_point = 0,
		humidity_point = 40,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:gravel",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -4,
		heat_point = 0,
		humidity_point = 40,
	})

	-- Taiga

	minetest.register_biome({
		name = "taiga",
		node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 2,
		y_max = 31000,
		heat_point = 25,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 1,
		heat_point = 25,
		humidity_point = 70,
	})

	-- Snowy grassland

	minetest.register_biome({
		name = "snowy_grassland",
		node_dust = "default:snow",
		node_top = "default:dirt_with_snow",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 31000,
		heat_point = 20,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "snowy_grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 20,
		humidity_point = 35,
	})

	-- Grassland

	minetest.register_biome({
		name = "grassland",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 6,
		y_max = 31000,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 2,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 5,
		heat_point = 50,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "grassland_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 50,
		humidity_point = 35,
	})

	-- Coniferous forest

	minetest.register_biome({
		name = "coniferous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 6,
		y_max = 31000,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_dunes",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 5,
		heat_point = 45,
		humidity_point = 70,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 45,
		humidity_point = 70,
	})

	-- Deciduous forest

	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "default:dirt_with_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_shore",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -1,
		y_max = 0,
		heat_point = 60,
		humidity_point = 68,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 60,
		humidity_point = 68,
	})

	-- Desert

	minetest.register_biome({
		name = "desert",
		--node_dust = "",
		node_top = "default:desert_sand",
		depth_top = 1,
		node_filler = "default:desert_sand",
		depth_filler = 1,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 31000,
		heat_point = 92,
		humidity_point = 16,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 92,
		humidity_point = 16,
	})

	-- Sandstone desert

	minetest.register_biome({
		name = "sandstone_desert",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 0,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "sandstone_desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		node_stone = "default:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 60,
		humidity_point = 0,
	})

	-- Cold desert

	minetest.register_biome({
		name = "cold_desert",
		--node_dust = "",
		node_top = "default:silver_sand",
		depth_top = 1,
		node_filler = "default:silver_sand",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 5,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 0,
	})

	minetest.register_biome({
		name = "cold_desert_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 0,
	})

	-- Savanna

	minetest.register_biome({
		name = "savanna",
		--node_dust = "",
		node_top = "default:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = 31000,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_shore",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -1,
		y_max = 0,
		heat_point = 89,
		humidity_point = 42,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 89,
		humidity_point = 42,
	})

	-- Rainforest

	minetest.register_biome({
		name = "rainforest",
		--node_dust = "",
		node_top = "default:dirt_with_rainforest_litter",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = 1,
		y_max = 31000,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		--node_dust = "",
		node_top = "default:dirt",
		depth_top = 1,
		node_filler = "default:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -1,
		y_max = 0,
		heat_point = 86,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		--node_dust = "",
		node_top = "default:sand",
		depth_top = 1,
		node_filler = "default:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		node_riverbed = "default:sand",
		depth_riverbed = 2,
		y_min = -112,
		y_max = -2,
		heat_point = 86,
		humidity_point = 65,
	})




if stone_layers == "true" then

    -- Underground

    minetest.register_biome({
      name = "underground",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "default:stone",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = first_layer_start,
      y_max = -100,
      heat_point = 50,
      humidity_point = 50,
    })



    minetest.register_biome({
      name = "underground_diorite",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:diorite",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(1),
      y_max = _geo.max(1),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_granite",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:granite",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(2),
      y_max = _geo.max(2),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_scoria",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:scoria",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(3),
      y_max = _geo.max(3),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_hornfels",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:hornfels",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(4),
      y_max = _geo.max(4),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_limestone",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:limestone",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(5),
      y_max = _geo.max(5),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_slate",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:slate",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(6),
      y_max = _geo.max(6),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_gneiss",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:gneiss",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(7),
      y_max = _geo.max(7),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_marble",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:marble",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(8),
      y_max = _geo.max(8),
      heat_point = 50,
      humidity_point = 50,
    })

  minetest.register_biome({
      name = "underground_peridotite",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:peridotite",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.min(9),
      y_max = _geo.max(9),
      heat_point = 50,
      humidity_point = 50,
    })
  
  minetest.register_biome({
      name = "GeoHell",
      --node_dust = "",
      --node_top = "",
      --depth_top = ,
      --node_filler = "",
      --depth_filler = ,
      node_stone = "geominer:hell_stone",
      --node_water_top = "",
      --depth_water_top = ,
      --node_water = "",
      --node_river_water = "",
      y_min = _geo.max(10) - 80,
      y_max = _geo.max(10),
      heat_point = 50,
      humidity_point = 50,
    })
end



--Some info on this: https://github.com/CoderForTheBetter/geominer/issues/1
default.register_blob_ores()
default.register_ores()
default.register_decorations()
flowers.register_decorations()