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


if _geo.g("dungeon_saplings", false) == true then
  core.set_gen_notify("dungeon")
  core.register_on_generated(function(minp, maxp, blockseed)
    local dungeon_object = core.get_mapgen_object("gennotify")
    if dungeon_object and dungeon_object.dungeon and #dungeon_object.dungeon >= 0 then  --0 = number of rooms
      core.after(2, spawn_sapling, table.copy(dungeon_object.dungeon))
    end
  end)
end









