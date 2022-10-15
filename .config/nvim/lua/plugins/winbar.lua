local M = {}

M.winbar_filetype_exclude = {
    "help",
    "startify",
    "dashboard",
    "packer",
    "neogitstatus",
    "NvimTree",
    "Trouble",
    "alpha",
    "lir",
    "Outline",
    "spectre_panel",
    "toggleterm",
    "DressingSelect",
    "Jaq",
    "harpoon",
    "dapui_scopes",
    "dapui_breakpoints",
    "dapui_stacks",
    "dapui_watches",
    "dap-repl",
    "dap-terminal",
    "dapui_console",
    "lab",
    "Markdown",
    "",
}

local function isempty(s)
    return s == nil or s == ""
end

M.get_filename = function()
    local filename = vim.fn.expand "%:t"
    local extension = vim.fn.expand "%:e"

    if not isempty(filename) then
        local file_icon, file_icon_color =
        require("nvim-web-devicons").get_icon_color(filename, extension, { default = true })

        local hl_group = "FileIconColor" .. extension

        vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color, bg = '#16161e' })
        vim.api.nvim_set_hl(0, 'WinBar', { bg = '#16161e' })

        if isempty(file_icon) then
            file_icon = ""
            file_icon_color = ""
        end

        return " " .. "%#" .. hl_group .. "#" .. file_icon .. "%*" .. " " .. "%#Winbar#%f%*"
    end
end

local excludes = function()
    if vim.tbl_contains(M.winbar_filetype_exclude, vim.bo.filetype) then
        vim.opt_local.winbar = nil
        return true
    end
    return false
end

M.get_winbar = function()
    if excludes() then
        return
    end

    local value = M.get_filename()

    local status_ok, _ = pcall(vim.api.nvim_set_option_value, "winbar", value, { scope = "local" })
    if not status_ok then
        return
    end
end

M.create_winbar = function()
    vim.api.nvim_create_augroup("_winbar", {})
    if vim.fn.has "nvim-0.8" == 1 then
        vim.api.nvim_create_autocmd(
            { "CursorMoved", "CursorHold", "BufWinEnter", "BufFilePost", "InsertEnter", "BufWritePost", "TabClosed" },
            {
                group = "_winbar",
                callback = function()
                    local status_ok, _ = pcall(vim.api.nvim_buf_get_var, 0, "lsp_floating_window")
                    if not status_ok then
                        require("plugins.winbar").get_winbar()
                    end
                end,
            }
        )
    end
end

M.create_winbar()

return M
