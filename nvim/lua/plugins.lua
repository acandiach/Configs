vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
  ]])

  vim.cmd [[packadd packer.nvim]]

  return require('packer').startup(function()

  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

  -- Sintaxis
    use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
    }

    --use 'sheerun/vim-polyglot'

    use "nvim-treesitter/playground"

    -- Colors
    use 'norcalli/nvim-colorizer.lua'

    --Autocomplete with LSP
    use {
      'VonHeikemen/lsp-zero.nvim',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
      }
    }

    --Tabnine
    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}

  --Zen Mode
    use("folke/zen-mode.nvim")

    --View Changes of the document in tree
    use('mbbill/undotree')

  -- HTML Tags
    use 'mattn/emmet-vim'

  -- Mark the Indentation
    use {'lukas-reineke/indent-blankline.nvim'}

  -- Tree Navigation
    use {'kyazdani42/nvim-tree.lua',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

  --Multicursor
  use {'mg979/vim-visual-multi', branch= 'master'}

  -- Tmux navigator
    use 'christoomey/vim-tmux-navigator'

  -- Themes
    use "sainnhe/gruvbox-material"
    use "joshdick/onedark.vim"
    use 'folke/tokyonight.nvim'
    use {'kaicataldo/material.vim', branch= 'main'}

  -- GIT
    use "lewis6991/gitsigns.nvim"
    use "tpope/vim-fugitive"

  -- Status Bar
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

  -- Vim Transparency
    --use 'tribela/vim-transparent'

  -- Autocomplete Parentheses and Quotes
    use 'jiangmiao/auto-pairs'
    use 'alvan/vim-closetag'

  -- Place Quotes and Parentheses to selected text 
    use "tpope/vim-surround"

  -- Comment
    use "aluriak/nerdcommenter"

  -- Buffer Bar
    use {'akinsho/bufferline.nvim',
      tag = "*", requires = 'kyazdani42/nvim-web-devicons'
    }
end
)
