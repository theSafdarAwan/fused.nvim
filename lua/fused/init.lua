local M = {}

M.setup = function(ok)
    require("fused.groups").set()

    if ok == true then
        require("fused.groups").set_plugins()
    end
end
return M
