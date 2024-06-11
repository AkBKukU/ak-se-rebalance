if settings.startup["ak-spidertron-rebalance"].value == "space" then
-- Build Ingredients
	data.raw.recipe["spidertron"].ingredients = {
	{"se-lifesupport-equipment-1", 4},
	{"se-lifesupport-canister", 100},
	{"se-cryonite-rod", 100},
	{"low-density-structure", 150},
	{"rocket-launcher", 4},
	{"se-rtg-equipment", 5},
	{"exoskeleton-equipment", 4},
	{"radar", 2}
	}

-- Research Ingredients
	data.raw.technology["spidertron"].unit =
	{
	count = 1000,
	ingredients = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"se-rocket-science-pack", 1},
	{"space-science-pack", 1},
	{"utility-science-pack", 1},

	},
	time = 30
	}

-- Research Prerequisites
	data.raw.technology["spidertron"].prerequisites = {"se-rtg-equipment", "rocketry","exoskeleton-equipment","low-density-structure","radar","se-processing-cryonite","se-lifesupport-equipment-1"}

elseif settings.startup["ak-spidertron-rebalance"].value == "base" then
	data.raw.recipe["spidertron"].ingredients = {
	{"low-density-structure", 150},
	{"rocket-control-unit", 16},
	{"effectivity-module-2", 8},
	{"raw-fish", 1},
	{"rocket-launcher", 4},
	{"se-rtg-equipment", 5},
	{"exoskeleton-equipment", 4},
	{"radar", 2}
	}

-- Research Ingredients
	data.raw.technology["spidertron"].unit =
	{
	count = 2500,
	ingredients = {
	{"automation-science-pack", 1},
	{"logistic-science-pack", 1},
	{"chemical-science-pack", 1},
	{"se-rocket-science-pack", 1},
	},
	time = 30
	}

-- Research Prerequisites
	data.raw.technology["spidertron"].prerequisites = {"se-rtg-equipment", "rocketry","rocket-control-unit","exoskeleton-equipment","low-density-structure","radar"}
end