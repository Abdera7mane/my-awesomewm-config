local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local rnotification = require("ruled.notification")
local gears = require("gears")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local theme_path = gfs.get_configuration_dir().. "theme/"

local theme = {}
theme.colors = {}
theme.icons = {}

theme.font          = "monospace 9"

theme.colors.black          = "#484f58"
theme.colors.bright_black   = "#6e7681"
theme.colors.white          = "#b1bac4"
theme.colors.bright_white   = "#f0f6fc"
theme.colors.red            = "#ff7b72"
theme.colors.bright_red     = "#ffa198"
theme.colors.green          = "#3fb950"
theme.colors.bright_green   = "#56d364"
theme.colors.orange         = "#d18616"
theme.colors.yellow         = "#d29922"
theme.colors.bright_yellow  = "#e3b341"
theme.colors.blue           = "#58a6ff"
theme.colors.bright_blue    = "#79c0ff"
theme.colors.magenta        = "#bc8cff"
theme.colors.bright_magenta = "#d2a8ff"
theme.colors.cyan           = "#39c5cf"
theme.colors.bright_cyan    = "#56d4dd"
theme.colors.dark_gray_1    = "#0d1117"
theme.colors.dark_gray_2    = "#090c10"
theme.colors.gray           = "#4d5566"
theme.colors.light_gray_1   = "#c5c5c5"
theme.colors.light_gray_2   = "#b3b1ad"
theme.colors.bright_cyan    = "#56d4dd"
theme.colors.accent         = "#73b7f2"
theme.colors.dimmed         = "#1c2f45"
theme.colors.urgent         = "#f85149"
theme.colors.warning        = "#f0883e"


theme.bg_normal             = theme.colors.dark_gray_2
theme.bg_focus              = theme.colors.dark_gray_1
theme.bg_urgent             = theme.colors.urgent
theme.bg_minimize           = "#161b22"
theme.bg_systray            = theme.bg_normal

theme.fg_normal             = theme.colors.bright_blue
theme.fg_focus              = theme.colors.bright_blue
theme.fg_urgent             = "#ffffff"
theme.fg_minimize           = "#000000"

theme.useless_gap           = dpi(0)
theme.border_width          = dpi(1)
theme.border_color_normal   = "#000000"
theme.border_color_active   = "#000000"
theme.border_color_marked   = "#91231c"


theme.tasklist_bg_normal    = theme.colors.dimmed
theme.tasklist_bg_focus     = theme.colors.accent
theme.tasklist_fg_focus     = "#000000"

theme.tasklist_disable_task_name = true
theme.tasklist_icon_size = 16

theme.tasklist_shape = function(cr, width, height)
    gears.shape.rounded_rect(cr, width, height, 4)
end

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme_path.."assets/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

theme.icons.alpine_icon = theme_path.."assets/alpine_icon.svg"
theme.icons.titlebar_close = theme_path.."assets/titlebar/close.svg"
theme.icons.titlebar_maximized_active = theme_path.."assets/titlebar/maximized_active.svg"
theme.icons.titlebar_minimize = theme_path.."assets/titlebar/minimize.svg"




theme.titlebar_close_button_normal = theme.icons.titlebar_close
theme.titlebar_close_button_focus = theme.icons.titlebar_close

theme.titlebar_minimize_button_normal = theme.icons.titlebar_minimize
theme.titlebar_minimize_button_focus = theme.icons.titlebar_minimize

theme.titlebar_ontop_button_normal_inactive = theme_path.."assets/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme_path.."assets/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme_path.."assets/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme_path.."assets/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme_path.."assets/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme_path.."assets/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme_path.."assets/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme_path.."assets/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme_path.."assets/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme_path.."assets/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme_path.."assets/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme_path.."assets/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.icons.titlebar_maximized_active
theme.titlebar_maximized_button_focus_inactive = theme.icons.titlebar_maximized_active
theme.titlebar_maximized_button_normal_active = theme.icons.titlebar_maximized_active
theme.titlebar_maximized_button_focus_active = theme.icons.titlebar_maximized_active

theme.wallpaper = theme_path.."assets/background.jpg"

theme.layout_fairh = theme_path.."assets/layouts/fairhw.png"
theme.layout_fairv = theme_path.."assets/layouts/fairvw.png"
theme.layout_floating  = theme_path.."assets/layouts/floatingw.png"
theme.layout_magnifier = theme_path.."assets/layouts/magnifierw.png"
theme.layout_max = theme_path.."assets/layouts/maxw.png"
theme.layout_fullscreen = theme_path.."assets/layouts/fullscreenw.png"
theme.layout_tilebottom = theme_path.."assets/layouts/tilebottomw.png"
theme.layout_tileleft   = theme_path.."assets/layouts/tileleftw.png"
theme.layout_tile = theme_path.."assets/layouts/tilew.png"
theme.layout_tiletop = theme_path.."assets/layouts/tiletopw.png"
theme.layout_spiral  = theme_path.."assets/layouts/spiralw.png"
theme.layout_dwindle = theme_path.."assets/layouts/dwindlew.png"
theme.layout_cornernw = theme_path.."assets/layouts/cornernww.png"
theme.layout_cornerne = theme_path.."assets/layouts/cornernew.png"
theme.layout_cornersw = theme_path.."assets/layouts/cornersww.png"
theme.layout_cornerse = theme_path.."assets/layouts/cornersew.png"

-- Generate Awesome icon:
-- theme.awesome_icon = theme_assets.awesome_icon(
--    theme.menu_height, theme.colors.blue, theme.colors.fg_focus
-- )

theme.awesome_icon = gears.color.recolor_image(
    theme.icons.alpine_icon, theme.colors.blue
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "/usr/share/icons/iconic"

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
    rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
