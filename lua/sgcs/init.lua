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
    }

    local highlights = {
        -- UI
        Normal = { fg = colors.fg, bg = colors.bg },
        Cursor = { fg = colors.bg, bg = colors.yellow },
        CursorIM = { fg = colors.bg, bg = colors.yellow },

        CursorLine = { bg = colors.black },
        Visual = { bg = colors.gray },

        LineNr = { fg = colors.gray },
        CursorLineNr = { fg = colors.yellow },

        Pmenu = { fg = colors.fg, bg = colors.black },
        PmenuSel = { bg = colors.gray },

        StatusLine = { fg = colors.fg, bg = colors.black },
        StatusLineNC = { fg = colors.gray, bg = colors.black },

        VertSplit = { fg = colors.gray },

        -- Vim syntax (fallback groups)
        Comment = { fg = colors.gray, italic = true },
        String = { fg = colors.green },
        Character = { fg = colors.green },

        Number = { fg = colors.orange },
        Boolean = { fg = colors.red },
        Float = { fg = colors.orange },

        Function = { fg = colors.yellow },
        Identifier = { fg = colors.fg },

        Keyword = { fg = colors.yellow },
        Conditional = { fg = colors.purple },
        Repeat = { fg = colors.purple },

        Constant = { fg = colors.red },
        Type = { fg = colors.cyan },
        StorageClass = { fg = colors.yellow },
        Structure = { fg = colors.yellow },

        Operator = { fg = colors.fg },

        -- Tree-sitter core
        ["@variable"] = { fg = colors.fg },
        ["@variable.builtin"] = { fg = colors.red },

        ["@parameter"] = { fg = colors.fg },

        ["@function"] = { fg = colors.yellow },
        ["@function.call"] = { link = "@function" },
        ["@function.builtin"] = { fg = colors.yellow },

        ["@method"] = { fg = colors.yellow },
        ["@constructor"] = { fg = colors.red },

        ["@property"] = { fg = colors.fg },
        ["@field"] = { fg = colors.fg },

        ["@namespace"] = { fg = colors.cyan },
        ["@module"] = { fg = colors.cyan },

        ["@type"] = { fg = colors.cyan },
        ["@type.builtin"] = { fg = colors.cyan },
        ["@type.definition"] = { fg = colors.cyan },

        ["@constant"] = { fg = colors.red },
        ["@constant.builtin"] = { fg = colors.red },

        ["@string"] = { fg = colors.green },
        ["@string.escape"] = { fg = colors.red },

        ["@number"] = { fg = colors.orange },
        ["@boolean"] = { fg = colors.red },

        ["@comment"] = { fg = colors.gray, italic = true },

        ["@operator"] = { fg = colors.fg },

        ["@keyword"] = { fg = colors.yellow },
        ["@keyword.function"] = { fg = colors.yellow },
        ["@keyword.return"] = { fg = colors.yellow },
        ["@keyword.import"] = { fg = colors.yellow },
        ["@keyword.operator"] = { fg = colors.yellow },

        ["@tag"] = { fg = colors.yellow },
        ["@tag.attribute"] = { fg = colors.fg },
        ["@tag.delimiter"] = { fg = colors.gray },

        ["@attribute"] = { fg = colors.purple },

        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@punctuation.bracket"] = { fg = colors.fg },
        ["@punctuation.special"] = { fg = colors.red },

        -- LSP semantic tokens (mapped to TS groups)
        ["@lsp.type.variable"] = { link = "@variable" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    vim.opt.guicursor = "a:block-Cursor"
end

return M
