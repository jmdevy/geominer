
local schematic_path = minetest.get_modpath("geominer").."/schems/"





-- 1.     #         
--
--
--
--  #      #     #
--
--
--
--        *
--
--

-- 2.     *         
--
--
--
--  #     #     #
--
--
--
--        #
--
--

-- 3.     #         
--
--
--
--  #      #     *
--
--
--
--        #
--
--

-- 4.     #         
--
--
--
--  *      #     #
--
--
--
--        #
--
--

-- 5.     #         
--
--
--
--  #      *     #
--
--
--
--        #
--
--

local positions = { {x=5, y=1, z=20}, {x=35, y=1, z=20}, {x=20, y=1, z=5}, {x=20, y=1, z=35}, {x=20, y=1, z=20} }

minetest.register_on_generated(function(minp, maxp)
    
	-- Do nothing if the area is above -270. That layer is all stone.
	if maxp.y > -300 then
		return
	end
 
	-- Get the vmanip mapgen object and the nodes and VoxelArea
	local vm, emin, emax = minetest.get_mapgen_object"voxelmanip"
	--local data = vm:get_data()
	--local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}

  
	--random_pos = {x=math.random(minp.x, maxp.x), y=math.random(minp.y, maxp.y), z=math.random(minp.z, maxp.z)}
  random_pos_world = {x=math.random(emin.x, emax.x), y=math.random(emin.y, emax.y), z=math.random(emin.z, emax.z)}

  chance = math.random(0, 50)
  if chance == 1 then
      --minetest.place_schematic_on_vmanip(vm, random_pos_world, minetest.get_modpath("geominer").."/schems/".. "test3" ..".mts", "0", {}, true)
      minetest.place_schematic(random_pos_world, schematic_path .. "dungeon1" ..".mts", "0", {}, true)
      
      
      
      random_index = math.random(1, 5)
        
        random_pos_world.x = random_pos_world.x + positions[random_index].x
        random_pos_world.y = random_pos_world.y + positions[random_index].y
        random_pos_world.z = random_pos_world.z + positions[random_index].z
      
      
      
      if random_pos_world.y > -600 and random_pos_world.y < -300 then --Beryl

        minetest.set_node(random_pos_world, {name="geominer:sapling_beryl"})


      elseif random_pos_world.y > -900 and random_pos_world.y < -600 then --Emerald
        
        minetest.set_node(random_pos_world, {name="geominer:sapling_emerald"})
        
        
      elseif random_pos_world.y > -1200 and random_pos_world.y < -900 then --Hematite

        minetest.set_node(random_pos_world, {name="geominer:sapling_hematite"})
        
        
      elseif random_pos_world.y > -1500 and random_pos_world.y < -1200 then --Sapphire

        minetest.set_node(random_pos_world, {name="geominer:sapling_sapphire"})
        
        
      elseif random_pos_world.y > -1800 and random_pos_world.y < -1500 then --Agate

        minetest.set_node(random_pos_world, {name="geominer:sapling_agate"})
        
        
      elseif random_pos_world.y > -2100 and random_pos_world.y < -1800 then --Ruby
        
        minetest.set_node(random_pos_world, {name="geominer:sapling_ruby"})
        
        
      elseif random_pos_world.y > -2400 and random_pos_world.y < -2100 then --Larimar

        minetest.set_node(random_pos_world, {name="geominer:sapling_larimar"})
        
        
      elseif random_pos_world.y > -2700 and random_pos_world.y < -2400 then --Sunstone
        
        minetest.set_node(random_pos_world, {name="geominer:sapling_sunstone"})
        
        
      elseif random_pos_world.y > -3000 and random_pos_world.y < -2700 then --Moonstone
        
        minetest.set_node(random_pos_world, {name="geominer:sapling_moonstone"})
        
        
    end
  end
 
	-- Return the changed nodes data, fix light and change map
	--vm:set_data(data)
	--vm:set_lighting{day=0, night=0}
	--vm:calc_lighting()
	--vm:write_to_map()
end)



