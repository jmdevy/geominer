





minetest.register_node("geominer:glow_drop", {
	description = "glow_drop",
	drawtype = "airlike",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climbable = false,
  pointable = false,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
  light_source = 14,
})

minetest.register_node("geominer:glow", {
	description = "glow",
	drawtype = "normal",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	climbable = false,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
  light_source = 14,
  on_drop = function(itemstack, dropper, pos)
    itemstack:take_item()
    --minetest.chat_send_all(itemstack:get_name())
    --minetest.chat_send_all(obj:get_luaentity().itemstring)
    
    item_to_find = itemstack:get_name() .. " 4"
    
    minetest.item_drop(itemstack, dropper, pos)
    
    
    items = minetest.get_objects_inside_radius(pos, 5)
    for i, obj in pairs(items) do
      if obj:is_player() == false then
        --minetest.chat_send_all(obj:get_luaentity().itemstring)
        --minetest.chat_send_all(item_to_find)
        if item_to_find == obj:get_luaentity().itemstring then
          minetest.chat_send_all("YES")
        end
      end
    end
    
    return itemstack
    
--    local objs = minetest.env:get_objects_inside_radius(pos, 5)
--    glow_object = nil
--    for k, obj in pairs(objs) do
--      if obj:is_player() == false then
--        minetest.chat_send_all(obj:get_luaentity)  
--        if obj.name == "geominer:glow" then
--          glow_object = obj
--          break
--        end
--      end
--    end
    
--    if glow_object ~= nil then
--      item_pos = obj:getpos()
--      minetest.set_node({x=item_pos.x, y=item_pos.y, z=item_pos.z}, {name="geominer:glow_drop"})  
--    end
    
  end,
})