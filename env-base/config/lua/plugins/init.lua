return require'packer'.startup(function()
	use 'wbthomason/packer.nvim'
	use 'ellisonleao/gruvbox.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
	use 'https://github.com/tpope/vim-fugitive.git'

	use {
		'junegunn/fzf',
		'junegunn/fzf.vim'
	}

	use {
		'preservim/nerdtree',
		'Xuyuanp/nerdtree-git-plugin',
		'ryanoasis/vim-devicons'
	}

	use {
		'neovim/nvim-lspconfig',
		config = function() require'plugins/lsp-config' end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		config = function() require'plugins/tree-sitter' end
		run = ':TSUpdate',
	}
end)
