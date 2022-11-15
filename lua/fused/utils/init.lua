local M = {}
M.get = function(group, hls)
    vim.api.nvim_set_hl(0, group, hls)
end

return M
