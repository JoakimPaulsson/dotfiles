return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'neovim/nvim-lspconfig'

    -- Lua development
    use { 'nvim-lua/completion-nvim' }
    use { 'tjdevries/nlua.nvim' }

    use { 'ms-jpq/coq_nvim', branch = 'coq' }
    use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
    use { 'ms-jpq/coq.thirdparty', branch = '3p' }

    use 'shaunsingh/nord.nvim'

end)
