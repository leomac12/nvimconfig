return{

	{
		"ellisonleao/gruvbox.nvim", priority = 1000, config = function()
			vim.cmd("colorscheme gruvbox")
		end
	},

	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{"akinsho/toggleterm.nvim", version = "*", config = true},

	"folke/neodev.nvim",
	
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",

			"hrsh7th/cmp-nvim-lsp",
		},

	},

	{
		"nvim-treesitter/nvim-treesitter",
		build = "TSUpdate",
	},

	{
		"nvim-telescope/telescope.nvim",
		dependencies = {"nvim-lua/plenary.nvim"}
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = function()
			require("lualine").setup({
				icons_enable = true,
				theme = "onedark",
			})
		end,
	}
}
