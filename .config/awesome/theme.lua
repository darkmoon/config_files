-------------------------------
-- "Brandnew" awesome theme  --
--      By Xu Xiaodong       --
-------------------------------

-- BASICS
theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#2B2B2B"
theme.bg_focus      = "#67B8CB"
theme.bg_urgent     = "#8BD2E4"

theme.fg_normal     = "#EFEFEF"
theme.fg_focus      = "#FFFFFF"
theme.fg_urgent     = "#FFFFFF"

theme.border_width  = "1"
theme.border_normal = "#171717"
theme.border_focus  = "#67B8CB"
theme.border_marked = "#91231C"

-- IMAGES
--theme.layout_dwindle    = "/usr/share/awesome/themes/default/layouts/dwindle.png"
--theme.layout_spiral     = "/usr/share/awesome/themes/default/layouts/spiral.png"
theme.layout_fairh      = "/usr/share/awesome/themes/default/layouts/fairhw.png"
theme.layout_fairv      = "/usr/share/awesome/themes/default/layouts/fairvw.png"
theme.layout_floating   = "/usr/share/awesome/themes/default/layouts/floatingw.png"
theme.layout_magnifier  = "/usr/share/awesome/themes/default/layouts/magnifierw.png"
theme.layout_max        = "/usr/share/awesome/themes/default/layouts/maxw.png"
theme.layout_fullscreen = "/usr/share/awesome/themes/default/layouts/fullscreenw.png"
theme.layout_tilebottom = "/usr/share/awesome/themes/default/layouts/tilebottomw.png"
theme.layout_tileleft   = "/usr/share/awesome/themes/default/layouts/tileleftw.png"
theme.layout_tile       = "/usr/share/awesome/themes/default/layouts/tilew.png"
theme.layout_tiletop    = "/usr/share/awesome/themes/default/layouts/tiletopw.png"

theme.awesome_icon           = "/usr/share/awesome/icons/awesome16.png"
theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/layouts/floating.png"

-- FROM DEFAULT FOR NOW...
theme.menu_submenu_icon     = "/usr/share/awesome/themes/default/submenu.png"
theme.taglist_squares_sel   = "/usr/share/awesome/themes/default/taglist/squarefw.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/default/taglist/squarew.png"

-- WALLPAPER
theme.wallpaper_cmd = { "awsetbg /home/dark/pics/wallpaper/pattern/dwood.jpg" }

-- MISC
theme.taglist_squares       = "true"
theme.titlebar_close_button = "true"
theme.menu_height           = "14"
theme.menu_width            = "100"

-- DEFINE THE IMAGE TO LOAD
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/default/titlebar/close_focus.png"

return theme
