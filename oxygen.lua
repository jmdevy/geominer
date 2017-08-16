----Players that the oxygen will affect
--local players = {}

--minetest.register_on_joinplayer(function(player)
--	table.insert(players, player)
  
--  player:hud_add({
--      hud_elem_type = "image",
--      position = {x=0.5, y=0.5},
--      name = "GeoBackground",
--      text = "geominer_hud_background.png",
--      scale = {x=44.2, y=1.7},
--      offset = {x=390, y=515},
--      })
--  player:hud_add({
--      hud_elem_type = "statbar",
--      position = {x=0.5, y=0.5},
--      name = "GeoOxygen",
--      size = {x=8, y=12},
--      text = "geominer_oxygen.png",
--      scale = {x=1, y=1},
--      number = 100,
--      offset = {x=220, y=521},
--      })
--end)



--local timer = 0
--minetest.register_globalstep(function(dtime)
--	timer = timer + dtime;
  
--  --Don't wan to check oxygen too often, it will slow the server
--	if timer >= 5 then
		
--    for i, player in ipairs(players) do
      
--        hud_def = player:hud_get("GeoOxygen")
--        --minetest.chat_send_all(tostring(hud_def.number))
--        player:hud_change("GeoOxygen", "number", hud_def.number-1)
--    end
    
--    --Reset the timer
--    timer = 0
--	end
--end)