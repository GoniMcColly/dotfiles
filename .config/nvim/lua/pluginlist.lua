return {
    { 'numToStr/Comment.nvim', opts = {} },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    {
        "shaunsingh/nord.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme nord")
        end
    },
    --
    
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    'folke/neodev.nvim', -- new

    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            
            'hrsh7th/cmp-nvim-lsp',
            
        },
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },


    { 
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' } 
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },
	--
	-- {
 --    "nvim-neo-tree/neo-tree.nvim",
 --    branch = "v3.x",
 --    dependencies = {
 --      "nvim-lua/plenary.nvim",
 --      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
 --      "MunifTanjim/nui.nvim",
 --      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
 --    },
	--
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end,
    }
}
