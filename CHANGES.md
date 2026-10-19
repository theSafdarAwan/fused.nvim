# Fixes

**Crashes / errors**
- `hl_override` for a plugin that the flavour's `polish()` has no entry for raised
  `bad argument #2 to tbl_deep_extend: expected table, got nil`.
- A plugin name in `plugins` without a group file (for example a typo, or `rainbow-delimiters.nvim`) crashed the
  whole theme; it is now skipped with one warning. The `..`/`or` precedence in the `require` was wrong as well.
- `load_plugin()` before the theme had loaded failed in `vim.schedule`; the request is now remembered.

**Settings ignored**
- `colors/*.lua` called `setup()` again with only the flavour, so every option given to `setup()` (italics, hl_override,
  custom, transparency, plugins ...) was dropped for `:colorscheme`. The options are stored now.
- `setup({})` (no `plugins` key) loaded no plugin highlights because of `force_load_plugins or user.plugins`.
- `format_styles`: `"bold, italic"` was not trimmed and every style containing `no` (also `nocombine`) was inverted.

**Wrong or missing colors**
- Undefined palette keys: `base011`, `cyan10` (terminal colors 0 and 14), `base` (Cursor, EndOfBuffer, Error, Todo),
  `base102` (cmp Copilot), `cyan` (devicons Dockerfile), `base24`/`base25` (mocha), `base26` (storm).
- `terminal_color_0` was set to `true` with a transparent background.
- The `Whitespace` group was named `space`.
- Treesitter groups `@function.builtins`, `@variable.builtins`, `@type.builtins`, `@constant.builtins` (plural) never matched.
- The old treesitter capture names no longer match Neovim 0.10+; the new names are generated (`groups/aliases.lua`).
- `@lsp.type.*` links pointed at old names or at the group `@structure` that does not exist.
- Missing base groups: `DiagnosticError/Warn/Info/Hint/Ok`, `Underlined`, `DiffText`, `FloatTitle`, `WinBarNC`, `LspInlayHint`.
- The `@fused_css.*` / `@fused_html.*` captures of the custom queries had no highlight; the JS query colored every
  class method as constructor.
- `colors/*.lua` did not set `g:colors_name` or `background`, and `vim.fn.exists("syntax_on")` (0 is true in Lua) always reset syntax.
- Linking a plugin group to a builtin group stripped the italics from the shared table, so later groups lost them too.
- `IndentBlankline*` groups only existed for v2; added `Ibl*` for v3. Added `RainbowDelimiter*`.
- The noice groups were linked to a group named `none`.

**Housekeeping**
- Removed the stray `lua/todo.norg`, fixed comments that a search and replace had damaged,
  `polish()` is built once per load instead of once per group file.
