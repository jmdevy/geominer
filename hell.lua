-- -0.5 massive lava sea and lots of space
-- 0 for huge caves
-- 0.5 for smaller caves
local TCAVE = 0

local BLEND = 128 -- Cave blend distance near YMIN, YMAX

-- 3D noise for caves

local np_cave = {
	offset = 0,
	scale = 1,
	spread = {x=128, y=45, z=128}, -- squashed 2:1
	seed = 59033,
	octaves = 4,
	persist = 0.63
}



local YMAX = _geo.max(10)
local YMIN = YMAX - 80  --Always have hell be 80 nodes deep/tall
local lava_level = YMIN+15

local yblmin = YMIN + BLEND * 1.5
local yblmax = YMAX - BLEND * 1.5



if hell == "true" then

  minetest.register_on_generated(function(minp, maxp, seed)
    --if out of range of caverealms limits
    if minp.y > YMAX or maxp.y < YMIN then
      return --quit; otherwise, you'd have stalagmites all over the place
    end

    --easy reference to commonly used values
    local x1 = maxp.x
    local y1 = maxp.y
    local z1 = maxp.z
    local x0 = minp.x
    local y0 = minp.y
    local z0 = minp.z
    
    local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
    local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
    local data = vm:get_data()
    
    --grab content IDs
    local c_air = minetest.get_content_id("air")
    local c_lava = minetest.get_content_id("geominer:hell_lava_source")
    local c_soul_stone = minetest.get_content_id("geominer:hell_stone")
    
    --mandatory values
    local sidelen = x1 - x0 + 1 --length of a mapblock
    local chulens = {x=sidelen, y=sidelen, z=sidelen} --table of chunk edges
    local chulens2D = {x=sidelen, y=sidelen, z=1}
    local minposxyz = {x=x0, y=y0, z=z0} --bottom corner
    
    local nvals_cave = minetest.get_perlin_map(np_cave, chulens):get3dMap_flat(minposxyz) --cave noise for structure
    
    local nixyz = 1 --3D node index
    
    for z = z0, z1 do -- for each xy plane progressing northwards
      --structure loop
      for y = y0, y1 do -- for each x row progressing upwards		
        local vi = area:index(x0, y, z) --current node index
        --print(nvals_cave[nixyz]*10000, tcave)
        for x = x0, x1 do --Times 10000 for massive caves
          --print(nvals_cave[nixyz])
          if nvals_cave[nixyz] > TCAVE then --if node falls within cave threshold
            --if below lava level then generate lava
            if y < lava_level and y > YMIN then
              data[vi] = c_lava --If in the range then generate lava
            elseif y == YMIN then
              data[vi] = c_soul_stone --Stop lava from flooding caves below
            else
              data[vi] = c_air --hollow it out to make the cave
            end
          end
          --increment indices
          nixyz = nixyz + 1
          vi = vi + 1
        end
      end
    end
    
    --send data back to voxelmanip
    vm:set_data(data)
    vm:write_to_map(data)
    vm:update_map()
    
  end)
end



--Get random float between two numbers
function randomFloat(lower, greater)
    return lower + math.random()  * (greater - lower);
end



--Hell fire is spit by hell_blowers
minetest.register_entity("geominer:hell_fire", {
	initial_properties = {
		hp_max = 1,
		physical = true,
		collisionbox = {-0.0,-0.0,-0.0, 0.0,0.0,0.0},
		visual = "cube",
		visual_size = {x=0.5, y=0.5},
		textures = {"geominer_hell_fire.png", "geominer_hell_fire.png", "geominer_hell_fire.png", "geominer_hell_fire.png", "geominer_hell_fire.png", "geominer_hell_fire.png"},
		spritediv = {x=1, y=1},
		initial_sprite_basepos = {x=0, y=0},
		is_visible = true,
    physical = false,
    collide_with_objects = true
	},  
  timer = 0,
  sub_timer = 0,

	on_step = function(self, dtime)
    self.timer = self.timer+dtime
    self.sub_timer = self.sub_timer+dtime
    
    --After 1 (second?) spread the fire randomly and set the ground on fire
    if self.timer > 1 then
      local vel = self.object:get_velocity()
      vel.x = vel.x + randomFloat(-0.5, 0.5)
      vel.y = vel.y + randomFloat(-0.3, 0.2) + 0.1
      vel.z = vel.z + randomFloat(-0.5, 0.5)
      self.object:set_velocity(vel)
      if self.sub_timer > 0.6 then
        pos = self.object:get_pos()
        t, pos = minetest.line_of_sight(pos, {x=pos.x, y=pos.y-10, z=pos.z}, 1)
        if t == false then
          minetest.set_node({x=pos.x, y=pos.y+1, z=pos.z}, {name="fire:basic_flame"})
        end
        self.sub_timer = 0
      end
    end
    
    --Remove after 4 (seconds?) so it doesn't drift forever
    if self.timer > 4 then
        self.timer = 0
        self.object:remove()
    end 
	end,
})



--Blow fire
minetest.register_abm({
	nodenames = {"geominer:hell_blower"},
	neighbors = {"air"},
	interval = 12,
	chance = 2,
	action = function(pos, node, active_object_count, active_object_count_wider)
    local velocites = {}
    
    if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == "air" then --up
      table.insert(velocites, {x=0, y=1, z=0})
    end
    if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == "air" then --down
      table.insert(velocites, {x=0, y=-1, z=0})
    end
    if minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z}).name == "air" then --left
      table.insert(velocites, {x=-1, y=0, z=0})
    end
    if minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z}).name == "air" then --right
      table.insert(velocites, {x=1, y=0, z=0})
    end
    if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1}).name == "air" then --front
      table.insert(velocites, {x=0, y=0, z=1})
    end
    if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == "air" then --back
      table.insert(velocites, {x=0, y=0, z=-1})
    end
    
    for b=1, #velocites, 1 do
    
      for i=1, 8, 1 do
        local body = minetest.add_entity(pos, "geominer:hell_fire")
        body:set_velocity(vector.multiply(velocites[b], math.random(2.1, 3.1)))
        body:set_acceleration(vector.multiply(velocites[b], math.random(2.1, 2.5)))
      end
    
    end
	end,
})