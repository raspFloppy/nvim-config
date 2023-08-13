vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

require('packer').startup(function(use)

    
    -----------------------
    --  SYSTEM SETTINGS  --    
    -----------------------
    use 'wbthomason/packer.nvim'            --- package mananger
    use 'neovim/nvim-lspconfig'             --- lsp config
    use 'williamboman/nvim-lsp-installer'   --- lsp server installer
    use {'akinsho/toggleterm.nvim', tag = '*', config = function() require("toggleterm").setup() end}
    use({ "Pocco81/auto-save.nvim", config = function() require("auto-save").setup { } end, })


    -------------------
    --  FILE SEARCH  --
    -------------------
    use 'nvim-lua/plenary.nvim' 
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'ms-jpq/chadtree'
    
    
    -------------------------
    --  CODE AUTOCOMPLETE  --
    -------------------------
    use 'mg979/vim-visual-multi'   
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use 'github/copilot.vim'
    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'


    ---------------------
    --  USER INTERFACE --
    ---------------------
    use 'ntk148v/vim-horizon'
    use 'nvim-tree/nvim-web-devicons'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}


    ---------------------
    -- EXTERNAL TOOLS  --
    ---------------------
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })


end)


