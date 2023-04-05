--- Loads theme
local M = {}
--- Configuration for theme flavour.
---@table Default_Config
-- TODO: remove these private keys and do something else rather then polluting
-- the config table with private information.
--
---@private force_load_plugins boolean to force load plugins when loading theme
--- using command line.
---@private execute_hooks boolean to execute hooks. When theme flavour was changed after
--- the startup.
--- This can be used by user to reload modules or configs like status line, etc.

-- TODO: transparent background

local default_config = {
	use = "tokyonight-storm",
	settings = {
		---@type table there are four options available for setting globally.
		global = {
			---@type string global border style for all flavours. Has less precedence
			--- then the {flavour}.border_style
			border_style = "slim",
			---@type boolean enable italics for theme.
			italics = true,
			---@type boolean set background to transparent
			background_transparent = false,
			---@type boolean use the theme colors for the terminal colors
			terminal_colors = true,
		},
		---@type table setting for individual theme flavour there are
		["tokyonight-storm"] = {
			---@type string|table border style string for flavour or table with
			--- individual plugin border style.
			border_style = {
				["telescope.nvim"] = "slim",
			},
			---@type function|table override the default highlights if function should
			--- return a table
			---@param colors table colors table for the flavour
			hl_override = function(colors)
				return {
					["telescope.nvim"] = {},
					syntax = {},
					editor = {},
					lsp = {},
				}
			end,
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

	local flavour = require("fused.pallets." .. config.use)
	-- Export opts for latter use
	opts.colors = flavour.pallet -- flavour colors
	-- current flavour flavour settings
	--- FIX: currently i am just throwing this away enable this when you
	--- re-designed the structure of the config.
	-- local flavour_settings = config.settings[config.use] or {}
	local flavour_settings = {}
	-- TODO: after designing the setting hierarchy add the italics,
	-- background_transparent, etc. to opts and export them.
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
