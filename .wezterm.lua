local wezterm = require 'wezterm'
return {
  font = wezterm.font 'JetBrainsMono Nerd Font',
  font_size = 18.0,
  keys = {
    { key = "LeftArrow", mods = "OPT", action = wezterm.action { SendString = "\x1bb" } },
    { key = "RightArrow", mods = "OPT", action = wezterm.action { SendString = "\x1bf" } },
  }
}
