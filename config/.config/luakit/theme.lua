--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "tewi 8"
theme.fg   = "#020202"
theme.bg   = "#555555"

-- Genaral colours
theme.success_fg = "#d0d0d0"
theme.loaded_fg  = "#33AADD"
theme.error_fg = "#FFF"
theme.error_bg = "#101010"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = "#555555"
theme.menu_bg                   = "#040404"
theme.menu_selected_fg          = "#020202"
theme.menu_selected_bg          = "#5E468C"
theme.menu_title_bg             = "#020202"
theme.menu_primary_title_fg     = "#477AB3"
theme.menu_secondary_title_fg   = "#8C4665"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#888888"
theme.sbar_bg         = "#040404"

-- Downloadbar specific
theme.dbar_fg         = "#808080"
theme.dbar_bg         = "#101010"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#555555"
theme.ibar_bg           = "#101010"

-- Tab label
theme.tab_fg            = "#555555"
theme.tab_bg            = "#020202"
theme.tab_ntheme        = "#555555"
theme.selected_fg       = "#5E468C"
theme.selected_bg       = "#101010"
theme.selected_ntheme   = "#5E468C"
theme.loading_fg        = "#555555"
theme.loading_bg        = "#020202"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#287373"
theme.notrust_fg        = "#8C4665"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
