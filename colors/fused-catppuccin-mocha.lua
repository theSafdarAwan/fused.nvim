vim.cmd("hi clear")

if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.termguicolors = true

require("fused").setup({
	use = "catppuccin-mocha",
	force_load_plugins = true,
	execute_hooks = true,
})
