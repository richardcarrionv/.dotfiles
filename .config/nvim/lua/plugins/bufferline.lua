require('bufferline').setup {
    options = {
        mode = "tabs",
        buffer_close_icon = '',
        --sort_by = 'id',
        indicator = {
            style = 'underline'
        },
        separator_style = { '', '' },
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                highlight = "Directory",
                text_align = "left",
                separator = " "
            }
        }
    },

}
