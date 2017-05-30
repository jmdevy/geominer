
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






-- This sets every air node below y = 31 to cobble when generating map
 
local c_cobble = minetest.get_content_id"default:cobble"
local c_stone = minetest.get_content_id"default:stone"
local c_test = minetest.get_content_id"default:dirt"
 
minetest.register_on_generated(function(minp, maxp)
	-- Do nothing if the area is above -30
	if maxp.y > -10 then
		return
	end
 
	-- Get the vmanip mapgen object and the nodes and VoxelArea
	local vm, emin, emax = minetest.get_mapgen_object"voxelmanip"
	local data = vm:get_data()
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
 
	-- Replace air with cobble
	for i in area:iter(
		minp.x, minp.y, minp.z,
		maxp.x, maxp.y, maxp.z
	) do
		if data[i] == c_stone then
      
      if maxp.y > - 80 and maxp.y < -10 then
        data[i] = c_cobble
      elseif maxp.y > - 800 and maxp.y < -80 then
        data[i] = c_test
      end
			
		end
	end
 
	-- Return the changed nodes data, fix light and change map
	vm:set_data(data)
	vm:set_lighting{day=0, night=0}
	vm:calc_lighting()
	vm:write_to_map()
end)