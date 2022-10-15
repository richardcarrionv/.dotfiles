require('lsp_signature').setup({
    floating_window = false, -- show hint in a floating window, set to false for virtual text only mode

    hint_prefix = "", -- Panda for parameter, NOTE: for the terminal not support emoji, might crash
    hint_scheme = "Keyword",
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    handler_opts = {
        border = "rounded" -- double, rounded, single, shadow, none
    },

    always_trigger = false, -- sometime show signature on new line or in middle of parameter can be confusing, set it to false for #58

    auto_close_after = nil, -- autoclose signature float win after x sec, disabled if nil.
    extra_trigger_chars = {}, -- Array of extra characters that will trigger signature completion, e.g., {"(", ","}
    zindex = 200, -- by default it will be on top of all floating windows, set to <= 50 send it to bottom

    padding = '', -- character to pad on left and right of signature can be ' ', or '|'  etc


    timer_interval = 10, -- default timer check interval set to lower value if you want to reduce latency
    toggle_key = "<C-k>", -- toggle signature on and off in insert mode,  e.g. toggle_key = '<M-x>'

})

