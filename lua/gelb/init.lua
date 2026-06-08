local M = {}

function M.setup()
    local colors = {
        -- Background / surface
        bg        = "#1d1d1d",
        bg_dim    = "#252525",
        bg_float  = "#2a2a2a",

        -- Foreground
        fg        = "#d4be98",
        fg_dim    = "#a89984",

        -- Grays
        black     = "#232323",
        gray      = "#504945",
        gray_lite = "#665c54",

        -- Accent palette  (yellow family dominates)
        yellow    = "#e0aa45",
        gold      = "#d8a657",
        amber     = "#c18f49",
        cream     = "#e8c87e",

        -- Supporting (earthy, subdued)
        green     = "#a9b665",
        aqua      = "#89b482",
        orange    = "#e78a4e",
        red       = "#ea6962",
        purple    = "#d3869b",
        blue      = "#7daea3",
    }


    local highlights = {

        --  UI chrome
        Normal       = { fg = colors.fg,      bg = colors.bg },
        NormalFloat  = { fg = colors.fg,      bg = colors.bg_float },
        FloatBorder  = { fg = colors.gray_lite, bg = colors.bg_float },

        Cursor       = { fg = colors.bg,      bg = colors.gold },
        CursorIM     = { fg = colors.bg,      bg = colors.gold },
        CursorLine   = { bg = colors.bg_dim },
        CursorColumn = { bg = colors.bg_dim },
        ColorColumn  = { bg = colors.bg_dim },

        Visual       = { bg = colors.gray },
        VisualNOS    = { bg = colors.gray },

        LineNr       = { fg = colors.gray },
        CursorLineNr = { fg = colors.gold,    bold = true },
        SignColumn   = { fg = colors.gray,     bg = colors.bg },
        FoldColumn   = { fg = colors.gray,     bg = colors.bg },
        Folded       = { fg = colors.fg_dim,   bg = colors.bg_dim },

        Pmenu        = { fg = colors.fg,       bg = colors.bg_dim },
        PmenuSel     = { fg = colors.bg,       bg = colors.gold },
        PmenuSbar    = { bg = colors.bg_dim },
        PmenuThumb   = { bg = colors.gray },

        StatusLine   = { fg = colors.fg,       bg = colors.bg_dim },
        StatusLineNC = { fg = colors.gray,     bg = colors.bg_dim },
        TabLine      = { fg = colors.fg_dim,   bg = colors.bg_dim },
        TabLineSel   = { fg = colors.gold,     bg = colors.bg,      bold = true },
        TabLineFill  = { bg = colors.bg_dim },
        WinBar       = { fg = colors.fg_dim,   bg = colors.bg },
        WinBarNC     = { fg = colors.gray,     bg = colors.bg },
        WinSeparator = { fg = colors.gray },
        VertSplit    = { fg = colors.gray },

        Search       = { fg = colors.bg,       bg = colors.cream },
        IncSearch    = { fg = colors.bg,       bg = colors.orange },
        CurSearch    = { fg = colors.bg,       bg = colors.orange,   bold = true },
        Substitute   = { fg = colors.bg,       bg = colors.orange },

        MatchParen   = { fg = colors.cream,    bold = true, underline = true },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.orange },
        DiagnosticInfo  = { fg = colors.blue },
        DiagnosticHint  = { fg = colors.aqua },

        DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
        DiagnosticUnderlineWarn  = { undercurl = true, sp = colors.orange },
        DiagnosticUnderlineInfo  = { undercurl = true, sp = colors.blue },
        DiagnosticUnderlineHint  = { undercurl = true, sp = colors.aqua },

        Directory    = { fg = colors.gold },
        Title        = { fg = colors.gold,     bold = true },
        Question     = { fg = colors.gold },
        MoreMsg      = { fg = colors.gold },
        WarningMsg   = { fg = colors.orange },
        ErrorMsg     = { fg = colors.red,      bold = true },

        NonText      = { fg = colors.gray },
        SpecialKey   = { fg = colors.gray },
        Whitespace   = { fg = colors.gray },
        EndOfBuffer  = { fg = colors.bg },

        DiffAdd      = { bg = "#2a3429" },
        DiffChange   = { bg = "#2a2a22" },
        DiffDelete   = { fg = colors.red,      bg = "#362828" },
        DiffText     = { bg = "#3a3420" },

        SpellBad     = { undercurl = true, sp = colors.red },
        SpellCap     = { undercurl = true, sp = colors.blue },

        --  Vim syntax (fallback groups)
        Comment     = { fg = colors.gray_lite, italic = true },
        String      = { fg = colors.green },
        Character   = { fg = colors.green },

        Number      = { fg = colors.orange },
        Boolean     = { fg = colors.orange },
        Float       = { fg = colors.orange },

        Function    = { fg = colors.gold,      bold = true },
        Identifier  = { fg = colors.fg },

        Keyword     = { fg = colors.yellow },
        Conditional = { fg = colors.yellow },
        Repeat      = { fg = colors.yellow },
        Label       = { fg = colors.yellow },
        Exception   = { fg = colors.yellow },
        Statement   = { fg = colors.yellow },

        Constant    = { fg = colors.orange },
        Type        = { fg = colors.cream },
        StorageClass = { fg = colors.yellow },
        Structure   = { fg = colors.cream },
        Typedef     = { fg = colors.cream },

        Operator    = { fg = colors.fg_dim },
        Delimiter   = { fg = colors.fg_dim },
        Special     = { fg = colors.amber },
        SpecialChar = { fg = colors.amber },
        Tag         = { fg = colors.gold },

        PreProc     = { fg = colors.amber },
        Include     = { fg = colors.amber },
        Define      = { fg = colors.amber },
        Macro       = { fg = colors.amber },

        Todo        = { fg = colors.bg, bg = colors.gold, bold = true },
        Error       = { fg = colors.red, bold = true },

        Underlined  = { underline = true },

        --  Tree-sitter
        ["@variable"]         = { fg = colors.fg },
        ["@variable.builtin"] = { fg = colors.orange },
        ["@variable.member"]  = { fg = colors.fg },

        ["@parameter"]        = { fg = colors.fg },

        ["@function"]         = { fg = colors.gold,    bold = true },
        ["@function.call"]    = { fg = colors.gold },
        ["@function.builtin"] = { fg = colors.gold },
        ["@function.macro"]   = { fg = colors.amber },

        ["@method"]           = { fg = colors.gold },
        ["@method.call"]      = { fg = colors.gold },
        ["@constructor"]      = { fg = colors.cream },

        ["@property"]         = { fg = colors.fg },
        ["@field"]            = { fg = colors.fg },

        ["@namespace"]        = { fg = colors.cream },
        ["@module"]           = { fg = colors.cream },

        ["@type"]             = { fg = colors.cream },
        ["@type.builtin"]     = { fg = colors.cream,   italic = true },
        ["@type.definition"]  = { fg = colors.cream },
        ["@type.qualifier"]   = { fg = colors.yellow },

        ["@constant"]         = { fg = colors.orange },
        ["@constant.builtin"] = { fg = colors.orange },
        ["@constant.macro"]   = { fg = colors.amber },

        ["@string"]           = { fg = colors.green },
        ["@string.escape"]    = { fg = colors.amber },
        ["@string.regex"]     = { fg = colors.amber },
        ["@string.special"]   = { fg = colors.amber },

        ["@number"]           = { fg = colors.orange },
        ["@number.float"]     = { fg = colors.orange },
        ["@boolean"]          = { fg = colors.orange },

        ["@comment"]          = { fg = colors.gray_lite, italic = true },
        ["@comment.todo"]     = { fg = colors.bg, bg = colors.gold, bold = true },
        ["@comment.note"]     = { fg = colors.bg, bg = colors.blue, bold = true },
        ["@comment.warning"]  = { fg = colors.bg, bg = colors.orange, bold = true },
        ["@comment.error"]    = { fg = colors.bg, bg = colors.red, bold = true },

        ["@operator"]         = { fg = colors.fg_dim },

        ["@keyword"]          = { fg = colors.yellow },
        ["@keyword.function"] = { fg = colors.yellow,  italic = true },
        ["@keyword.return"]   = { fg = colors.yellow },
        ["@keyword.import"]   = { fg = colors.amber },
        ["@keyword.operator"] = { fg = colors.yellow },
        ["@keyword.modifier"] = { fg = colors.yellow },
        ["@keyword.conditional"] = { fg = colors.yellow },
        ["@keyword.repeat"]   = { fg = colors.yellow },
        ["@keyword.exception"] = { fg = colors.yellow },

        ["@tag"]              = { fg = colors.gold },
        ["@tag.attribute"]    = { fg = colors.amber },
        ["@tag.delimiter"]    = { fg = colors.gray_lite },
        ["@tag.builtin"]      = { fg = colors.gold },

        ["@attribute"]        = { fg = colors.amber },
        ["@label"]            = { fg = colors.amber },

        ["@punctuation.delimiter"] = { fg = colors.fg_dim },
        ["@punctuation.bracket"]   = { fg = colors.fg_dim },
        ["@punctuation.special"]   = { fg = colors.amber },

        ["@markup.heading"]   = { fg = colors.gold,  bold = true },
        ["@markup.bold"]      = { bold = true },
        ["@markup.italic"]    = { italic = true },
        ["@markup.link"]      = { fg = colors.blue,  underline = true },
        ["@markup.link.url"]  = { fg = colors.blue,  underline = true },
        ["@markup.raw"]       = { fg = colors.green },
        ["@markup.list"]      = { fg = colors.amber },

        --  LSP semantic tokens
        ["@lsp.type.variable"]   = { link = "@variable" },
        ["@lsp.type.parameter"]  = { link = "@parameter" },
        ["@lsp.type.property"]   = { link = "@property" },
        ["@lsp.type.method"]     = { link = "@method" },
        ["@lsp.type.function"]   = { link = "@function" },
        ["@lsp.type.type"]       = { link = "@type" },
        ["@lsp.type.namespace"]  = { link = "@namespace" },
        ["@lsp.type.class"]      = { link = "@type" },
        ["@lsp.type.decorator"]  = { link = "@attribute" },
        ["@lsp.type.enum"]       = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.interface"]  = { link = "@type" },
        ["@lsp.type.struct"]     = { link = "@type" },
        ["@lsp.type.keyword"]    = { link = "@keyword" },
        ["@lsp.type.macro"]      = { link = "@function.macro" },
        ["@lsp.mod.deprecated"]  = { strikethrough = true },

        --  Git signs / gutter
        GitSignsAdd    = { fg = colors.green },
        GitSignsChange = { fg = colors.gold },
        GitSignsDelete = { fg = colors.red },

        --  Telescope (if present)
        TelescopeNormal       = { fg = colors.fg,       bg = colors.bg },
        TelescopeBorder       = { fg = colors.gray_lite, bg = colors.bg },
        TelescopePromptPrefix = { fg = colors.gold },
        TelescopeMatching     = { fg = colors.cream,     bold = true },
        TelescopeSelection    = { bg = colors.bg_dim },

        --  Indent-blankline / mini.indentscope
        IblIndent = { fg = "#2a2a2a" },
        IblScope  = { fg = colors.gray },
        MiniIndentscopeSymbol = { fg = colors.gray },
    }

    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    vim.opt.guicursor = "a:block-Cursor"
end

return M
