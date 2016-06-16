--------------------------
-- Default luakit theme --
--------------------------

local theme = {}

-- Default settings
theme.font = "tewi normal 8"
theme.fg   = "#89816a"
theme.bg   = "#100f0d"

-- Genaral colours
theme.success_fg = "#5C3627"
theme.loaded_fg  = "#414E54"
theme.error_fg   = "#573627"
theme.error_bg   = "#100f0d"

-- Warning colours
theme.warning_fg = "#ca814c"
theme.warning_bg = "#100f0d"

-- Notification colours
theme.notif_fg = "#414E54"
theme.notif_bg = "#100f0d"

-- Menu colours
theme.menu_fg                   = "#89816a"
theme.menu_bg                   = "#100f0d"
theme.menu_selected_fg          = "#100f0d"
theme.menu_selected_bg          = "#44392f"
theme.menu_title_bg             = "#1b1b1b"
theme.menu_primary_title_fg     = "#414E54"
theme.menu_secondary_title_fg   = "#ca814c"

-- Proxy manager
theme.proxy_active_menu_fg      = '#000'
theme.proxy_active_menu_bg      = '#FFF'
theme.proxy_inactive_menu_fg    = '#888'
theme.proxy_inactive_menu_bg    = '#FFF'

-- Statusbar specific
theme.sbar_fg         = "#5c5044"
theme.sbar_bg         = "#100f0d"

-- Downloadbar specific
theme.dbar_fg         = "#44392f"
theme.dbar_bg         = "#100f0d"
theme.dbar_error_fg   = "#573627"

-- Input bar specific
theme.ibar_fg           = "#414E54"
theme.ibar_bg           = "#1b1b1b"

-- Tab label
theme.tab_fg            = "#89816a"
theme.tab_bg            = "#100f0d"
theme.tab_ntheme        = "#573627"
theme.selected_fg       = "#100f0d"
theme.selected_bg       = "#44392f"
theme.selected_ntheme   = "#ddd"
theme.loading_fg        = "#33AADD"
theme.loading_bg        = "#100f0d"

-- Trusted/untrusted ssl colours
theme.trust_fg          = "#5c5044"
theme.notrust_fg        = "#ca814c"

return theme
-- vim: et:sw=4:ts=8:sts=4:tw=80
