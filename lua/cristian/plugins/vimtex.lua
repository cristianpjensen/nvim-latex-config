return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.g.vimtex_view_method = "skim"
        vim.g.vimtex_view_skim_sync = 1
        vim.g.vimtex_view_skim_activate = 1
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_compiler_latexmk = {
            options = {
                "-pdf",
                "-shell-escape",
                "-verbose",
                "-file-line-error",
                "-synctex=1",
                "-interaction=nonstopmode",
            },
        }
    end,
}
