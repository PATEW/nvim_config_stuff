require("lazy").setup({
-- lazy.nvim
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
},

	{
		"Shatur/neovim-ayu",
		lazy = false,
		mirage = true,
	},
    --Markdown preview
    --{ "iamcco/markdown-preview.nvim", build = "cd app && npm install", init = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, },
	-- Telescope
    {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},

    { "onsails/lspkind-nvim" },

	-- Treesitter
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},

	-- Rose Pine color scheme
	{ 'rose-pine/neovim', as = 'rose-pine' },

    -- Gruvbox color scheme
    { "ellisonleao/gruvbox.nvim" },

	-- Harpoon
	{'theprimeagen/harpoon'},

	-- Undotree
	{'mbbill/undotree'},

	-- Vim Fugitive
	{'tpope/vim-fugitive'},

    {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "hrsh7th/cmp-cmdline" },
			{ "saadparwaiz1/cmp_luasnip" },
		},
	},

	{ "L3MON4D3/LuaSnip", dependencies = {
		"saadparwaiz1/cmp_luasnip",
	} },

    -- Lua Status Line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
    },

    -- Cool Greeting
    {'goolord/alpha-nvim'},

    -- LSP Status
    {'nvim-lua/lsp-status.nvim'},

    -- Nerdtree file explorer
    {'preservim/nerdtree'},

    -- Auto rustfmt
    {'rust-lang/rust.vim'},
 })
