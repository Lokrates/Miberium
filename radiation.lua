radiant_damage.register_radiant_damage("miberium_radiation", {
	interval = 2,
	range = 5,
	emitted_by = {
		["miberium:magnum"] = 2,
		["miberium:crystal"] = 1,
	},
	attenuated_by = {["default_stone"] = 1},
	default_attenuation = 1,
	inverse_square_falloff = false,
	above_only = false,
	})
