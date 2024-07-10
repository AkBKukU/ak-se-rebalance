if settings.startup["ak-fluid-venting"].value == "vent" then
	-- Iterate through all fluids available
	for k, v in pairs(data.raw.fluid) do
	-- Act on any fluids that are not hidden (or water since it already can be vented)
	if not data.raw.fluid[k].hidden and k ~= "water"
	then

		-- Add recipe for venting new fluid
		data:extend({
		{
			type = "recipe",
			name = "ak-electric-boiling-void-fluid-"..k,
			results = {},
			enabled = false,
			energy_required = 0.37,
			ingredients = {
				{ type = "fluid", name = k, amount = 100 },
			},
			icons = {
				{icon = data.raw.fluid[k].icon },
				{icon = "__space-exploration-graphics__/graphics/icons/cross.png" },
			},
			icon_size = data.raw.fluid[k].icon_size,
			subgroup = "water",
			localised_name = {"?", {"", {"fluid-name." .. k}," ", {"ak-venting"}}, k .. " venting"} ,
			requester_paste_multiplier = 1,
			always_show_made_in = false,
			category = "se-electric-boiling",
			order = "b-a"
		}})

		-- Attach it to the research of the boiler

		-- NOTE : It would be nice to make some of these also pre-req their related researches but two levels of dynamic generation
		-- is beyond the scope of this mod. I'm just happy I didn't hard code outputs from the core processing.
		table.insert(
		data.raw.technology["se-electric-boiler"].effects,
			{ type = "unlock-recipe", recipe = "ak-electric-boiling-void-fluid-"..k}
		)
	end
	end
end

if settings.startup["ak-landfill-compression"].value == "compress" then
	-- Add recipe for 100:1 landfill
	data:extend({
	{
	type = "recipe",
	name = "ak-landfill-landfill",
	category = "hard-recycling",
	energy_required = 1,
	enabled = false,
	icons = {
	{icon = data.raw.item.landfill.icon, icon_size = data.raw.item.landfill.icon_size},
	{icon = data.raw.item.landfill.icon, icon_size = data.raw.item.landfill.icon_size, scale = 0.33*64/data.raw.item.landfill.icon_size},
	},
	ingredients =
	{
	{"landfill", 100}
	},
	result= "landfill",
	result_count = 1,
	order = "z-a-b",
	allow_decomposition = false,

	}})


	table.insert(
		data.raw.technology["se-recycling-facility"].effects,
		{ type = "unlock-recipe", recipe = "ak-landfill-landfill"}
	)
end
