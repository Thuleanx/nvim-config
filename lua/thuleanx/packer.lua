-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

local packer = require("packer")
packer.init({
	max_jobs = 10,
	display = {
		non_interactive = false, -- If true, disable display windows for all operations
		compact = false, -- If true, fold updates results by default
		open_fn = nil, -- An optional function to open a window for packer's display
		open_cmd = "65vnew \\[packer\\]", -- An optional command to open a window for packer's display
		working_sym = "I", -- The symbol for a plugin being installed/updated
		error_sym = "✗", -- The symbol for a plugin with an error in installation/updating
		done_sym = "✓", -- The symbol for a plugin which has completed installation/updating
		removed_sym = "-", -- The symbol for an unused plugin which was removed
		moved_sym = "→", -- The symbol for a plugin which was moved (e.g. from opt to start)
		header_sym = "━", -- The symbol for the header line in packer's display
		show_all_info = true, -- Should packer show all update details automatically?
		prompt_border = "double", -- Border style of prompt popups.
		keybindings = { -- Keybindings for the display window
			quit = "q",
			toggle_update = "u", -- only in preview
			continue = "c", -- only in preview
			toggle_info = "<CR>",
			diff = "d",
			prompt_revert = "r",
		},
	},
})

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Magic parser
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- For creating / managing telescope projects
	use({
		"nvim-telescope/telescope-project.nvim",
		requires = { "nvim-telescope/telescope-file-browser.nvim", opt = true },
	})

	-- To display a list of commands on the fly
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- Color theme
	use("rebelot/kanagawa.nvim")

	-- For code coloring
	use({
		"nvim-treesitter/nvim-treesitter",
		{ run = ":TSUpdate" },
	})

	-- Quick way to jump around
	use("nvim-lua/plenary.nvim")
	use("ThePrimeagen/harpoon")

	-- Displays a tree of undos
	use("mbbill/undotree")

	-- Quick LSP configuration
	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment the two plugins below if you want to manage the language servers from neovim
			-- {'williamboman/mason.nvim'},
			-- {'williamboman/mason-lspconfig.nvim'},

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/vim-vsnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	-- For installing LSPs
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- For powerline on the bottom of the screen
	use({
		"nvim-lualine/lualine.nvim",
		requires = {
			{
				"kyazdani42/nvim-web-devicons",
			},
			{
				"ryanoasis/vim-devicons",
			},
			{
				"nvim-lua/lsp-status.nvim",
			},
		},
	})

	-- To outline symbols on the side
	use("simrat39/symbols-outline.nvim")

	-- To hit gcc to toggle comment
	use("tpope/vim-commentary")

	-- For visualizing indentation
	use("lukas-reineke/indent-blankline.nvim")

	-- For saving sessions and resuming after quitting out of nvim
	use({
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		module = "persistence",
	})

	-- For interacting with git commands with a GUI
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- For formatting
	use({
		"stevearc/conform.nvim",
	})

	use("camspiers/animate.vim")
	use("camspiers/lens.vim")

	use("gen740/SmoothCursor.nvim")

	use({
		"gelguy/wilder.nvim",
	})

	use("petertriho/nvim-scrollbar")
	use("itchyny/calendar.vim")

	-- packer
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

    use('simrat39/rust-tools.nvim')
end)
