local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    max_jobs = 50,
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
        prompt_border = "rounded", -- Border style of prompt popups.
    },
}

return packer.startup(function(use)
    -- Packer itself
    use('wbthomason/packer.nvim')

    -- Plenary
    use('nvim-lua/plenary.nvim')

    -- File Explorer
    use({
        'kyazdani42/nvim-tree.lua',
        event = 'CursorHold',
        config = function()
            require('plugins.nvim-tree')
        end
    })

    -- Icons
    use('kyazdani42/nvim-web-devicons')

    --ColorScheme
    use('joshdick/onedark.vim')
    use('folke/tokyonight.nvim')
    use('rmehri01/onenord.nvim')

    -- Lualine: statusline
    use({
        'nvim-lualine/lualine.nvim',
        event = 'BufEnter',
        config = function()
            require('plugins.lualine')
        end
    })


    -- Startup Dashboard
    use("startup-nvim/startup.nvim")

    -- Telescope
    use({
        {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.0',
            requires = 'nvim-lua/plenary.nvim',
            event = 'CursorHold',
            config = function()
                require('plugins.telescope')
            end
        },
        {
            'nvim-telescope/telescope-file-browser.nvim',
            after = 'telescope.nvim',
            config = function()
                require('telescope').load_extension('file_browser')
            end
        },
        {
            'nvim-telescope/telescope-project.nvim',
            after = 'telescope.nvim',
            config = function()
                require('telescope').load_extension('project')
            end
        }
    })

    -- Treesitter, syntax highlighting
    use({
        'nvim-treesitter/nvim-treesitter',
        event = 'CursorHold',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        config = function()
            require('plugins.treesitter')
        end
    })
    -- Autotag
    use({ 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' })

    -- LSP
    use({
        'neovim/nvim-lspconfig',
        event = 'BufRead',
        config = function()
            require('plugins.lsp.lspconfig')
        end
    })
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use({ "ray-x/lsp_signature.nvim" })

    -- Autocompletion
    --
    --
    use({
        {
            'hrsh7th/nvim-cmp',
            event = 'InsertEnter',
            config = function()
                require('plugins.lsp.nvim-cmp')
            end,
            requires = {
                'L3MON4D3/LuaSnip',
                event = 'CursorHold',
                config = function()
                    require('plugins.lsp.luasnip')
                end
            },
        },
        { 'hrsh7th/cmp-path', after = 'nvim-cmp' },
        { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
        { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
        { 'hrsh7th/cmp-omni', after = 'nvim-cmp' },
        { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' },
        {
            'hrsh7th/cmp-nvim-lsp-signature-help',
            after = 'nvim-cmp',
            config = function()
                require('plugins.signature-help')
            end
        },
    })

    -- Autopairs
    use({
        'windwp/nvim-autopairs',
        event = 'InsertCharPre',
        after = 'nvim-cmp',
        config = function()
            require('plugins.pairs')
        end,
    })


    -- Lua dev for init.lua and plugin development
    use("folke/neodev.nvim")


    -- Bufferline
    use({ 'akinsho/bufferline.nvim', tag = "v2.*" })


    -- Whichkey
    use('folke/which-key.nvim')

    -- Comment
    use({
        'numToStr/Comment.nvim',
        event = 'BufRead',
        config = function()
            require('plugins.comment')
        end,
    })

    -- Surround
    use({ "kylechui/nvim-surround", tag = "*", event = 'BufRead', config = function()
        require('plugins.surround')
    end })

    -- Notify
    use('rcarriga/nvim-notify')

    -- See startup time
    use('dstein64/vim-startuptime')

    -- Improve startuptime
    use('lewis6991/impatient.nvim')

    -- Goto with float window
    use({
        'rmagatti/goto-preview',
        event = 'BufRead',
        config = function()
            require('plugins.goto-preview')
        end
    })

    -- Null-ls
    use({
        'jose-elias-alvarez/null-ls.nvim',
        event = 'BufRead',
        config = function()
            require('plugins.lsp.null-ls')
        end
    })


    use({
        "nvim-neorg/neorg",
        ft = "norg",
        after = "nvim-treesitter", -- You may want to specify Telescope here as well
        config = function()
            require('plugins.neorg')
        end
    })

    --
    -- use({
    --     'kdheepak/cmp-latex-symbols',
    --     ft = { 'tex' },
    --     config = function ()
    --         require('plugins.lsp.cmp-latex')
    --     end
    -- })

    use({
        'lervag/vimtex',
        ft = { 'tex' }
    })

end)
