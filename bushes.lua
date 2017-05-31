

--Documentation of this is here: http://dev.minetest.net/Introduction_to_L-system_trees
minetest.register_abm{
        label = "Beryl Tree Growth",
        nodenames = {"geominer:sapling_beryl"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 100,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_beryl",
            leaves="geominer:bush_leaves",
            angle=0,
            iterations=1,
            random_level=0,
            trunk_type="single",
            thin_branches=true,
            fruit_chance=0,
            fruit="default:apple"
          } 
          minetest.set_node(pos, {name="air"}) --Get rid of sapling
          minetest.spawn_tree(pos ,apple_tree)
          
        end,
}