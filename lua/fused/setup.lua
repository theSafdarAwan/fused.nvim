---@diagnostic disable: param-type-mismatch
--- Loads theme
local M = {}
--- Configuration for theme flavour.
---@table Default_Config
---@private force_load_plugins boolean to force load plugins when loading theme
--- using command line.
---@private execute_hooks boolean to execute hooks. When theme flavour was changed after
--- the startup.
--- This can be used by user to reload modules or configs like status line, etc.

-- TODO: transparent background

local default_config = {
	flavour = "tokyonight-storm",
	settings = {
		global = {
			border_style = "slim", -- global border style individual plugin border style can be overridden in flavour settings
			italics = true,
			background_transparent = false,
		},
		["tokyonight-storm"] = {
			---@type table border style configuration for individual theme flavour.
			border_style = {
				["telescope.nvim"] = "bordered",
			},
			---@type function|table
			hl_override = {},
			---@type string set border type globally
			border_style = "slim", -- slim, bordered
			---@type boolean enable italics
			italics = true,
			terminal_colors = true,
			background_transparent = false,
		},
	},
	custom = {},
	plugins = {
		harpoon = true,
		neogit = true,
		neorg = true,
		["nvim-cmp"] = true,
		["nvim-navic"] = true,
		["nvim-notify"] = true,
		["noice.nvim"] = true,
		["neo-minimap"] = true,
		["nvim-treesitter"] = true,
		["diffview.nvim"] = true,
		["indent-blankline.nvim"] = true,
		["lspsaga.nvim"] = true,
		["nvim-web-devicons"] = true,
		["nvim-tree.lua"] = true,
		["telescope.nvim"] = true,
		["todo-comments.nvim"] = true,
		["trouble.nvim"] = true,
		["nvim-ts-rainbow2"] = true,
		["renamer.nvim"] = true,
	},
	force_load_plugins = false,
	execute_hooks = false,
}

--- loads flavour
---@param user_configuration table|nil configuration for the flavour.
function M.__setup(user_configuration)
	--- to export the opts like background_transparent, italics, etc.
	local opts = {}

	--- merge default_config and user_configuration
	local config = vim.tbl_deep_extend("force", default_config, user_configuration or {})

	local flavour = require("fused.pallets." .. config.flavour)
	-- current flavour flavour settings
	local flavour_settings = config.settings[config.flavour] or {}
	-- Export opts for latter use
	opts.colors = flavour.pallet -- flavour colors
	opts.background_transparent = config.background_transparent -- transparent background opt
	opts.italics = config.italics -- italic font
	opts.terminal_colors = config.terminal_colors -- enable terminal colors
	local override_hl_groups = flavour_settings.hl_override or {}
	-- if function then pass the colors pallet to it
	if type(override_hl_groups) == "function" then
		override_hl_groups = override_hl_groups(flavour.pallet)
	end
	opts.polish = function()
		local polished = flavour.polish and flavour.polish() or {}
		for group_name, group_val in pairs(override_hl_groups) do
			polished[group_name] = vim.tbl_deep_extend("force", polished[group_name], group_val)
		end
		polished = vim.tbl_deep_extend("force", polished, flavour_settings.hl_override or {})
		return polished
	end
	-- export the opts to the utils module for later easy access and usage.
	require("fused.utils").export_opts(opts)

	-- set normal highlights for editor, syntax, and lsp.
	require("fused.groups").load_builtins_hl()

	-- load highlights for the plugins
	if config.force_load_plugins or user_configuration and user_configuration.plugins then
		require("fused.groups").load_plugins_hl(config.plugins)
	end

	-- set highlights for custom groups set by user
	if config.custom then
		if type(config.custom) == "function" then
			config.custom = config.custom(opts.colors)
		end
		local hl = require("fused.utils").set_hl
		for hl_group_name, hl_opts in pairs(config.custom) do
			hl_group_name = tostring(hl_group_name)
			if hl_opts.styles then
				local styles = hl_opts.styles
				styles = require("fused.utils").format_styles(styles)
				hl_opts = vim.tbl_extend("force", hl_opts, styles)
				hl_opts.styles = nil
			end
			hl(hl_group_name, hl_opts)
		end
	end

	if config.execute_hooks then
		local hook_names = require("fused.utils").hooks_names
		for hook_name, _ in pairs(hook_names) do
			vim.cmd("do User " .. hook_name)
		end
	end
end

return M
