require('neodev').setup({})
local mappings = require('mappings')

local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig')
local cmp_nvim_lsp = require('cmp_nvim_lsp')


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = cmp_nvim_lsp.update_capabilities(capabilities)

local servers = {
    "html",
    "cssls",
    "jsonls",
    "jdtls",
    "remark_ls",
    "intelephense",
    "sqlls",
    "yamlls",
    "angularls",
    "pyright",
    "tsserver",
    "sumneko_lua",
    "texlab",
}

mason.setup()
mason_lspconfig.setup({
    ensure_installed = servers
})


for _, server in pairs(servers) do
    local setup_options = {
        on_attach = mappings.on_attach,
        capabilities = capabilities
    }
    lspconfig[server].setup(setup_options)
end

