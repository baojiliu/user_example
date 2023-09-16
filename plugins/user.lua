return {
    {
        "fatih/vim-go",
        lazy = false,
        init = function()
            vim.g.go_gopls_enabled = false
        end,
    },
    {
        "github/copilot.vim",
        lazy = false,
        init = function()
            -- 禁用copilot默认的tab按键
            vim.g.copilot_no_tab_map = true
            -- copilot按键设置
            vim.api.nvim_set_keymap('i', '<C-L>', 'copilot#Accept("<CR>")', {expr=true, silent=true})
        end,
    },
    {
        "vim-autoformat/vim-autoformat",
        lazy = false
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
        config = function(plugin, opts)
            -- include the default astronvim config that calls the setup call
            require "plugins.configs.luasnip"(plugin, opts)
            -- load snippets paths
            require("luasnip.loaders.from_vscode").lazy_load {
                -- this can be used if your configuration lives in ~/.config/nvim
                -- if your configuration lives in ~/.config/astronvim, the full path
                -- must be specified in the next line
                paths = { "./lua/user/snippets" }
            }
        end,
    },
    {
        "preservim/tagbar",
        lazy = false,
        init = function()
            vim.g.tagbar_scopestrs={}
            vim.g.tagbar_wrap = 1
            vim.g.tagbar_type_go ={
                ctagstype = 'go',
                kinds = {
                    'p:package',
                    'i:imports:1',
                    'c:constants',
                    'v:variables',
                    't:types',
                    'n:interfaces',
                    'w:fields',
                    'e:embedded',
                    'm:methods',
                    'r:constructor',
                    'f:functions'
                },
                sro = '.',
                kind2scope = {
                    t = 'ctype',
                    n = 'ntype'
                },
                scope2kind = {
                    ctype = 't',
                    ntype = 'n'
                },
                ctagsbin = 'gotags',
                ctagsargs = '-sort -silent'
            }
        end,
    },
    {
        "mbbill/undotree",
        lazy = false,
        init = function()
        end,
    },
    {
        'kristijanhusak/vim-dadbod-ui',
        lazy = false,
        dependencies = {
            { 'tpope/vim-dadbod', lazy = true },
            { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        },
        cmd = {
            'DBUI',
            'DBUIToggle',
            'DBUIAddConnection',
            'DBUIFindBuffer',
        },
        init = function()
            -- Your DBUI configuration
            --vim.g.db_ui_disable_mappings = 1
            vim.g.db_ui_use_nerd_fonts = 1
            --vim.g.db_ui_dotenv_variable_prefix="DB_UI_"
        end,
    },
}
