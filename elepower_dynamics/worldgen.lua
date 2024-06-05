-- see elepower_papi >> external_nodes_items.lua for explanation
-- shorten table ref 
local epr = ele.external.ref

--------------
-- Worldgen --
--------------

if minetest.get_modpath("technic_worldgen") then
	return false
else
	-- Lead
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_lead",
		wherein        = epr.stone,
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 12,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = 1025,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_lead",
		wherein        = epr.stone,
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_lead",
		wherein        = epr.stone,
		clust_scarcity = 10 * 10 * 10,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -128,
		y_min          = -31000,
	})

-- Zinc
	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_zinc",
		wherein        = epr.stone,
		clust_scarcity = 25 * 25 * 25,
		clust_num_ores = 2,
		clust_size     = 3,
		y_max          = 31000,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_zinc",
		wherein        = epr.stone,
		clust_scarcity = 20 * 20 * 20,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = 0,
		y_min          = -31000,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "elepower_dynamics:stone_with_zinc",
		wherein        = epr.stone,
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 5,
		clust_size     = 3,
		y_max          = -256,
		y_min          = -31000,
	})
end

-- Nickel
minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_nickel",
	wherein        = epr.stone,
	clust_scarcity = 25 * 25 * 25,
	clust_num_ores = 4,
	clust_size     = 3,
	y_max          = 0,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_nickel",
	wherein        = epr.stone,
	clust_scarcity = 25 * 25 * 25,
	clust_num_ores = 4,
	clust_size     = 3,
	y_max          = 31000,
	y_min          = 0,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_nickel",
	wherein        = epr.stone,
	clust_scarcity = 15 * 15 * 15,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -1028,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_nickel",
	wherein        = epr.stone,
	clust_scarcity = 12 * 12 * 12,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -8096,
	y_min          = -31000,
})

-- Viridisium

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_viridisium",
	wherein        = epr.stone,
	clust_scarcity = 25 * 25 * 25,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -1028,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_viridisium",
	wherein        = epr.stone,
	clust_scarcity = 20 * 20 * 20,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -8096,
	y_min          = -31000,
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "elepower_dynamics:stone_with_viridisium",
	wherein        = epr.stone,
	clust_scarcity = 10 * 10 * 10,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = -12000,
	y_min          = -31000,
})
