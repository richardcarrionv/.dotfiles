local theme = {
    fill = 'TabLineFill',
    --fill = { fg='#f2e9de', bg='#907aa9', style='italic' },
    head = 'TabLine',

    current_tab = 'TabLineSel',

    tab = 'TabLine',
    win = 'TabLine',
    tail = 'TabLine',
}

require('tabby.tabline').set(function(line)
    return {
        line.tabs().foreach(function(tab)

            local name = tab.name()
            local extension = vim.fn.fnamemodify(name, ':e')
            local icon, color = require 'nvim-web-devicons'.get_icon_color(name, extension)

            local icon_hl = { fg = color, bg = theme.tab.bg, style = 'bold' }
            local hl = tab.is_current() and theme.current_tab or theme.tab

            return {
                {
                    icon,
                    hl = icon_hl,
                    margin = ' ',
                    line.sep('', hl, theme.fill),
                },
                {
                    tab.name(),
                    hl = hl,
                    line.sep('|', hl, theme.fill),
                    margin = ' ',
                }
            }

        end),
        line.spacer(),
        line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)

            local name = win.buf_name()
            local extension = vim.fn.fnamemodify(name, ':e')

            local icon, color = require 'nvim-web-devicons'.get_icon_color(name, extension)


            local hl = win.is_current() and theme.current_tab or theme.tab
            local icon_hl = { fg = color, bg = theme.tab.bg, style = 'bold' }

            return {
                {
                    icon,
                    hl = icon_hl,
                },
                name,
                line.sep('|', theme.win, theme.fill),
                hl = hl,
                margin = ' ',
            }
        end),
        hl = theme.fill,
    }
end)
