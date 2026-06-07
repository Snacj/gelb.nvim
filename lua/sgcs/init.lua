local M = {}

function M.setup()
    local colors = {
        bg = "#181818",
        fg = "#e0e0e0",

        black = "#1f1f1f",
        gray = "#5a5a5a",

        green = "#8ab17d",
        yellow = "#e9c46a",
        red = "#e76f51",
        blue = "#264653",
        cyan = "#2a9d8f",
        purple = "#287271",
        orange = "#f4a261",

        -- green = "#6b9e78",
        -- yellow = "#E4D329",
        -- red = "#c46a6a",
        --
        -- blue = "#8fbcd4",
        -- cyan = "#7fbfb3",
        -- purple = "#a58fd6",
        -- orange = "#d19a66",
    }

    -- Treesitter-based highlights
    local highlights = {
        Normal = { fg = colors.fg, bg = colors.bg },

        -- Core syntax
        Comment = { fg = colors.gray, italic = true },
        String = { fg = colors.green },
        Character = { fg = colors.green },

        Number = { fg = colors.orange },
        Boolean = { fg = colors.red },
        Float = { fg = colors.orange },

        Function = { fg = colors.yellow },
        Method = { fg = colors.yellow },

        Keyword = { fg = colors.purple },
        Conditional = { fg = colors.purple },
        Repeat = { fg = colors.purple },

        Identifier = { fg = colors.fg },
        Variable = { fg = colors.fg },

        Constant = { fg = colors.red },

        Type = { fg = colors.yellow },
        StorageClass = { fg = colors.yellow },
        Structure = { fg = colors.yellow },

        Operator = { fg = colors.fg },

        -- Treesitter groups
        ["@variable"] = { fg = colors.fg },
        ["@variable.builtin"] = { fg = colors.red },

        ["@function"] = { fg = colors.yellow },
        ["@function.call"] = { fg = colors.yellow },

        ["@method"] = { fg = colors.yellow },
        ["@constructor"] = { fg = colors.red },

        ["@keyword"] = { fg = colors.purple },
        ["@keyword.function"] = { fg = colors.yellow },

        ["@string"] = { fg = colors.green },
        ["@string.escape"] = { fg = colors.red },

        ["@number"] = { fg = colors.orange },
        ["@boolean"] = { fg = colors.red },

        ["@type"] = { fg = colors.cyan },
        ["@type.builtin"] = { fg = colors.cyan },

        ["@constant"] = { fg = colors.red },
        ["@constant.builtin"] = { fg = colors.red },

        ["@comment"] = { fg = colors.gray, italic = true },

        ["@operator"] = { fg = colors.fg },

        ["@property"] = { fg = colors.fg },
        ["@field"] = { fg = colors.fg },

        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@punctuation.bracket"] = { fg = colors.fg },
        ["@punctuation.special"] = { fg = colors.red },

        -- UI
        Cursor = {
            fg = colors.bg,
            bg = colors.yellow,
        },

        CursorIM = {
            fg = colors.bg,
            bg = colors.yellow,
        },

        CursorLine = { bg = colors.black },
        Visual = { bg = colors.gray },
        LineNr = { fg = colors.gray },
        CursorLineNr = { fg = colors.yellow },

        Pmenu = { fg = colors.fg, bg = colors.black },
        PmenuSel = { bg = colors.gray },

        StatusLine = { fg = colors.fg, bg = colors.black },
        StatusLineNC = { fg = colors.gray, bg = colors.black },

        VertSplit = { fg = colors.gray },
    }

    -- Apply highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Set Cursor
    vim.opt.guicursor = "a:block-Cursor"
end

return M
