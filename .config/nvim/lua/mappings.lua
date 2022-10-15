M = {}

local function nmap(k --[[str]], v --[[str]])
    vim.keymap.set("n", k, v, { silent = true })
end


----------------------
-- Basics --
----------------------
nmap("<leader>w", ":write<CR>")
nmap("<leader>so", ":write | source %<CR>")
nmap("<leader>q", ":quit<CR>")
nmap("<leader><Enter>", "o<Esc>")
nmap("<leader>cf",
    ":tabnew | tcd ~/AppData/Local/nvim/ | edit lua/plugins.lua  | vsplit init.lua | split lua/mappings.lua <CR>")
--map
--nmap("<leader>cf" , ":tabnew | e $MYVIMRC |  NvimTreeFindFile <CR>")

----------------------
-- Navigation --
----------------------
nmap("<C-h>", "<C-w>h")
nmap("<C-k>", "<C-w>k")
nmap("<C-j>", "<C-w>j")
nmap("<C-l>", "<C-w>l")

nmap("<leader>l", ":tabnext<CR>")
nmap("<leader>h", ":tabprevious<CR>")
nmap("<leader>tc", ":tabclose<CR>")
nmap("<leader>tn", ":tabnew<CR>")

nmap("<leader>mt", "<C-w>T")
nmap("<leader>ml", "<C-w>L")
nmap("<leader>mh", "<C-w>H")
nmap("<leader>mk", "<C-w>K")
nmap("<leader>mj", "<C-w>J")

----------------------
-- Terminal --
----------------------
nmap("<leader>tt", ":tabnew | terminal powershell.exe<CR>i")
nmap("<leader>ts", ":vsplit | terminal powershell.exe<CR>i")
nmap("<leader>ti", ":split | terminal powershell.exe<CR>i")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })

----------------------
-- Slits Resize --
----------------------
nmap("<leader>>", "5<C-w>>")
nmap("<leader><", "5<C-w><")
nmap("<leader>+", "5<C-w>+")
nmap("<leader>-", "5<C-w>-")

-- Diagnostics and LSP
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<leader>gn', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<leader>gN', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>dg', vim.diagnostic.setloclist, opts)

M.on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    vim.keymap.set('n', 'gD', "<cmd>Telescope lsp_declarations<CR>", bufopts)
    vim.keymap.set('n', 'gd', "<cmd>Telescope lsp_definitions<CR>", bufopts)
    vim.keymap.set('n', 'gi', "<cmd>Telescope lsp_implementations<CR>", bufopts)
    vim.keymap.set('n', 'gr', "<cmd>Telescope lsp_references<CR>", bufopts)

    vim.keymap.set('n', '<space>D',  vim.lsp.buf.type_definition, bufopts)

    vim.keymap.set('n', 'K',         vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', '<leader>k',     vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<leader>fm', function() vim.lsp.buf.format { async = true } end, bufopts)

end

-- Telescope
vim.keymap.set('n', '<leader>fl', ":Telescope find_files <CR>", {})
vim.keymap.set('n', '<leader>gp', ":Telescope live_grep <CR>", {})
vim.keymap.set('n', '<leader>ff', ":Telescope buffers <CR>", {})
vim.keymap.set('n', '<leader>rf', ":Telescope oldfiles <CR>", {})
vim.api.nvim_set_keymap('n',
    '<leader>pj',
    ":lua require'telescope'.extensions.project.project{ display_type = 'full' }<CR>",
    { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
    "n",
    "<leader>dk",
    ":Telescope file_browser path=~/Desktop/<CR>",
    { noremap = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>.",
    ":Telescope file_browser<CR>",
    { noremap = true }
)

-- NvimTree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle <CR>", { silent = true })
vim.keymap.set("n", "<leader>nf", ":NvimTreeFindFile <CR>", { silent = true })

nmap("<leader>pc", ":wa | so % |PackerCompile| PackerClean <CR>")

return M
