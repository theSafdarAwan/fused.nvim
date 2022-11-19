local M = {}

M.setup = function(tbl)
    -- maybe in future will accept multiple flavours
    local flavour = tbl["flavour"] or "dark"
    local pallete = require("fused.pallets." .. flavour).pallete

    require("fused.groups").set(pallete)

    if tbl["enable_plugins"] then
        require("fused.groups").set_plugins(pallete)
    end
end

M.load_theme = function()
    -- maybe in future will accept multiple flavours
    local flavour = require("fused.pallets").dark
    require("fused.groups").set(flavour)
    require("fused.groups").set_plugins(flavour)
end
return M
