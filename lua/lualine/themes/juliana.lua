---@type Colors
local colors = require 'nvim-juliana'.colors()
local rest = { fg = colors.fg2, bg = colors.bg3 }

--- Creates a table conforming to the lualine theme specification
---@private
---@param color string
local function highlight(color)
    return {
        a = { fg = color, bg = colors.bg2, gui = 'bold' },
        b = rest,
        c = rest,
    }
end

local function highlight2(color) -- color is {fg, bg}
    return {
        a = { fg = color.fg, bg = color.bg, gui = 'bold' },
        b = rest,
        c = rest,
    }
end

return {
    normal = highlight(colors.fg1),
    -- insert = highlight(colors.green),
    insert = highlight2({ fg = colors.black, bg = colors.green }),
    -- visual = highlight(colors.cyan2),
    visual = highlight2({ fg = colors.black, bg = colors.cyan2 }),
    -- replace = highlight(colors.red2),
    replace = highlight2({ fg = colors.black, bg = colors.red2 }),
    -- command = highlight(colors.yellow2),
    command = highlight2({ fg = colors.black, bg = colors.yellow2 }),
    -- terminal = highlight(colors.magenta),
    terminal = highlight2({ fg = colors.black, bg = colors.magenta }),
    active = {
        a = { bg = colors.bg3, fg = colors.fg2, gui = 'bold' },
        b = rest,
        c = rest,
    },
    inactive = {
        a = { bg = colors.bg2, fg = colors.fg3 },
        b = rest,
        c = rest,
    },
}
