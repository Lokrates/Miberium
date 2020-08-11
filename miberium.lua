-- Miberium_Magnum:

minetest.register_node("miberium:magnum", {
		description = "Miberium Magnum",
		drawtype = "mesh",
		mesh = "miberium_magnum.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		sunlight_propagates = true,
		light_source = 5,
		groups = {cracky=3, oddly_breakable_by_hand=2},
		paramtype = "light",
		paramtype2 = "facedir",
		drop = {	items = {
					{items = {'miberium:fragment_yellow'}, rarity = 5},
					{items = {'miberium:fragment_red'}, rarity = 3},
					{items = {'miberium:fragment_green'}, rarity = 2},
					{items = {'miberium:fragment_blue'}, rarity = 1}
				}},		
		sounds = default.node_sound_glass_defaults(),
})


-- Miberium_Crystal:

minetest.register_node("miberium:crystal", {
		description = "Miberium Crystal",
		drawtype = "mesh",
		mesh = "miberium_crystal.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		sunlight_propagates = true,
		light_source = 5,
		groups = {cracky=3, oddly_breakable_by_hand=2},
		paramtype = "light",
		paramtype2 = "facedir",
		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(40, 80))
		end,
		on_timer = function(pos, elapsed)
			minetest.set_node(pos, {name = "miberium:magnum"})
		end,
		drop = {items = {
					{items = {'miberium:fragment_yellow'}, rarity = 6},
					{items = {'miberium:fragment_red'}, rarity = 4},
					{items = {'miberium:fragment_green'}, rarity = 3},
					{items = {'miberium:fragment_blue'}, rarity = 2}				
				}},		
		sounds = default.node_sound_glass_defaults(),
})

-- Blue Miberium:

minetest.register_node("miberium:fragment_blue", {
		description = "Blue Miberium Crystal Fragment",
		drawtype = "mesh",
		mesh = "miberium_fragment.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		inventory_image = "miberium_fragment_blue.png",
		wield_image = "miberium_fragment_blue.png",
		selection_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		collision_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 2,
		groups = {cracky = 3, oddly_breakable_by_hand = 2},
		sounds = default.node_sound_glass_defaults(),
		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(40, 80))
		end,
		on_timer = function(pos, elapsed)
			minetest.set_node(pos, {name = "miberium:crystal"})
		end,
})

minetest.register_craftitem("miberium:crystal_blue", {
	description = "Blue Miberium Crystal",
	inventory_image = "miberium_crystal_blue.png"
})

minetest.register_craft({
    type = "shapeless",
    output = "miberium:crystal_blue",
    recipe = {"miberium:fragment_blue", "miberium:fragment_blue", "miberium:fragment_blue"}
})

minetest.register_craft({
	type = "cooking",
	output = "default:tin_ingot",
	recipe = "miberium:crystal_blue",
	cooktime = 5,
})

-- Green Miberium:

minetest.register_node("miberium:fragment_green", {
		description = "Green Miberium Crystal Fragment",
		drawtype = "mesh",
		mesh = "miberium_fragment.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		inventory_image = "miberium_fragment_green.png",
		wield_image = "miberium_fragment_green.png",
		selection_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		collision_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 2,
		groups = {cracky = 3, oddly_breakable_by_hand = 2},
		sounds = default.node_sound_glass_defaults(),
		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(40, 80))
		end,
		on_timer = function(pos, elapsed)
			minetest.set_node(pos, {name = "miberium:crystal"})
		end,
})

minetest.register_craftitem("miberium:crystal_green", {
	description = "Green Miberium Crystal",
	inventory_image = "miberium_crystal_green.png"
})

minetest.register_craft({
    type = "shapeless",
    output = "miberium:crystal_green",
    recipe = {"miberium:fragment_green", "miberium:fragment_green", "miberium:fragment_green"}
})

minetest.register_craft({
	type = "cooking",
	output = "default:copper_ingot",
	recipe = "miberium:crystal_green",
	cooktime = 5,
})

-- Red Miberium:

minetest.register_node("miberium:fragment_red", {
		description = "Red Miberium Crystal Fragment",
		drawtype = "mesh",
		mesh = "miberium_fragment.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		inventory_image = "miberium_fragment_red.png",
		wield_image = "miberium_fragment_red.png",
		selection_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		collision_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 2,
		groups = {cracky = 3, oddly_breakable_by_hand = 2},
		sounds = default.node_sound_glass_defaults(),
		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(40, 80))
		end,
		on_timer = function(pos, elapsed)
			minetest.set_node(pos, {name = "miberium:crystal"})
		end,
})

minetest.register_craftitem("miberium:crystal_red", {
	description = "Red Miberium Crystal",
	inventory_image = "miberium_crystal_red.png"
})

minetest.register_craft({
    type = "shapeless",
    output = "miberium:crystal_red",
    recipe = {"miberium:fragment_red", "miberium:fragment_red", "miberium:fragment_red"}
})

minetest.register_craft({
	type = "cooking",
	output = "default:steel_ingot",
	recipe = "miberium:crystal_red",
	cooktime = 5,
})

-- Yellow Miberium:

minetest.register_node("miberium:fragment_yellow", {
		description = "Yellow Miberium Crystal Fragment",
		drawtype = "mesh",
		mesh = "miberium_fragment.obj",
		tiles = {"miberium.png"},
		use_texture_alpha = true,
		inventory_image = "miberium_fragment_yellow.png",
		wield_image = "miberium_fragment_yellow.png",
		selection_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		collision_box = {
			type = "fixed",
			fixed = {-0.2, -0.5, -0.2, 0.2, 0.3, 0.2},
			},
		paramtype = "light",
		sunlight_propagates = true,
		light_source = 2,
		groups = {cracky = 3, oddly_breakable_by_hand = 2},
		sounds = default.node_sound_glass_defaults(),
		on_construct = function(pos)
			minetest.get_node_timer(pos):start(math.random(40, 80))
		end,
		on_timer = function(pos, elapsed)
			minetest.set_node(pos, {name = "miberium:crystal"})
		end,
})

minetest.register_craftitem("miberium:crystal_yellow", {
	description = "Yellow Miberium Crystal",
	inventory_image = "miberium_crystal_yellow.png"
})

minetest.register_craft({
    type = "shapeless",
    output = "miberium:crystal_yellow",
    recipe = {"miberium:fragment_yellow", "miberium:fragment_yellow", "miberium:fragment_yellow"}
})

minetest.register_craft({
	type = "cooking",
	output = "default:gold_ingot",
	recipe = "miberium:crystal_yellow",
	cooktime = 5,
})



-- Generation:

minetest.register_abm({
	nodenames = {"group:soil", "group:sand"},
    neighbors = {"miberium:crystal", "miberium:magnum"},
    interval = 150,
    chance = 10,
	action = function(pos, node, active_object_count, active_object_count_wider)	
		local above = {x = pos.x, y = pos.y + 1, z = pos.z}
		if minetest.get_node(above).name == "air" then
		minetest.set_node(above, {name = "miberium:fragment_yellow"})
		else
		return	
		end
    end
})

minetest.register_decoration({
	deco_type = "simple",
    place_on = {"group:soil", "group:sand"},
	sidelen = 16,
	noise_params = {
			offset = 0,
			scale = 0.001,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
	decoration = "miberium:crystal",
	y_min = -5,
	y_max = 200,
})	