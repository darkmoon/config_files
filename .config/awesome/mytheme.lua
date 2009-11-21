-------------------------------
-- "Brandnew" awesome theme  --
--      By Xu Xiaodong       --
-------------------------------

-- {{{ Main
theme = {}
theme.wallpaper_cmd = { "awsetbg /home/dark/pics/wallpaper/pattern/dwood.jpg" }
-- }}}

-- {{{ Styles
theme.font      = "sans 8"

-- {{{ Colors
theme.bg_normal     = "#2B2B2B"
theme.bg_focus      = "#67B8CB"
theme.bg_urgent     = "#8BD2E4"
theme.fg_normal     = "#EFEFEF"
theme.fg_focus      = "#FFFFFF"
theme.fg_urgent     = "#FFFFFF"
-- }}}

-- {{{ Borders
theme.border_width  = "1"
theme.border_normal = "#171717"
theme.border_focus  = "#67B8CB"
theme.border_marked = "#91231C"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3F"
theme.titlebar_bg_normal = "#3F3F3F"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "14"
theme.menu_width  = "100"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/usr/share/awesome/themes/default/taglist/squarefw.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/default/taglist/squarew.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/usr/share/awesome/icons/awesome16.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/layouts/floating.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/default/layouts/tiletopw.png"
theme.layout_fairv      = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_fairh      = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_spiral     = "/usr/share/awesome/themes/default/layouts/spiralw.png"
theme.layout_dwindle    = "/usr/share/awesome/themes/default/layouts/dwindlew.png"
theme.layout_max        = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
theme.layout_floating   = "/usr/share/awesome/themes/default/layouts/floatingw.png"
-- }}}

-- MISC
theme.taglist_squares       = "true"
theme.titlebar_close_button = "true"

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active        = "/usr/share/awesome/themes/default/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = "/usr/share/awesome/themes/default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = "/usr/share/awesome/themes/default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = "/usr/share/awesome/themes/default/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active       = "/usr/share/awesome/themes/default/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = "/usr/share/awesome/themes/default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = "/usr/share/awesome/themes/default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = "/usr/share/awesome/themes/default/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active     = "/usr/share/awesome/themes/default/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = "/usr/share/awesome/themes/default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = "/usr/share/awesome/themes/default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = "/usr/share/awesome/themes/default/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = "/usr/share/awesome/themes/default/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = "/usr/share/awesome/themes/default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/default/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
