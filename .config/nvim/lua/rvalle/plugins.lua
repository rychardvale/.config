vim.cmd([[ packadd packer.nvim ]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-treesitter/nvim-treesitter")

	use("NvChad/nvim-colorizer.lua")
	use("folke/tokyonight.nvim")
	use("morhetz/gruvbox")
	use("neovim/nvim-lspconfig")
	use("onsails/lspkind.nvim")
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	})

	-- status line
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	})
	use("williamboman/mason-lspconfig.nvim")

	--cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-cmdline")

	--snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use("jose-elias-alvarez/null-ls.nvim")
	use("windwp/nvim-ts-autotag")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	})
	use({
		"akinsho/bufferline.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("ahmedkhalf/project.nvim")
	use("nvim-telescope/telescope-project.nvim")

	use("numToStr/Comment.nvim")
	use({
		"lewis6991/gitsigns.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("gitsigns").setup()
		end,
	})
	use("tpope/vim-fugitive")
	use("ThePrimeagen/harpoon")
end)
