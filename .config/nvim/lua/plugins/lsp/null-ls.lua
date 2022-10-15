local nls = require('null-ls')
local formatting = nls.builtins.formatting
local diagnostics = nls.builtins.diagnostics
local completion = nls.builtins.completion
--local code_actions = nls.builtins.code_actions

nls.setup({
    sources = {
        formatting.black,
        diagnostics.eslint,
    }
})

