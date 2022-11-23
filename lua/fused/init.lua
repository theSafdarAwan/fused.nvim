local M = {}

local defaults = require("fused.utils").default_config

M.setup = function(tbl)
    if tbl then
        local conf
        if tbl.flavour or tbl.plugins_integration or tbl.custom then
            conf = tbl
        else
            conf = defaults
        end
        require("fused.utils").set_theme(conf)
    end
end

M.load_theme = function()
    M.setup(defaults)
end

return M
