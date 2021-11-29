# (experimental) nvim-conventions

Highlight identifiers that aren't consistent with the language's naming
conventions. ✏️

**NOTE:** This is experimental at the moment and nowhere near complete. This is
just me toying with the idea.

# How do I use it?

Install with your favourite plugin manager, then in your treesitter highlights
configuration:

```lua
require'nvim-unconventional'

require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        custom_captures = {
            ["unconventional"] = "SpellBad", -- <-- highlight unconventional identifiers
        },
    },
    -- ...
}
````
