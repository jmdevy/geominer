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

----Get the schematic folder path
--local schematic_path = minetest.get_modpath("geominer").."/schems/"

----Add thesef to the random_position_world var to place sapling in a room. Above is the position of the sapling if added and the index of the table
--local positions = { {x=5, y=1, z=20}, {x=35, y=1, z=20}, {x=20, y=1, z=5}, {x=20, y=1, z=35}, {x=20, y=1, z=20} }

----This is called only when a chunk is generated that hasn't been generated before.
----No where in the documentation does it say that, but testing showed this is how it works
--minetest.register_on_generated(function(minp, maxp)
    
--	-- Do nothing if the area is above -270. That layer is all stone.
--	if maxp.y > -300 then
--		return
--	end
 
--	-- Get the vmanip mapgen object and the nodes and VoxelArea
--	local vm, emin, emax = minetest.get_mapgen_object"voxelmanip"


  
--  --Chnace of dungeon spawning
--  chance = math.random(0, 50)
--  if chance == 1 then
--      --minetest.place_schematic_on_vmanip(vm, random_pos_world, minetest.get_modpath("geominer").."/schems/".. "test3" ..".mts", "0", {}, true)
      
--      --Get a random position and spawn a dungeon
--      random_pos_world = {x=math.random(emin.x, emax.x), y=math.random(emin.y, emax.y), z=math.random(emin.z, emax.z)}
      
--      is_air = minetest.get_node(random_pos_world)
      
--      if is_air.name == "air" then
--          return
--      end
      
--      --Place the schematic (dungeon) at the position choosen
--      minetest.place_schematic(random_pos_world, schematic_path .. "dungeon1" ..".mts", "0", {}, true)
      
      
--      --Get a random position from the table for adding
--      random_index = math.random(1, 5)
        
--      --Add the randomly choosen postion from the table to the base position of the schematic
--      random_pos_world.x = random_pos_world.x + positions[random_index].x
--      random_pos_world.y = random_pos_world.y + positions[random_index].y
--      random_pos_world.z = random_pos_world.z + positions[random_index].z
      
      
--      --Figure out what sapling to place
--      if random_pos_world.y > -600 and random_pos_world.y < -300 then --Beryl

--        minetest.set_node(random_pos_world, {name="geominer:sapling_beryl"})


--      elseif random_pos_world.y > -900 and random_pos_world.y < -600 then --Emerald
        
--        minetest.set_node(random_pos_world, {name="geominer:sapling_emerald"})
        
        
--      elseif random_pos_world.y > -1200 and random_pos_world.y < -900 then --Hematite

--        minetest.set_node(random_pos_world, {name="geominer:sapling_hematite"})
        
        
--      elseif random_pos_world.y > -1500 and random_pos_world.y < -1200 then --Sapphire

--        minetest.set_node(random_pos_world, {name="geominer:sapling_sapphire"})
        
        
--      elseif random_pos_world.y > -1800 and random_pos_world.y < -1500 then --Agate

--        minetest.set_node(random_pos_world, {name="geominer:sapling_agate"})
        
        
--      elseif random_pos_world.y > -2100 and random_pos_world.y < -1800 then --Ruby
        
--        minetest.set_node(random_pos_world, {name="geominer:sapling_ruby"})
        
        
--      elseif random_pos_world.y > -2400 and random_pos_world.y < -2100 then --Larimar

--        minetest.set_node(random_pos_world, {name="geominer:sapling_larimar"})
        
        
--      elseif random_pos_world.y > -2700 and random_pos_world.y < -2400 then --Sunstone
        
--        minetest.set_node(random_pos_world, {name="geominer:sapling_sunstone"})
        
        
--      elseif random_pos_world.y > -3000 and random_pos_world.y < -2700 then --Moonstone
        
--        minetest.set_node(random_pos_world, {name="geominer:sapling_moonstone"})
        
        
--    end
--  end
--end)













--This code was made possible by: https://github.com/BlockMen/dungeon_loot/blob/master/init.lua
--Go to the bottom of the code to see where this was studied from

local function spawn_sapling(tab)
	if tab == nil or #tab < 1 then
		return
	end
  
  --Between 1 and 5 sapligns will be spawn
  number_of_saplings = math.random(1, 4)
  
  for i=0, number_of_saplings do
  
    local pos = tab[math.random(1, #tab)]
    pos.y = pos.y - 1
    local below = core.get_node_or_nil(pos)
    local above = core.get_node_or_nil({x=pos.x, y=pos.y+1, z=pos.z})
    if below and below.name ~= "air" and above and above.name == "air" then
      pos.y = pos.y + 1
      
      
      --Figure out what sapling to place
        if pos.y > -600 and pos.y < -300 then --Beryl

          minetest.set_node(pos, {name="geominer:sapling_beryl"})


        elseif pos.y > -900 and pos.y < -600 then --Emerald
          
          minetest.set_node(pos, {name="geominer:sapling_emerald"})
          
          
        elseif pos.y > -1200 and pos.y < -900 then --Hematite

          minetest.set_node(pos, {name="geominer:sapling_hematite"})
          
          
        elseif pos.y > -1500 and pos.y < -1200 then --Sapphire

          minetest.set_node(pos, {name="geominer:sapling_sapphire"})
          
          
        elseif pos.y > -1800 and pos.y < -1500 then --Agate

          minetest.set_node(pos, {name="geominer:sapling_agate"})
          
          
        elseif pos.y > -2100 and pos.y < -1800 then --Ruby
          
          minetest.set_node(pos, {name="geominer:sapling_ruby"})
          
          
        elseif pos.y > -2400 and pos.y < -2100 then --Larimar

          minetest.set_node(pos, {name="geominer:sapling_larimar"})
          
          
        elseif pos.y > -2700 and pos.y < -2400 then --Sunstone
          
          minetest.set_node(pos, {name="geominer:sapling_sunstone"})
          
          
        elseif pos.y > -3000 and pos.y < -2700 then --Moonstone
          
          minetest.set_node(pos, {name="geominer:sapling_moonstone"})
        
        
        end
    end
  end
end

core.set_gen_notify("dungeon")
core.register_on_generated(function(minp, maxp, blockseed)
	local dungeon_object = core.get_mapgen_object("gennotify")
	if dungeon_object and dungeon_object.dungeon and #dungeon_object.dungeon >= 0 then  --0 = number of rooms
		core.after(2, spawn_sapling, table.copy(dungeon_object.dungeon))
	end
end)









