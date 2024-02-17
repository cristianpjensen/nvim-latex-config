return {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    dependencies = { "marko-cerovac/material.nvim" },
    config = {
        set_dark_mode = function()
            vim.api.nvim_set_option("background", "dark")
            vim.cmd("colorscheme material")
            require("material.functions").change_style("deep ocean")
        end,
        set_light_mode = function()
            vim.api.nvim_set_option("background", "light")
            vim.cmd("colorscheme material")
            require("material.functions").change_style("lighter")
        end,
    },
}
