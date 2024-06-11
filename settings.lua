data:extend({
    {
        type = "string-setting",
        name = "ak-spidertron-rebalance",
        setting_type = "startup",
        default_value = "space",
	allowed_values = {"base", "space", "disable"}
    },
    {
        type = "string-setting",
        name = "ak-deep-space-belt-rebalance",
        setting_type = "startup",
        default_value = "thermo",
	allowed_values = { "thermo", "disable"}
    }
})

