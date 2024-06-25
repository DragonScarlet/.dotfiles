local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'Tokyo Night'
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.native_macos_fullscreen_mode = false
config.keys = {
    {
        key = 'n',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen,
    },
    {
        key = 't',
        mods = 'SHIFT|CTRL',
        action = act.SpawnTab 'CurrentPaneDomain',
    },
}

return config
