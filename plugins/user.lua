return {
  { 'NeogitOrg/neogit', dependencies = 'nvim-lua/plenary.nvim', lazy=false },
  {
    'akinsho/git-conflict.nvim',
 version = "*", config = true, lazy=false},
 {
  'Equilibris/nx.nvim',
  requires = {
      'nvim-telescope/telescope.nvim',
  },
  config = function()
      require("nx").setup {

        -- Base command to run all other nx commands, some other values may be:
    -- - `npm nx`
    -- - `yarn nx`
    -- - `pnpm nx`
    nx_cmd_root = 'nx',

    -- Command running capabilities,
    -- see nx.m.command-runners for more details
    command_runner = require('nx.command-runners').terminal_cmd(),
    -- Form rendering capabilities,
    -- see nx.m.form-renderers for more detials
    form_renderer = require('nx.form-renderers').telescope(),

    -- Whether or not to load nx configuration,
    -- see nx.loading-and-reloading for more details
    read_init = true,
    require('nx.actions'),
    require('nx.read-configs').read_nx(),
require('nx.read-configs').read_workspace(),
require('nx.read-configs').read_package_json()  
      }
  end,
  lazy=false
},
{
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = function()
      require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
      })
  end,
  lazy=false
},
{
  "sindrets/diffview.nvim",
  lazy=false
},
{
  "L3MON4D3/LuaSnip",
  config = function(plugin, opts)
    require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
    require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
  end,
},
{ "rafamadriz/friendly-snippets", lazy=false }
  -- {

  --   "Pocco81/auto-save.nvim"
  --   ,lazy=false
  -- }
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
