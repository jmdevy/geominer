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
        if pos.y > _geo.min(1) and pos.y < _geo.max(1) then --Beryl

          minetest.set_node(pos, {name="geominer:sapling_beryl"})


        elseif pos.y > _geo.min(2) and pos.y < _geo.max(2) then --Emerald
          
          minetest.set_node(pos, {name="geominer:sapling_emerald"})
          
          
        elseif pos.y > _geo.min(3) and pos.y < _geo.max(3) then --Hematite

          minetest.set_node(pos, {name="geominer:sapling_hematite"})
          
          
        elseif pos.y > _geo.min(4) and pos.y < _geo.max(4) then --Sapphire

          minetest.set_node(pos, {name="geominer:sapling_sapphire"})
          
          
        elseif pos.y > _geo.min(5) and pos.y < _geo.max(5) then --Agate

          minetest.set_node(pos, {name="geominer:sapling_agate"})
          
          
        elseif pos.y > _geo.min(6) and pos.y < _geo.max(6) then --Ruby
          
          minetest.set_node(pos, {name="geominer:sapling_ruby"})
          
          
        elseif pos.y > _geo.min(7) and pos.y < _geo.max(7) then --Larimar

          minetest.set_node(pos, {name="geominer:sapling_larimar"})
          
          
        elseif pos.y > _geo.min(8) and pos.y < _geo.max(8) then --Sunstone
          
          minetest.set_node(pos, {name="geominer:sapling_sunstone"})
          
          
        elseif pos.y > _geo.min(9) and pos.y < _geo.max(9) then --Moonstone
          
          minetest.set_node(pos, {name="geominer:sapling_moonstone"})
        
        
        end
    end
  end
end


if dungeon_saplings == "true" then
  core.set_gen_notify("dungeon")
  core.register_on_generated(function(minp, maxp, blockseed)
    local dungeon_object = core.get_mapgen_object("gennotify")
    if dungeon_object and dungeon_object.dungeon and #dungeon_object.dungeon >= 0 then  --0 = number of rooms
      core.after(2, spawn_sapling, table.copy(dungeon_object.dungeon))
    end
  end)
end









