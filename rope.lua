

minetest.register_node("geominer:rope", {
	description = "Rope",
	drawtype = "mesh",
	tiles = {"geominer_rope.png"},
	inventory_image = "geominer_rope_icon.png",
	wield_image = "geominer_rope_icon.png",
	paramtype = "light",
  mesh = "Rope.x",
	sunlight_propagates = true,
	walkable = false,
	climbable = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 3, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
  on_construct = function(pos)
    break_loop = false
    y_axis = pos.y - 1
    
    
    while break_loop == false do
      time_button_track = minetest.get_us_time()
      node = minetest.get_node({x=pos.x, y=y_axis, z=pos.z})
      if node.name == "air" or node.name == "ignore" then
        minetest.set_node({x=pos.x, y=y_axis, z=pos.z}, {name="geominer:rope"})
        y_axis = y_axis - 1
      else
        break_loop = true
        break
      end
    end
  end,

  after_destruct = function(pos, oldnode)
      
      
      
    break_loop_down = false
    
    y_axis_down = pos.y - 1
    
    if y_axis_down == nil then
        return
    end

    
    
    while break_loop_down == false do

      node_down = minetest.get_node({x=pos.x, y=y_axis_down, z=pos.z})
      
      if node_down.name == "geominer:rope" then
          minetest.set_node({x=pos.x, y=y_axis_down, z=pos.z}, {name="air"})
          y_axis_down = y_axis_down - 1
      else
        break_loop_down = true
      end
      
    end
      
  end,


})











