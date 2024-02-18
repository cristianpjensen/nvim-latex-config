-- Spell checking in markdown and git commits.
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = { "gitcommit", "markdown", "tex" },
    callback = function()
        vim.opt.spell = true
        vim.opt.spelllang = "en_us"
        vim.keymap.set("i", "<C-l>", "<c-g>u<Esc>[s1z=`]a<c-g>u")
    end,
})
