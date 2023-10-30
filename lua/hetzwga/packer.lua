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
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')

    use({ 'folke/tokyonight.nvim', as = 'tokyonight' })
    vim.cmd('colorscheme tokyonight')

    use { "catppuccin/nvim", as = "catppuccin" }
    vim.cmd('colorscheme catppuccin')

    use({ 'artanikin/vim-synthwave84', as = 'synthwave84' })
    vim.cmd('colorscheme synthwave84')


    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('github/copilot.vim')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
    use 'mfussenegger/nvim-jdtls'
    use 'nvim-tree/nvim-web-devicons'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use{
       'tpope/vim-commentary'
    }
    use{
       'windwp/nvim-ts-autotag'
    }
    use{
       'tpope/vim-surround'
    }
    use{
       'prichrd/netrw.nvim'
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use{
        'ThePrimeagen/vim-be-good'
    }

    require('packer').use { 'mhartington/formatter.nvim' }
end)
