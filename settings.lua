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
        name = "ak-bots-rebalance-research",
        setting_type = "startup",
        default_value = "base",
	allowed_values = {"base", "disable"}
    },
    {
        type = "string-setting",
        name = "ak-deep-space-belt-rebalance",
        setting_type = "startup",
        default_value = "thermo",
	allowed_values = { "thermo", "disable"}
    }
})


if data.raw["double-setting"]["robot-attrition-factor"] ~= nil then
data:extend({
    {
        type = "string-setting",
        name = "ak-bots-rebalance-attrition-research",
        setting_type = "startup",
        default_value = "cheap",
	allowed_values = {"cheap", "disable"}
    }
})
end
