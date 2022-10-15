local colors = require("tokyonight.colors").setup()
require('plugins.misc')

require('startup').setup({
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = que_vas_a_saber_de_neovim,
        highlight = "Keyword",
        default_color = "#56b6c2",
        oldfiles_amount = 0,
    },
    picture = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Picture",
        margin = 5,
        content = calamardo,
        highlight = "",
        default_color = "#ffffff",
        oldfiles_amount = 0,
    },
    body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Projects", "lua require'telescope'.extensions.project.project{ display_type = 'full' }", "<leader>pj" },
            { " Find File", "Telescope find_files", "<leader>fl" },
            { " Recent Files", "Telescope oldfiles", "<leader>rf" },
            { " File Browser", "Telescope file_browser", "<leader>." },
            {
                "  Configuration",
                "cd ~/.config/nvim/ | edit lua/plugins.lua |  vsplit init.lua | split lua/mappings.lua  ",
                "<leader>c"
            },
        },
        highlight = "String",
        default_color = "#ffffff",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "startup.nvim" },
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 1, 1, 1, 1 },
    },

    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },

    colors = {
        background = "#1a1b26",
        folded_section = "#ffffff",
    },

    parts = { "header", "picture", "body", },
})
