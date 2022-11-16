local M = {}

M.setup = function(tbl)
    -- maybe in future will accept multiple flavours
    local flavour = require("fused.palletes").dark_pallete
    require("fused.groups").set(flavour)

    if tbl["enable_plugins"] then
        require("fused.groups").set_plugins(flavour)
    end
end

M.load_theme = function()
    -- maybe in future will accept multiple flavours
    local flavour = require("fused.palletes").dark_pallete
    require("fused.groups").set(flavour)
    require("fused.groups").set_plugins(flavour)
end
return M
