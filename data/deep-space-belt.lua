if settings.startup["ak-deep-space-belt-rebalance"].value == "thermo" then
	if (mods or script.active_mods)["space-exploration"] then

	-- Build Ingredients
		data.raw.recipe["se-deep-space-transport-belt"].ingredients = {
		{"electric-engine-unit", 2},
		{"se-space-transport-belt", 1},
		{"heat-pipe", 2},
		{type="fluid",name="se-pyroflux", amount=5}
		}
		-- underground
		data.raw.recipe["se-deep-space-underground-belt"].ingredients = {
		{"se-space-underground-belt", 1},
		{"se-heat-shielding", 4},
		{type="fluid",name="se-pyroflux", amount=25}
		}

		-- splitter
		data.raw.recipe["se-deep-space-splitter"].ingredients = {
		{"electric-engine-unit", 2},
		{"se-space-splitter", 1},
		{"processing-unit", 10},
		{type="fluid",name="se-pyroflux", amount=50}
		}

	-- Research Ingredients
		data.raw.technology["se-deep-space-transport-belt"].unit =
		{
		count = 500,
		ingredients = {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"se-rocket-science-pack", 1},
		{"space-science-pack", 1},
		{"production-science-pack", 1},

		},
		time = 30
		}

	-- Research Prerequisites
		data.raw.technology["se-deep-space-transport-belt"].prerequisites = {"se-space-belt","se-processing-vulcanite","se-heat-shielding","nuclear-power"}

		-- loader
		if (mods or script.active_mods)["aai-loaders"] then
			if settings.startup["aai-loaders-mode"].value == "lubricated" then
				data.raw.recipe["aai-se-deep-space-black-loader"].ingredients = {
					{"electric-engine-unit", 10},
					{"se-deep-space-transport-belt-black", 1},
					{"processing-unit", 20},
					{"se-vulcanite-block", 2},
					{type="fluid",name="se-pyroflux", amount=50}
				}
			else
				data.raw.recipe["aai-se-deep-space-black-loader"].ingredients = {
					{"electric-engine-unit", 100},
					{"se-deep-space-transport-belt-black", 1},
					{"processing-unit", 200},
					{"se-vulcanite-block", 20},
					{type="fluid",name="se-pyroflux", amount=500}
				}
			end



		-- Research Ingredients
			data.raw.technology["aai-express-loader"].unit =
			{
			count = 300,
			ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"se-rocket-science-pack", 1},
			{"space-science-pack", 1},

			},
			time = 30
			}

		-- Research Prerequisites
			data.raw.technology["aai-express-loader"].prerequisites = {"space-science-pack"}

		-- Research Ingredients
			data.raw.technology["aai-se-deep-space-loader"].unit =
			{
			count = 500,
			ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"se-rocket-science-pack", 1},
			{"space-science-pack", 1},
			{"production-science-pack", 1},

			},
			time = 30
			}

		-- Research Prerequisites
			data.raw.technology["aai-se-deep-space-loader"].prerequisites = {"se-space-belt","se-processing-vulcanite",}
		end


	end

end
