
--This is used to find stone and then replace it
local c_stone = minetest.get_content_id"default:stone"

--These are the blocks that the stone will be replaced with
local c_diorite = minetest.get_content_id"geominer:diorite"
local c_granite = minetest.get_content_id"geominer:granite"
local c_hornfels = minetest.get_content_id"geominer:hornfels"


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
        data[i] = c_granite 
      elseif maxp.y > -1260 and maxp.y < -930 then
        data[i] = c_hornfels
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