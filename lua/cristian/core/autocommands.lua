-- Spell checking in markdown and git commits.
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "gitcommit", "markdown", "tex" },
    callback = function()
        vim.opt_local.spell = true
    end,
})
