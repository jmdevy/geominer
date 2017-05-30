
--minetest.clear_registered_biomes()
--minetest.clear_registered_decorations()

--minetest.register_biome({
--	name = "plains",
--	--node_dust = "",
--	node_top = "default:dirt",
--	depth_top = 1,
--	node_filler = "default:dirt",
--	depth_filler = 3,
--	--node_stone = "",
--	--node_water_top = "",
--	--depth_water_top = ,
--	--node_water = "",
--	y_min = 60,
--	y_max = 160,
--	heat_point = 45,
--	humidity_point = 45,
--})




minetest.register_node("geominer:testblock", {
	description = "Test Block",
	tiles = {"test.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
	groups = {cracky = 3, hardness=1 , stone=1, use_texture_alpha = 1}, --hardness 3 refers to 30 seconds with dia pick
})




--Ores
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






--Tools
minetest.register_tool("geominer:pick_beryl", {
	description = "Beryl Pickaxe",
	inventory_image = "geominer_pick_beryl.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level = 0,
		groupcaps = {
			cracky = {times={[3]=0.1, [4]=0.2}, uses=128, maxlevel=1},
		},
		damage_groups = {fleshy=7},
	}
})



--Ore drops
minetest.register_craftitem("geominer:berly", {
	description = "Beryl",
	inventory_image = "geominer_beryl.png",
  wield_image = "geominer_beryl.png"
})



--Sticks
minetest.register_craftitem("geominer:stick_beryl", {
	description = "Beryl Stick",
	inventory_image = "geominer_stick_beryl.png",
  wield_image = "geominer_stick_beryl.png"
})



--Nodes for layers
minetest.register_node("geominer:diorite", {
	description = "diorite",
	tiles = {"geominer_diorite.png"},
	is_ground_content = true,
  diggable = true,
	sounds = default.node_sound_stone_defaults(),
  groups = {cracky = 4}
})



--Recepies Pickaxe
minetest.register_craft({
	output = "geominer:pick_beryl",
	recipe = {
		{"geominer:berly", "geominer:berly", "geominer:berly"},
		{"", "default:stick", ""},
		{"", "geominer:stick_beryl", ""}
	}
})










--This is used to find stone and then replace it
local c_stone = minetest.get_content_id"default:stone"

--These are the blocks that the stone will be replaced with
local c_diorite = minetest.get_content_id"geominer:diorite"



 --For each chunk that generates loop through it and check if block is within a range on the Y-axis
 --If the block is in the range repalce the stone there with the corrosponding layer of rock
minetest.register_on_generated(function(minp, maxp)
    
	-- Do nothing if the area is above -270. That layer is all stone.
	if maxp.y > -270 then
		return
	end
 
	-- Get the vmanip mapgen object and the nodes and VoxelArea
	local vm, emin, emax = minetest.get_mapgen_object"voxelmanip"
	local data = vm:get_data()
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
 
	
	for i in area:iter(
		minp.x, minp.y, minp.z,
		maxp.x, maxp.y, maxp.z
	) do
		if data[i] == c_stone then
      
      
      --Each layer of rock is 330 blocks
      if maxp.y > -600 and maxp.y < -270 then
        data[i] = c_diorite
      elseif maxp.y > -930 and maxp.y < -600 then
        --data[i] = c_test
      elseif maxp.y > -1260 and maxp.y < -930 then
        --data[i] = c_test
      elseif maxp.y > -1590 and maxp.y < -1260 then
        --data[i] = c_test
      end
			
		end
	end
 
	-- Return the changed nodes data, fix light and change map
	vm:set_data(data)
	vm:set_lighting{day=0, night=0}
	vm:calc_lighting()
	vm:write_to_map()
end)