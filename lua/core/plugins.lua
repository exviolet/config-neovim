require("lazy").setup({
	{ "phaazon/hop.nvim" },
	--{'navarasu/onedark.nvim'},
	--{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
	{ "rebelot/kanagawa.nvim" },
	{ "nvim-lualine/lualine.nvim" },
	{ "MeanderingProgrammer/render-markdown.nvim" },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"s1n7ax/nvim-window-picker",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		config = function(plugin)
			vim.opt.rtp:prepend(plugin.dir .. "/runtime")
			require("nvim-treesitter").setup({
				ensure_installed = {
					"typescript", "tsx", "javascript", "html", "css", "scss",
					"json", "jsonc", "yaml", "toml",
					"lua", "python", "bash",
					"markdown", "markdown_inline",
					"vim", "vimdoc", "query", "regex",
					"gitcommit", "gitignore", "diff",
					"dockerfile", "sql",
				},
				auto_install = true,
			})
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "*",
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{ "terrortylor/nvim-comment" },
	{ "norcalli/nvim-colorizer.lua" },
	{ "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { { "nvim-tree/nvim-web-devicons" } } },
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"neovim/nvim-lspconfig",
	},
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "lewis6991/gitsigns.nvim" },
	{ "hrsh7th/cmp-vsnip" },
	{
		"williamboman/mason.nvim",
	},
	{
		"hrsh7th/vim-vsnip",
		dependencies = { "hrsh7th/nvim-cmp" },
	},
	{
		"numToStr/Comment.nvim",
	},
	{
		"windwp/nvim-ts-autotag",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},

	{
		"allaman/emoji.nvim",
		version = "1.0.0", -- optionally pin to a tag
		ft = "markdown", -- adjust to your needs
		dependencies = {
			-- util for handling paths
			"nvim-lua/plenary.nvim",
			-- optional for nvim-cmp integration
			"hrsh7th/nvim-cmp",
			-- optional for telescope integration
			"nvim-telescope/telescope.nvim",
			-- optional for fzf-lua integration via vim.ui.select
			"ibhagwan/fzf-lua",
		},
		opts = {
			-- default is false, also needed for blink.cmp integration!
			enable_cmp_integration = true,
		},
		config = function(_, opts)
			require("emoji").setup(opts)
			-- optional for telescope integration
			local ts = require("telescope").load_extension("emoji")
			vim.keymap.set("n", "<leader>se", ts.emoji, { desc = "[S]earch [E]moji" })
		end,
	},
	require("plugins.formatting"),
})

--Theme
-- require('onedark').load()

--Colorizer
require("colorizer").setup()

--Comment
require("Comment").setup()

require("fzf-lua").register_ui_select()

-- require("emoji").insert()
