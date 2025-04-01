require("lazy").setup({
	{ 'phaazon/hop.nvim' },
	--{'navarasu/onedark.nvim'},
    --{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    {"rebelot/kanagawa.nvim"},
	{'nvim-lualine/lualine.nvim'},
    {'MeanderingProgrammer/render-markdown.nvim'},
{
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
	}
   },
{ 'nvim-treesitter/nvim-treesitter' },

{
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
{
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
},
{'akinsho/bufferline.nvim', 
version = "*", 
dependencies = 'nvim-tree/nvim-web-devicons'},
{ 'terrortylor/nvim-comment' },
{'norcalli/nvim-colorizer.lua'},
{  'nvimdev/dashboard-nvim',
 event = 'VimEnter',
 dependencies = { {'nvim-tree/nvim-web-devicons'}}
},
{
  'folke/todo-comments.nvim',
  dependencies = { "nvim-lua/plenary.nvim" }
},
{
    'neovim/nvim-lspconfig'
},
{'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'}, {'hrsh7th/nvim-cmp'},  {'lewis6991/gitsigns.nvim'}, {'hrsh7th/cmp-vsnip'},
{
    "williamboman/mason.nvim"
},
{
  'hrsh7th/vim-vsnip',
  dependencies = { 'hrsh7th/nvim-cmp' },
},
})

-- Theme 
-- require('onedark').load()

--Colorizer
require'colorizer'.setup()


