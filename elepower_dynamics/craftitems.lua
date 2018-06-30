
----------------
-- Craftitems --
----------------

-- Ingots

minetest.register_craftitem("elepower_dynamics:lead_ingot", {
	description = "Lead Ingot",
	inventory_image = "elepower_lead_ingot.png",
	groups = {lead = 1, ingot = 1}
})

minetest.register_craftitem("elepower_dynamics:iron_ingot", {
	description = "Iron Ingot",
	inventory_image = "elepower_iron_ingot.png",
	groups = {iron = 1, ingot = 1}
})

minetest.register_craftitem("elepower_dynamics:nickel_ingot", {
	description = "Nickel Ingot",
	inventory_image = "elepower_nickel_ingot.png",
	groups = {nickel = 1, ingot = 1}
})

minetest.register_craftitem("elepower_dynamics:invar_ingot", {
	description = "Invar Ingot",
	inventory_image = "elepower_invar_ingot.png",
	groups = {invar = 1, ingot = 1}
})

minetest.register_craftitem("elepower_dynamics:electrum_ingot", {
	description = "Electrum Ingot",
	inventory_image = "elepower_electrum_ingot.png",
	groups = {electrum = 1, ingot = 1}
})

minetest.register_craftitem("elepower_dynamics:viridisium_ingot", {
	description = "Viridisium Ingot",
	inventory_image = "elepower_viridisium_ingot.png",
	groups = {viridisium = 1, ingot = 1}
})

-- Lumps

minetest.register_craftitem("elepower_dynamics:lead_lump", {
	description = "Lead Lump",
	inventory_image = "elepower_lead_lump.png",
	groups = {lead = 1, lump = 1}
})

minetest.register_craftitem("elepower_dynamics:nickel_lump", {
	description = "Nickel Lump",
	inventory_image = "elepower_nickel_lump.png",
	groups = {nickel = 1, lump = 1}
})

minetest.register_craftitem("elepower_dynamics:viridisium_lump", {
	description = "Viridisium Lump",
	inventory_image = "elepower_viridisium_lump.png",
	groups = {viridisium = 1, lump = 1}
})

-- Special

minetest.register_craftitem("elepower_dynamics:carbon_fiber", {
	description = "Carbon Fibers",
	inventory_image = "elepower_carbon_fiber.png",
	groups = {carbon_fiber = 1}
})

minetest.register_craftitem("elepower_dynamics:carbon_sheet", {
	description = "Carbon Fiber Sheet",
	inventory_image = "elepower_carbon_fiber_sheet.png",
	groups = {carbon_fiber_sheet = 1, sheet = 1}
})

minetest.register_craftitem("elepower_dynamics:tree_tap", {
	description = "Steel Treetap",
	inventory_image = "elepower_tree_tap.png",
	groups = {treetap = 1, static_component = 1}
})

minetest.register_craftitem("elepower_dynamics:pcb_blank", {
	description = "Printed Circuit Board (PCB) Blank",
	inventory_image = "elepower_blank_pcb.png",
	liquids_pointable = true,
	groups = {blank_board = 1, static_component = 1}
})

minetest.register_craftitem("elepower_dynamics:pcb", {
	description = "Printed Circuit Board (PCB)",
	inventory_image = "elepower_pcb.png",
	groups = {pcb = 1, static_component = 1}
})

minetest.register_craftitem("elepower_dynamics:acidic_compound", {
	description = "Acidic Compound\nUsed to make Etching Acid",
	inventory_image = "elepower_acidic_compound.png",
	liquids_pointable = true,
	groups = {acid = 1, static_component = 1},
	on_place = function (itemstack, placer, pointed_thing)
		local pos  = pointed_thing.under
		local node = minetest.get_node(pos)
		
		if node.name ~= "default:water_source" then
			return itemstack
		end

		minetest.set_node(pos, {name = "elepower_dynamics:etching_acid_source"})
		itemstack:take_item(1)

		return itemstack
	end,
})

-- Electronics

minetest.register_craftitem("elepower_dynamics:wound_copper_coil", {
	description = "Wound Copper Coil",
	inventory_image = "elepower_copper_coil.png",
	groups = {copper = 1, coil = 1, component = 1}
})

minetest.register_craftitem("elepower_dynamics:wound_silver_coil", {
	description = "Wound Silver Coil",
	inventory_image = "elepower_silver_coil.png",
	groups = {silver = 1, coil = 1, component = 1}
})

minetest.register_craftitem("elepower_dynamics:copper_wire", {
	description = "Copper Wire",
	inventory_image = "elepower_copper_wire.png",
	groups = {copper = 1, wire = 1, component = 1}
})

minetest.register_craftitem("elepower_dynamics:induction_coil", {
	description = "Induction Coil",
	inventory_image = "elepower_induction_coil.png",
	groups = {induction_coil = 1, component = 1}
})

minetest.register_craftitem("elepower_dynamics:induction_coil_advanced", {
	description = "Advanced Induction Coil\nSuitable for high-power applications",
	inventory_image = "elepower_induction_coil_advanced.png",
	groups = {induction_coil = 1, component = 1}
})

minetest.register_craftitem("elepower_dynamics:chip", {
	description = "Chip",
	inventory_image = "elepower_chip.png",
	groups = {ic = 2, component = 1}
})

minetest.register_craftitem("elepower_dynamics:capacitor", {
	description = "Capacitor",
	inventory_image = "elepower_capacitor.png",
	groups = {capacitor = 2, component = 1}
})

-- Assembled Components

minetest.register_craftitem("elepower_dynamics:servo_valve", {
	description = "Servo Valve",
	inventory_image = "elepower_servo_valve.png",
	groups = {servo_valve = 1, assembled_component = 1}
})

minetest.register_craftitem("elepower_dynamics:integrated_circuit", {
	description = "Integrated Circuit",
	inventory_image = "elepower_ic.png",
	groups = {ic = 1, assembled_component = 1}
})

minetest.register_craftitem("elepower_dynamics:control_circuit", {
	description = "Integrated Control Circuit",
	inventory_image = "elepower_ic_2.png",
	groups = {ic = 2, assembled_component = 1, control_circuit = 1}
})

minetest.register_craftitem("elepower_dynamics:micro_circuit", {
	description = "Microcontroller Circuit",
	inventory_image = "elepower_ic_3.png",
	groups = {ic = 3, assembled_component = 1, control_circuit = 2}
})

---------------
-- Overrides --
---------------
