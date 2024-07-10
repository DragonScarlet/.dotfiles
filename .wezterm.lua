local wezterm = require 'wezterm'

local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'Tokyo Night'
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.native_macos_fullscreen_mode = false
config.leader = {
  key = "w",
  mods = "CTRL",
  timeout_milliseconds = math.maxinteger,
}
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
    {
        key = 'v',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'h',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = "h",
        mods = "LEADER",
        action = act.ActivatePaneDirection("Left"),
    },
    {
        key = "j",
        mods = "LEADER",
        action = act.ActivatePaneDirection("Down"),
    },
    {
        key = "k",
        mods = "LEADER",
        action = act.ActivatePaneDirection("Up"),
    },
    {
        key = "l",
        mods = "LEADER",
        action = act.ActivatePaneDirection("Right"),
    },
    {
        key = "-",
        mods = "LEADER",
        action = act.ActivatePaneDirection("Right"),
    },

}
return config
