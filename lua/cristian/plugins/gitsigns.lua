return {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {
        signs = {
            add = { text = " +" },
            change = { text = " M" },
            delete = { text = " _" },
            topdelete = { text = " ‾" },
            changedelete = { text = " ~" },
            untracked = { text = " U" },
        },
    },
}
