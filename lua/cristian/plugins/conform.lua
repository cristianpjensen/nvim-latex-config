return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>cf",
            function()
                require("conform").format({ async = true, lsp_fallback = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    -- Everything in opts will be passed to setup()
    opts = {
        -- Define your formatters
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },
            tex = { "latexindent" },
            bib = { "latexindent" },
        },
        -- Format-on-save
        format_on_save = { timeout_ms = 500, lsp_fallback = true },
        formatters = {
            stylua = {
                prepend_args = { "--indent-type", "Spaces" },
            },
        },
    },
    init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
}
