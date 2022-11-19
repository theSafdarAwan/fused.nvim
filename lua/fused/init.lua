local M = {}

local defaults = require("fused.utils").default_config

M.setup = function(tbl)
    local conf
    if tbl.flavour or tbl.plugins_integration then
        conf = tbl
    else
        conf = defaults
    end
    require("fused.utils").set_theme(conf)
end

M.load_theme = function()
    M.setup(defaults)
end

return M
