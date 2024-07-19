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
        key = 't',
        mods = 'ALT',
        action = act.SpawnTab 'CurrentPaneDomain',
    },
    {
        key = '+',
        mods = 'ALT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = '#',
        mods = 'ALT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = "h",
        mods = "ALT",
        action = act.ActivatePaneDirection("Left"),
    },
    {
        key = "j",
        mods = "ALT",
        action = act.ActivatePaneDirection("Down"),
    },
    {
        key = "k",
        mods = "ALT",
        action = act.ActivatePaneDirection("Up"),
    },
    {
        key = "l",
        mods = "ALT",
        action = act.ActivatePaneDirection("Right"),
    },
    {
        key = 'Q',
        mods = 'ALT',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
}
return config
