local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
        vim.fn.system({
                "git",
                "clone",
                "--filter=blob:none",
                "https://github.com/folke/lazy.nvim.git",
                "--branch=stable", -- latest stable release
                lazypath,
        })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup({
        {
                "rebelot/kanagawa.nvim",
                config = function()
                        vim.cmd([[colorscheme kanagawa]])
                end,
        },

        "nvim-treesitter/nvim-treesitter",
        'nvim-tree/nvim-tree.lua',
        'nvim-tree/nvim-web-devicons',
        'akinsho/toggleterm.nvim',
        'mbbill/undotree',
        'ervandew/supertab',
        'numToStr/Comment.nvim',
        'lukas-reineke/indent-blankline.nvim',

        'junegunn/fzf',
        'junegunn/fzf.vim',

        {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
        {'neovim/nvim-lspconfig'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/nvim-cmp'},
        {'L3MON4D3/LuaSnip'},
})

require("astre")
