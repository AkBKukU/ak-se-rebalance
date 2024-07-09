if settings.startup["ak-bots-rebalance-research"].value == "base" then

-- Research Ingredients
	data.raw.technology["logistic-system"].unit =
	{
	count = 500,
	ingredients = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1}
	},
	time = 30
	}

-- Research Prerequisites
	data.raw.technology["logistic-system"].prerequisites = {"logistic-robotics","chemical-science-pack"}

end


if (mods or script.active_mods)["robot_attrition"] then
if settings.startup["ak-bots-rebalance-attrition-research"].value == "cheap" then

	data.raw.technology["robot-attrition-explosion-safety"].unit =
	{
		count_formula = "1",
		time = 30,
		ingredients = {
			{ "automation-science-pack", 1 }
		}
	}
end
end
