--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "tewi 8"
theme.fg   = "#002b36"
theme.bg   = "#839496"

-- Genaral colours
theme.success_fg = "#d0d0d0"
theme.loaded_fg  = "#33AADD"
theme.error_fg = "#FFF"
theme.error_bg = "#073642"

-- Warning colours
theme.warning_fg = "#F00"
theme.warning_bg = "#FFF"

-- Notification colours
theme.notif_fg = "#444"
theme.notif_bg = "#FFF"

-- Menu colours
theme.menu_fg                   = "#839496"
theme.menu_bg                   = "#073642"
theme.menu_selected_fg          = "#002b36"
theme.menu_selected_bg          = "#b58900"
theme.menu_title_bg             = "#002b36"
theme.menu_primary_title_fg     = "#268bd2"
theme.menu_secondary_title_fg   = "#dc322f"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#839496"
theme.sbar_bg         = "#073642"

-- Downloadbar specific
theme.dbar_fg         = "#808080"
theme.dbar_bg         = "#073642"
theme.dbar_error_fg   = "#F00"

-- Input bar specific
theme.ibar_fg           = "#839496"
theme.ibar_bg           = "#073642"

-- Tab label
theme.tab_fg            = "#839496"
theme.tab_bg            = "#002b36"
theme.tab_ntheme        = "#839496"
theme.selected_fg       = "#b58900"
theme.selected_bg       = "#073642"
theme.selected_ntheme   = "#839496"
theme.loading_fg        = "#839496"
theme.loading_bg        = "#002b36"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#859900"
theme.notrust_fg        = "#cb4b16"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
