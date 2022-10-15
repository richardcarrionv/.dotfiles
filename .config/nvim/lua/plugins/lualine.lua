local function lsp_status()
    if rawget(vim, "lsp") then
        for _, client in ipairs(vim.lsp.get_active_clients()) do
            if client.attached_buffers[vim.api.nvim_get_current_buf()] then
                return (vim.o.columns > 100 and "%#St_LspStatus#" .. "   LSP ~ " .. client.name .. " ") or "   LSP "
            end
        end
    end
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'ayu_dark',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {
            "NvimTree"
        },
        always_divide_middle = true,

        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
            {
                'filename',
                path = 1
            },
        },
        lualine_x = {
            'filetype',
        },
        lualine_y = { 'progress',
            lsp_status
        },
        lualine_z = { 'location' }
    },
}
