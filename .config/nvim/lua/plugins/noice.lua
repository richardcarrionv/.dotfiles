require("noice").setup({
    views = {
        cmdline_popup = {
            position = {
                row = "95%",
                col = "50%",
            },
            size = {
                width = 100,
                height = "auto",
            },
            win_options = {
                winhighlight = { Normal = "Normal", FloatBorder = "FloatBorder" },
            },
        },
        popupmenu = {
            relative = "editor",
            position = {
                row = "88%",
                col = "50%",
            },
            size = {
                width = 100,
                height = 10,
            },
            border = {
                style = "rounded",
                padding = { 0, 1 },
            },
            win_options = {
                winhighlight = { Normal = "Normal", FloatBorder = "FloatBorder" },
            },
        },
    },
})
