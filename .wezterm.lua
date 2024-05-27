local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme_dirs = { "~./.config/wezterm/colors/" }
config.color_scheme = "tokyonight_night"

return config
