--- Loads theme
local M = {}

--- Configuration for theme flavour.
---@table Default_Config
---@field flavour string name of the theme flavour.
---@field apply boolean `false` to only store the configuration in `setup()` and not apply
--- the theme yet. It is then applied by `:colorscheme fused-<flavour>`.
---@field settings table With flavour name as key. `{ hl_override = { ["telescope.nvim"] = { TelescopeNormal = {...} } } }`
---@field italics boolean to enable or disable italic font.
---@field background_transparent boolean to enable or disable transparent background.
---@field terminal_colors boolean to enable terminal colors highlights.
---@field custom table|function returns table of custom highlight groups.
---@field plugins table|false of plugin names (name = boolean). Accepts full
-- names of the plugins. If plugin name includes characters like `.` or `-` then
-- use the string key like `["nvim-tree.lua"] = true`. Set to `false` to load no plugin
-- highlights up front and use `require("fused").load_plugin(name)` in the plugin config.
---@field execute_hooks boolean to execute the hooks (see `add_hooks`) after loading.

local default_config = {
	flavour = "tokyonight-storm",
	apply = true,
	settings = {
		["tokyonight-storm"] = {
			border = {
				["telescope.nvim"] = false, -- slim, bordered
				builtins = true,
			},
			hl_override = {},
		},
	},
	border = false,
	italics = true,
	terminal_colors = true,
	background_transparent = false,
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
		["rainbow-delimiters.nvim"] = true,
		["renamer.nvim"] = true,
	},
	execute_hooks = false,
}

M.default_config = default_config

--- names of the flavours that exist
M.flavours = { "tokyonight-storm", "catppuccin-mocha" }

--- loads flavour
---@param user_configuration table|nil configuration for the flavour.
---@return string|nil name of the flavour that was loaded.
function M.__setup(user_configuration)
	--- to export the opts like background_transparent, italics, etc.
	local opts = {}

	--- merge default_config and user_configuration
	local config = vim.tbl_deep_extend("force", default_config, user_configuration or {})

	local ok, flavour = pcall(require, "fused.pallets." .. tostring(config.flavour))
	if not ok then
		vim.notify(
			("fused.nvim: could not load flavour %q (available: %s)\n%s"):format(
				tostring(config.flavour),
				table.concat(M.flavours, ", "),
				tostring(flavour)
			),
			vim.log.levels.ERROR
		)
		return nil
	end
	-- current flavour flavour settings
	local flavour_settings = config.settings[config.flavour] or {}
	local override_hl_groups = flavour_settings.hl_override or {}

	-- Export opts for latter use
	opts.colors = flavour.pallet -- flavour colors
	opts.background_transparent = config.background_transparent -- transparent background opt
	opts.italics = config.italics -- italic font
	opts.terminal_colors = config.terminal_colors -- enable terminal colors
	opts.global_border = config.border -- global border
	opts.local_border = flavour_settings.border or {} -- border local to plugin

	-- The polished groups of the flavour with the groups from `hl_override` on top. It is built
	-- once for every load because the group modules ask for it again and again.
	local polished
	opts.polish = function()
		if not polished then
			polished = flavour.polish and flavour.polish() or {}
			for group_name, group_val in pairs(override_hl_groups) do
				polished[group_name] = vim.tbl_deep_extend("force", polished[group_name] or {}, group_val)
			end
		end
		return polished
	end

	-- export the opts to the utils module for later easy access and usage.
	local utils = require("fused.utils")
	utils.export_opts(opts)

	-- set normal highlights for editor, syntax, and lsp.
	require("fused.groups").load_builtins_hl()

	-- load highlights for the plugins: the ones listed in `plugins` and the ones that asked
	-- for them with `require("fused").load_plugin()`.
	local plugins_to_load = {}
	if type(config.plugins) == "table" then
		plugins_to_load = vim.deepcopy(config.plugins)
	end
	for name in pairs(utils.requested_plugins) do
		plugins_to_load[name] = true
	end
	if next(plugins_to_load) then
		require("fused.groups").load_plugins_hl(plugins_to_load)
	end

	-- set highlights for custom groups set by user
	if config.custom then
		local custom = config.custom
		if type(custom) == "function" then
			custom = custom(opts.colors)
		end
		for hl_group_name, hl_opts in pairs(custom or {}) do
			hl_group_name = tostring(hl_group_name)
			if hl_opts.styles then
				local styles = utils.format_styles(hl_opts.styles)
				hl_opts = vim.tbl_extend("force", hl_opts, styles)
				hl_opts.styles = nil
			end
			utils.set_hl(hl_group_name, hl_opts)
		end
	end

	if config.execute_hooks then
		for hook_name, _ in pairs(utils.hooks_names) do
			vim.api.nvim_exec_autocmds("User", { pattern = hook_name })
		end
	end

	return config.flavour
end

return M
