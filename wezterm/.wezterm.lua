local wezterm = require "wezterm"
local primary_color = "#000000"
local font_family = "JetBrains Mono"

wezterm.on(
    "format-tab-title",
    function(tab)
        local title = "hi"
        if tab.is_active then
            return {
                { Text = title },
            }
        else
            return {
                { Text = "~" },
            }
        end
    end
)

wezterm.on("window-config-reloaded", function(window)
    if wezterm.gui.screens().active.name == "XB271HU" then
        window:set_config_overrides({
            dpi = 250,
            font_size = 14,
            window_frame = {
                font = wezterm.font(font_family, { weight = "Bold" }),
                font_size = 12,
                active_titlebar_bg = primary_color,
            },
        })
    elseif wezterm.gui.screens().active.name == "Built-in Retina Display" then
        window:set_config_overrides({
            dpi = 144,
            font_size = 14,
            window_frame = {
                font = wezterm.font(font_family, { weight = "Bold" }),
                font_size = 12.5,
                active_titlebar_bg = primary_color,
            },
        })
    end
end)

return {
    window_frame = {
        font = wezterm.font(font_family, { weight = "Bold" }),
        font_size = 12.5,
        active_titlebar_bg = primary_color,
    },
    font_dirs = {},
    term = "wezterm",
    -- native_macos_fullscreen_mode = true,
    enable_wayland = false,
    color_scheme = "rose-pine-moon",
    enable_kitty_graphics = true,
    front_end = "WebGpu",
    colors = {
        tab_bar = {
            background = primary_color,
            inactive_tab_edge = primary_color,
            new_tab = {
                bg_color = primary_color,
                fg_color = "#808080",
            },
            new_tab_hover = {
                bg_color = primary_color,
                fg_color = "#707070",
            },
            inactive_tab = {
                bg_color = primary_color,
                fg_color = "#808080",
            },
            active_tab = {
                bg_color = primary_color,
                fg_color = "#c0c0c0",
            }
        },
        background = primary_color,
        foreground = "#e0def4",

        cursor_bg = "#e0def4",
        cursor_border = "#e0def4",
        cursor_fg = "#191724",

        selection_bg = "#191724",
        selection_fg = "#e0def4",

        ansi = { primary_color, "#eb6f92", "#9ccfd8", "#f6c177", "#31748f", "#c4a7e7", "#ebbcba", "#e0def4" },
        brights = { "#6e6a86", "#eb6f92", "#9ccfd8", "#f6c177", "#31748f", "#c4a7e7", "#ebbcba", "#e0def4" },
    },
    --[[colors = {
        tab_bar = {
            background = primary_color,
            inactive_tab_edge = primary_color,
            new_tab = {
                bg_color = primary_color,
                fg_color = "#808080",
            },
            new_tab_hover = {
                bg_color = primary_color,
                fg_color = "#707070",
            },
            inactive_tab = {
                bg_color = primary_color,
                fg_color = "#808080",
            },
            active_tab = {
                bg_color = primary_color,
                fg_color = "#c0c0c0",
            }
        },
        background = primary_color,
        foreground = "#ffffff",

        cursor_bg = "#acb1ab",
        cursor_border = "#acb1ab",
        cursor_fg = "#ffffff",

        selection_bg = "#988049",
        selection_fg = "#acb1ab",

        ansi = { primary_color, "#f5a191", "#90b99f", "#e6b99d", "#aca1cf", "#e29eca", "#ea83a5", "#a0a0a0" },
        brights = { "#7e7e7e", "#ff8080", "#99ffe4", "#ffc799", "#b9aeda", "#ecaad6", "#f591b2", "#ffffff" },
    },]]
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
    window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW",
    adjust_window_size_when_changing_font_size = false,
    show_tab_index_in_tab_bar = false,
    font = wezterm.font(font_family, { italic = false }),
    scrollback_lines = 30000,
    window_close_confirmation = "NeverPrompt",
    window_padding = {
    },
    -- enable_tab_bar = false,
    font_size = 14,
    initial_cols = 100,
    initial_rows = 30,
    max_fps = 165,
    --[[background = {
        {
            source = {
                File = "/Users/lucasfellipe/www/wallpapers/anime/cyber_girl.jpg",
            },
            hsb = { brightness = 0.04 },
        },
    },]]
    keys = {
        {
            key = "w",
            mods = "CMD",
            action = wezterm.action.CloseCurrentTab { confirm = false },
        },
        {
            key = ".",
            mods = "CMD",
            action = wezterm.action.ToggleFullScreen,
        },
        {
            key = "P",
            mods = "CTRL|SHIFT",
            action = wezterm.action.DisableDefaultAssignment,
        },
        {
            key = "N",
            mods = "CTRL|SHIFT",
            action = wezterm.action.DisableDefaultAssignment,
        },
    }
}
