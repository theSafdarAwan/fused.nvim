local M = {}

M.setup = function(ok)
    -- for the moment do it hardocore value but in future will be accepted from
    -- setup config
    local flavour = require("fused.palletes").dark_pallete
    require("fused.groups").set(flavour)

    if ok then
        require("fused.groups").set_plugins(flavour)
    end
end
return M
