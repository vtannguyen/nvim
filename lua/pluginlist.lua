return {

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd("colorscheme gruvbox")
        end
    },

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "vim-test/vim-test",

	{
		"preservim/vimux",
        keys = {
            { '<leader>vp', '<cmd>VimuxPromptCommand<cr>' },
            { '<leader>vl', '<cmd>VimuxRunLastCommand<cr>' },
            { '<leader>vi', '<cmd>VimuxInspectRunner<cr>' },
            { '<leader>vq', '<cmd>VimuxCloseRunner<cr>' },
            { '<leader>vs', '<cmd>VimuxInterruptRunner<cr>' },
            { '<leader>vz', '<cmd>VimuxZoomRunner<cr>' },
        }
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = 'codedark',
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                    disabled_filetypes = {
                      statusline = {},
                      winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                      statusline = 1000,
                      tabline = 1000,
                      winbar = 1000,
                    }
                  },
            })
        end,
    },

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
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { '<leader>f', '<cmd>Telescope find_files<cr>' },
            { '<leader>b', '<cmd>Telescope buffers<cr>' },
        }
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = true,
                    theme = 'codedark',
                    section_separators = { left = '', right = '' },
                    component_separators = { left = '', right = '' },
                    disabled_filetypes = {
                      statusline = {},
                      winbar = {},
                    },
                    ignore_focus = {},
                    always_divide_middle = true,
                    globalstatus = false,
                    refresh = {
                      statusline = 1000,
                      tabline = 1000,
                      winbar = 1000,
                    }
                  },
            })
        end,
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        config = function ()
          require("neo-tree").setup({
            close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            window = {
              position = "right",
              width = 40,
              mapping_options = {
                noremap = true,
                nowait = true,
              },
            },
          })
        end,
    },

    {
        "aserowy/tmux.nvim",
        config = function() return require("tmux").setup() end
    },

    {
      "ThePrimeagen/refactoring.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
      },
      config = function()
        require("refactoring").setup()
      end,
    },
}
