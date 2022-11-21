# fused.nvim

> <a style="color: Yellow;">NOTE</a>: This plugin is under development i have yet to 
> implement other a lot of features but feel free to use it.

A 🌈 colorscheme fused between different color schemes

## lua
<img width="900" src="./assets/images/lua.png" alt="Screenshot" />

## js
<img width="900" src="./assets/images/js.png" alt="Screenshot" />

## css
<img width="900" src="./assets/images/css.png" alt="Screenshot" />

## html
<img width="900" src="./assets/images/html.png" alt="Screenshot" />

## Neorg
<img width="900" src="./assets/images/norg.png" alt="Screenshot" />
<img width="900" src="./assets/images/norg2.png" alt="Screenshot" />
<img width="900" src="./assets/images/norg3.png" alt="Screenshot" />

You can install this theme using any plugin manager you use:

Using Plug
```vim
Plug 'TheSafdarAwan/fused.nvim'
```
Using packer
```lua
use({ "TheSafdarAwan/fused" })
```

⚙️ Configuration:
```lua
require("fused").setup({
    -- currently only one flavour is available but Pr is welcome
    flavour = "dark",
    --[[
    Enable these plugins if not then set it to false or remove the whole table
    and set the plugins_integration to false.
    ]]
    plugins_integration = {
        -- @names of the plugins
        cmp = true,
        diffview = true,
        harpoon = true,
        indentblankline = true,
        lspsaga = true,
        neorg = true,
        nvimtree = true,
        telescope = true,
        todocomments = true,
        trouble = true,
        tsrainbow = true,
    },
    --[[
    add you highlights here by adding the highlight group name and providing a table for its
    Configuration
    ]]
    custom = {},
})
```

### custom highlights example
I have this autocmd which i got from the **Damian Conway** on vim to highlight line like the `:h colorcolumn`
but it only highlights it if it exceeds the 81 character limit.
```lua
create_autocmd({ "BufEnter" }, {
    group = autocmds_augroup,
    command = "call matchadd('DamianConway', '\\%80v')",
})
```
So to color this new group that I named `DamianConway` i can add the following
option inside the `fused.nvim` config.
```lua
require("fused").setup({
        ...
        custom = {
                DamianConway = { bg = "Gray" }
            }
    })
```

## TO-DO
- Add more flavors
- Add Highlights
  - Neogit
  - Diffview
  - Packer
  - cmp(add the remaining highlights)
  - vim-matchup
- Add the style option

## Contribution
Well i created this theme on my own. If you want to contribute the create a PR. I
would love that.
