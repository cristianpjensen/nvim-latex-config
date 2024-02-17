return {
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")

            vim.o.pumheight = 10

            cmp.setup({
                experimental = { ghost_text = true },
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = {
                    ["<Up>"] = cmp.mapping.select_prev_item(),
                    ["<Down>"] = cmp.mapping.select_next_item(),
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
                    ["<C-e>"] = cmp.mapping.close(),
                    ["<CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Insert,
                        select = true,
                    }),
                },
                -- ordered by priority
                sources = cmp.config.sources({
                    { name = "luasnip", option = { show_autosnippets = true } },
                    { name = "nvim_lsp", keyword_length = 1 },
                    { name = "nvim_lsp_signature_help" },
                    { name = "path" },
                    { name = "vimtex" },
                    { name = "nvim_lua" },
                }, {
                    { name = "buffer" },
                }),
            })

            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(), -- Tab for selection (arrows needed for selecting past items)
                sources = { { name = "buffer" } },
            })

            cmp.setup.cmdline({ ":" }, {
                mapping = cmp.mapping.preset.cmdline(), -- Tab for selection (arrows needed for selecting past items)
                sources = { { name = "cmdline" }, { name = "path" } },
            })
        end,
    },
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-path",
    "micangl/cmp-vimtex",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp",
        lazy = false,
        event = { "InsertEnter" },
        dependencies = { "saadparwaiz1/cmp_luasnip" },
        config = function()
            require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/LuaSnip/" })

            vim.cmd([[
                " Use Tab to expand and jump through snippets
                imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
                smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

                " Use Shift-Tab to jump backwards through snippets
                imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
                smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
            ]])

            require("luasnip").config.set_config({
                enable_autosnippets = true,
                store_selection_keys = "<Tab>",
            })
        end,
    },
}
