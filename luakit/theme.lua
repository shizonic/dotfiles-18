--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "Monofur 10"
theme.fg   = "#fff"
theme.bg   = "#101010"

-- Genaral colours
theme.success_fg = "#0f0"
theme.loaded_fg  = "#b1d631"
theme.error_fg = "#FFF"
theme.error_bg = "#161212"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = "#919191"
theme.menu_bg                   = "#101010"
theme.menu_selected_fg          = "#a5caef"
theme.menu_selected_bg          = "#101010"
theme.menu_title_bg             = "#101010"
theme.menu_primary_title_fg     = "#EA8484"
theme.menu_secondary_title_fg   = "#EA8484"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#87af5f"
theme.sbar_bg         = "#000"

-- Downloadbar specific
theme.dbar_fg         = "#fff"
theme.dbar_bg         = "#000"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#69b2b2"
theme.ibar_bg           = "#000"

-- Tab label
theme.tab_fg            = "#C0C0C0"
theme.tab_bg            = "#222"
theme.tab_ntheme        = "#C0C0C0"
theme.selected_fg       = "#a5caef"
theme.selected_bg       = "#151515"
theme.selected_ntheme   = "#a5caef"
theme.loading_fg        = "#33AADD"
theme.loading_bg        = "#000"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#0F0"
theme.notrust_fg        = "#F00"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
