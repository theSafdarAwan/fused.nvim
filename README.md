# fused.nvim

🌈 Colorscheme collection fused between different color schemes

You can install this theme using any plugin manager you use:

Using Plug

```vim
Plug 'TheSafdarAwan/fused.nvim'
```

Using packer

```lua
use({ "TheSafdarAwan/fused" })
```
### ⚙️ Configuration:

```lua
require("fused").setup({
        -- currently only two flavour's are available but Pr is welcome
        flavour = "catppuccin", -- dark | catppuccin
        -- set the background to transparent default false
        -- transparent background is not recommended for this color scheme
        bg_transparent = false,
        -- if you want to disable italics then set this to false
        italics = true, -- default true
        --[[
        Enable these plugins if not then set it to false or remove the whole table
        and set the plugins_integration to false.
        ]]
        plugins_integration = {
            -- @names of the plguins
            cmp = true,
            diffview = true,
            harpoon = true,
            neogit = true,
            indentblankline = true,
            lspsaga = true,
            neorg = true,
            devicons = true,
            nvimtree = true,
            telescope = true,
            todocomments = true,
            trouble = true,
            renamer = true,
            tsrainbow = true,
        },
        custom = {
            --[[
                Add you custom highlights here by adding the highlight group name as key and providing a table as its value for its
                    Configuration.
            ]]
        },
})
```

### custom highlights example

```lua
require("fused").setup({
        custom = {
            --[[ You can specify the setting for the highlight groups same as you
            would using the `vim.api.nvim_set_hl` function. ]]

            --[[ This LineNr group highlights the line numbers you can change it to
            whatever you wan't.
            But don't do it like here i am doing it's just an example. ]]
            LineNr = { fg = "Red", bg = "Gray", italic = true, bold = false},
            -- examples
            Foo = { bg = "Gray" }
            Bar = { fg = "Red", bold = true, italic = false }
        }
    })
```

## ⚙️ Font's Configuration:

I am using two font's `Victor Mono Nerd Font` for italic's font and `FiraCode Nerd Font` for normal font.

#### wezterm

I use [wezterm](https://github.com/wez/wezterm/) terminal so here is my configuration

<details>
<summary>Click to Expand</summary>

```lua
-- add these variables and function on top of wezterm.lua
local italic_font = "Victor Mono Nerd Font"
local normal_font = "FiraCode Nerd Font"
local default_font_name = normal_font
local function font_with_fallback(name, params)
    local names = { name, "Apple Color Emoji", "azuki_font" }
    return font_with_fallback(names, params)
end

return {
    -- Add this into your wezterm config
    font_size = 10.0,
    font = font_with_fallback(default_font_name),
    font_rules = {
        {
            italic = true,
            font = font_with_fallback(italic_font, { italic = true }),
        },
        {
            italic = true,
            intensity = "Bold",
            font = font_with_fallback(
                italic_font,
                { italic = true, bold = true }
            ),
        },
        {
            italic = false,
            intensity = "Normal",
            font = font_with_fallback(
                default_font_name,
                { weight = "Regular", italic = false }
            ),
        },
    },
}
```

</details>
