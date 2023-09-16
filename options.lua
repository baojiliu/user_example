-- set vim options here (vim.<first_key>.<second_key> = value)
return {
    opt = {
        -- set to true or false etc.
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = true, -- sets vim.opt.wrap
        colorcolumn = "80"
    },
    g = {
        tagbar_wrap = 1,
        tagbar_type_go ={
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
        },
        mapleader = " ", -- sets vim.g.mapleader
        autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
        cmp_enabled = true, -- enable completion at start
        autopairs_enabled = true, -- enable autopairs at start
        diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
        icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
        ui_notifications_enabled = true, -- disable notifications when toggling UI elements
        -- 禁用vim-go gopls
        go_gopls_enabled = false,
        -- 禁用copilot默认的tab按键
        copilot_no_tab_map = true,
    }
}
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
