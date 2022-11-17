vim.g.colors_name = "fused"

vim.cmd("hi clear")

-- Remove all existing highlighting and set the defaults.
require("fused").load_theme()
