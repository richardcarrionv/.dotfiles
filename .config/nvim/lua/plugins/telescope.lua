local telescope = require('telescope')
local file_browser_actions = telescope.extensions.file_browser.actions

telescope.setup {
    defaults = {


        path_display = function(opts, path)
            local tail = require("telescope.utils").path_tail(path)
            return string.format("%s (%s)", tail, path)
        end,
        file_ignore_patterns = {
            ".git/",
            "target/",
            "docs/",
            "vendor/*",
            "%.lock",
            "__pycache__/*",
            "%.sqlite3",
            "%.ipynb",
            "node_modules/*",
            "%.svg",
            "%.otf",
            "%.ttf",
            "%.webp",
            ".dart_tool/",
            ".github/",
            ".gradle/",
            ".idea/",
            ".settings/",
            ".vscode/",
            "__pycache__/",
            "build/",
            "env/",
            "gradle/",
            "node_modules/",
            "%.pdb",
            "%.dll",
            "%.class",
            "%.exe",
            "%.cache",
            "%.ico",
            "%.pdf",
            "%.dylib",
            "%.jar",
            "%.docx",
            "%.met",
            "smalljre_*/*",
            ".vale/",
            "%.burp",
            "%.mp4",
            "%.mkv",
            "%.rar",
            "%.zip",
            "%.7z",
            "%.tar",
            "%.bz2",
            "%.epub",
            "%.flac",
            "%.tar.gz",
        },
        mappings = {
            i = {
                ["<C-k>"] = "move_selection_previous",
                ["<C-j>"] = "move_selection_next",
                ["<C-p>"] = "send_to_qflist",

                ["<leader>q"] = "close",
                ["<leader>s"] = "select_vertical",
                ["<leader>v"] = "select_horizontal",
                ["<leader>t"] = "select_tab",
            },
            n = {
                ["k"] = "move_selection_previous",
                ["j"] = "move_selection_next",
                ["<leader>q"] = "close",
                ["q"] = "close",
                ["s"] = "select_vertical",
                ["v"] = "select_horizontal",
                ["t"] = "select_tab",
            }
        },
        sorting_strategy = "ascending",
        layout_config = {
            prompt_position = "top",
        },

    },
    pickers = {
        buffers = {
            initial_mode = "normal",
            theme = "dropdown",
            previewer = false,
            sorting_strategy = "ascending",
        },

        lsp_references = {
            theme = "dropdown",
            initial_mode = "normal",
            show_line = false,
        },

        lsp_definitions = {
            theme = "dropdown",
            initial_mode = "normal",
        },

        lsp_declarations = {
            theme = "dropdown",
            initial_mode = "normal",
        },

        lsp_implementations = {
            theme = "dropdown",
            initial_mode = "normal",
        },


        oldfiles = {
            initial_mode = "normal"
        },
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
            initial_mode = "normal",
            mappings = {
                ["n"] = {
                    ["c"] = file_browser_actions.change_cwd,
                    ["a"] = file_browser_actions.create
                }
            }
        },
        project = {
            order_by = "recent",
            sync_with_nvim_tree = false,
            display_type = "minimal"
        }
    }
}
