# fused.nvim

🌈 Colorscheme collection fused between different color schemes.

Flavours: `tokyonight-storm` (default) and `catppuccin-mocha`. Use them as normal colorschemes:
`:colorscheme fused-tokyonight-storm` or `:colorscheme fused-catppuccin-mocha`.

## Install (lazy.nvim)

```lua
{
  "TheSafdarAwan/fused.nvim",
  lazy = true, -- loaded by `:colorscheme fused-...`
  opts = {
    apply = false, -- only store the options, `:colorscheme` applies the theme
    italics = true,
    -- settings = { ["tokyonight-storm"] = { hl_override = { ... } } },
  },
}
```

Without lazy.nvim call `require("fused").setup({ ... })` and then `:colorscheme fused-tokyonight-storm`.
`setup()` applies the theme on its own unless you pass `apply = false`.

## Options

| option | default | |
|---|---|---|
| `flavour` | `"tokyonight-storm"` | flavour used by `setup()` |
| `apply` | `true` | `false`: `setup()` only stores the options |
| `italics` | `true` | italic comments, keywords, parameters |
| `background_transparent` | `false` | `Normal`, `NormalNC` and the sign column get no background |
| `terminal_colors` | `true` | set `g:terminal_color_*` |
| `plugins` | list of supported plugins | `{ ["telescope.nvim"] = false }` turns one off, `false` loads none up front (see `load_plugin`) |
| `custom` | `{}` | table, or `function(colors) return {...} end`, of extra highlight groups |
| `settings[flavour].hl_override` | `{}` | per plugin (or `builtins`) overrides: `{ ["telescope.nvim"] = { TelescopeNormal = { bg = "#101010" } } }` |
| `execute_hooks` | `false` | run the hooks of `add_hooks` (they always run for `:colorscheme`) |

`custom` accepts `styles = "bold,noitalic"` in a group: `{ MyGroup = { fg = colors.base11, styles = "bold" } }`.

## Lua API

```lua
require("fused").setup(opts)             -- store options (and apply, see `apply`)
require("fused").colorscheme("tokyonight-storm") -- what `:colorscheme fused-...` runs
require("fused").load_plugin("telescope.nvim")   -- style one plugin (use with plugins = false)
require("fused").add_hooks({ name = function() end }) -- run after a theme was loaded
require("fused").get_config()
```

`:colorscheme fused-<flavour>` always uses the options you gave to `setup()`.
`g:colors_name` is `fused-<flavour>`.

## Supported plugins

harpoon, neogit, neorg, nvim-cmp, nvim-navic, nvim-notify, noice.nvim, neo-minimap,
nvim-treesitter, diffview.nvim, indent-blankline.nvim (v2 and v3), lspsaga.nvim,
nvim-web-devicons, nvim-tree.lua, telescope.nvim, todo-comments.nvim, trouble.nvim,
nvim-ts-rainbow2, rainbow-delimiters.nvim, renamer.nvim.

Treesitter groups are defined with the old names (`@field`, `@text.strong`, `@include`, ...)
and automatically also with the names Neovim 0.10+ and the current nvim-treesitter use
(`@variable.member`, `@markup.strong`, `@keyword.import`, ...), see `lua/fused/groups/aliases.lua`.

## Notes

- Custom treesitter queries live in `after/queries/` and use the `@fused_*` captures
  (css units, html tags, js constructors, c include paths).
- To add a flavour create `lua/fused/pallets/<name>.lua` (a `pallet` table with `base01`..`base25`
  and an optional `polish()` function) and `colors/fused-<name>.lua` that calls
  `require("fused").colorscheme("<name>")`.
