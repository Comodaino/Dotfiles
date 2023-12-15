local wezterm = require 'wezterm'
local act = wezterm.action


return {
    default_cwd = "/home/comodino",

    font = wezterm.font_with_fallback {
        'JetBrains Mono',
        'Nerd Font',
    },

    font_size = 14,

    window_background_opacity = 1,
    inactive_pane_hsb = {
        saturation = 0.9,
        brightness = 0.8,
    },

    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = false,
    tab_bar_at_bottom = true,
    color_scheme = "Catppuccin Mocha",

}
