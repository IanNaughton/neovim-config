-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
		"rebelot/kanagawa.nvim",
		as = 'kanagawa',
		config = function()
			vim.cmd('colorscheme kanagawa')
    end})
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use ('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})
	use ('nvim-treesitter/playground')
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},              -- Required
			{                                       -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'},  -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},                   -- Required
			{'hrsh7th/cmp-buffer'},                 -- Required
			{'hrsh7th/cmp-nvim-lsp'},               -- Required
			{'hrsh7th/cmp-nvim-lsp'},               -- Required
			{'hrsh7th/cmp-nvim-lua'},               -- Required
			{'saadparwaiz1/cmp_luasnip'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},                   -- Required
			{'rafamadriz/friendly-snippets'},
		}
	}
    use ('airblade/vim-gitgutter')
    --use ('vim-airline/vim-airline')
    --use ('vim-airline/vim-airline-themes')
end)
