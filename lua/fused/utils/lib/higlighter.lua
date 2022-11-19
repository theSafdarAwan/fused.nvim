local vim = vim
local M = {}

M.set_hl = function(group, hls)
    vim.api.nvim_set_hl(0, group, hls)
end

-- @style return
M.style = function(str)
    local st = {}
    local styles_tbl = vim.split(str, ",", { plain = true, trimempty = true })
    for _, v in pairs(styles_tbl) do
        st[v] = true
    end
    return st
end

return M
