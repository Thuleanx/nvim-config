-- Put this somewhere near lsp_status.register_progress()
local lsp_status = require("lsp-status")
lsp_status.config({
    status_symbol = "",
    indicator_errors = '',
    indicator_warnings = '',
    indicator_info = '',
    indicator_hint = '',
    indicator_ok = '',
    indicator_separator = " ",
    component_separator = " ",
})
