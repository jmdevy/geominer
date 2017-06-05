

--Documentation of this is here: http://dev.minetest.net/Introduction_to_L-system_trees
minetest.register_abm{
        label = "Beryl Tree Growth",
        nodenames = {"geominer:sapling_beryl"},
        neighbors = {"group:crumbly", "group:soil"},
        interval = 1,
        chance = 2,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_beryl",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Emerald Tree Growth",
        nodenames = {"geominer:sapling_emerald"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_emerald",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Sapphire Tree Growth",
        nodenames = {"geominer:sapphire_sapling"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_sapphire",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Hematite Tree Growth",
        nodenames = {"geominer:sapling_hematite"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_hematite",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Agate Tree Growth",
        nodenames = {"geominer:sapling_agate"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_agate",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Ruby Tree Growth",
        nodenames = {"geominer:sapling_ruby"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_ruby",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Larimar Tree Growth",
        nodenames = {"geominer:sapling_larimar"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_larimar",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Sunstone Tree Growth",
        nodenames = {"geominer:sapling_sunstone"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_sunstone",
            leaves="default:bush_leaves",
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


minetest.register_abm{
        label = "Moonstone Tree Growth",
        nodenames = {"geominer:sapling_moonstone"},
        neighbors = {"group:crumbly"},
        interval = 1,
        chance = 1500,
        action = function(pos)
          
          apple_tree={
            axiom="A",
            rules_a="[Ffff]",
            trunk="geominer:bush_stem_moonstone",
            leaves="default:bush_leaves",
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



