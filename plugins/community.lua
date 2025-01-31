return { -- Add the community repository of plugin specifications
"AstroNvim/astrocommunity", -- example of imporing a plugin, comment out to use it or add your own
-- available plugins can be found at https://github.com/AstroNvim/astrocommunity
-- { import = "astrocommunity.colorscheme.catppuccin" },
-- { import = "astrocommunity.completion.copilot-lua-cmp" },
{
    import = "astrocommunity.pack.typescript"
}, {
    import = "astrocommunity.colorscheme.tokyonight-nvim"
}, {
    import = "astrocommunity.bars-and-lines.bufferline-nvim"
}, {
    import = "astrocommunity.bars-and-lines.feline-nvim"
}, {
    import = "astrocommunity.completion.copilot-lua-cmp"
},
{
    import = "astrocommunity.pack.ruby"
}
}
