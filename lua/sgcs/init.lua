local M = {}

function M.setup()
    local colors = {
        bg       = "#1c1c1c",
        bg_hard  = "#141414",
        bg_soft  = "#252525",

        fg       = "#e4e0d0",

        black    = "#222222",
        gray     = "#5c5c5c",
        gray_light = "#888880",

        yellow       = "#ffdd33",
        yellow_dark  = "#c9a227",
        yellow_dim   = "#a88a1e",

        green        = "#95c47d",
        green_dim    = "#6a9e5a",

        red          = "#d75f5f",
        red_bright   = "#ff6e6e",

        cyan         = "#5fafaf",
        blue         = "#5f87af",

        purple       = "#9e7aba",

        orange       = "#d4924a",
    }

    local highlights = {
        Normal         = { fg = colors.fg,         bg = colors.bg },
        NormalFloat    = { fg = colors.fg,         bg = colors.bg_hard },
        NormalNC       = { fg = colors.fg,         bg = colors.bg },

        Comment        = { fg = colors.gray,       italic = true },

        String         = { fg = colors.green },
        Character      = { fg = colors.green },

        Number         = { fg = colors.yellow_dim },
        Float          = { fg = colors.yellow_dim },
        Boolean        = { fg = colors.red },

        Function       = { fg = colors.yellow,     bold = true },
        Method         = { fg = colors.yellow },

        Keyword        = { fg = colors.yellow_dark },
        Conditional    = { fg = colors.yellow_dark },
        Repeat         = { fg = colors.yellow_dark },
        Statement      = { fg = colors.yellow_dark },
        Exception      = { fg = colors.red },
        Label          = { fg = colors.yellow_dark },
        PreProc        = { fg = colors.yellow_dark },
        Include        = { fg = colors.yellow_dark },
        Define         = { fg = colors.yellow_dark },
        Macro          = { fg = colors.orange },

        Type           = { fg = colors.cyan },
        StorageClass   = { fg = colors.cyan },
        Structure      = { fg = colors.cyan },
        Typedef        = { fg = colors.cyan },

        Identifier     = { fg = colors.fg },
        Variable       = { fg = colors.fg },

        Constant       = { fg = colors.red_bright },

        Operator       = { fg = colors.gray_light },
        Delimiter      = { fg = colors.gray_light },

        Special        = { fg = colors.orange },
        SpecialChar    = { fg = colors.orange },
        Tag            = { fg = colors.yellow },

        ["@variable"]              = { fg = colors.fg },
        ["@variable.builtin"]      = { fg = colors.red_bright },
        ["@variable.parameter"]    = { fg = colors.fg },
        ["@variable.member"]       = { fg = colors.fg },

        ["@function"]              = { fg = colors.yellow,      bold = true },
        ["@function.call"]         = { fg = colors.yellow },
        ["@function.builtin"]      = { fg = colors.yellow,      bold = true },
        ["@function.macro"]        = { fg = colors.orange },

        ["@method"]                = { fg = colors.yellow },
        ["@method.call"]           = { fg = colors.yellow },
        ["@constructor"]           = { fg = colors.cyan },

        ["@keyword"]               = { fg = colors.yellow_dark },
        ["@keyword.function"]      = { fg = colors.yellow_dark },
        ["@keyword.operator"]      = { fg = colors.yellow_dark },
        ["@keyword.return"]        = { fg = colors.yellow_dark },
        ["@keyword.import"]        = { fg = colors.yellow_dark },
        ["@keyword.conditional"]   = { fg = colors.yellow_dark },
        ["@keyword.repeat"]        = { fg = colors.yellow_dark },
        ["@keyword.exception"]     = { fg = colors.red },

        ["@string"]                = { fg = colors.green },
        ["@string.escape"]         = { fg = colors.orange },
        ["@string.special"]        = { fg = colors.orange },

        ["@number"]                = { fg = colors.yellow_dim },
        ["@number.float"]          = { fg = colors.yellow_dim },
        ["@boolean"]               = { fg = colors.red },

        ["@type"]                  = { fg = colors.cyan },
        ["@type.builtin"]          = { fg = colors.cyan },
        ["@type.definition"]       = { fg = colors.cyan },
        ["@type.qualifier"]        = { fg = colors.yellow_dark },

        ["@constant"]              = { fg = colors.red_bright },
        ["@constant.builtin"]      = { fg = colors.red_bright },
        ["@constant.macro"]        = { fg = colors.orange },

        ["@comment"]               = { fg = colors.gray,       italic = true },
        ["@comment.doc"]           = { fg = colors.gray_light, italic = true },

        ["@operator"]              = { fg = colors.gray_light },

        ["@property"]              = { fg = colors.fg },
        ["@field"]                 = { fg = colors.fg },

        ["@module"]                = { fg = colors.cyan },
        ["@namespace"]             = { fg = colors.cyan },

        ["@tag"]                   = { fg = colors.yellow },
        ["@tag.attribute"]         = { fg = colors.green },
        ["@tag.delimiter"]         = { fg = colors.gray_light },

        ["@punctuation.delimiter"] = { fg = colors.gray_light },
        ["@punctuation.bracket"]   = { fg = colors.gray_light },
        ["@punctuation.special"]   = { fg = colors.orange },

        ["@markup.heading"]        = { fg = colors.yellow, bold = true },
        ["@markup.link"]           = { fg = colors.cyan,   underline = true },
        ["@markup.strong"]         = { bold = true },
        ["@markup.italic"]         = { italic = true },
        ["@markup.raw"]            = { fg = colors.green },

        Cursor         = { fg = colors.bg,         bg = colors.yellow },
        CursorIM       = { fg = colors.bg,         bg = colors.yellow },
        CursorLine     = { bg = colors.black },
        CursorColumn   = { bg = colors.black },
        CursorLineNr   = { fg = colors.yellow,     bold = true },

        Visual         = { bg = "#3a3520" },
        VisualNOS      = { bg = "#2e2a18" },

        LineNr         = { fg = colors.gray },
        SignColumn     = { fg = colors.gray,        bg = colors.bg },
        FoldColumn     = { fg = colors.gray,        bg = colors.bg },
        Folded         = { fg = colors.gray_light,  bg = colors.bg_soft },

        ColorColumn    = { bg = colors.bg_soft },
        Conceal        = { fg = colors.gray },

        Search         = { fg = colors.bg_hard,     bg = colors.yellow },
        IncSearch      = { fg = colors.bg_hard,     bg = colors.yellow,  bold = true },
        CurSearch      = { fg = colors.bg_hard,     bg = colors.yellow,  bold = true },
        Substitute     = { fg = colors.bg_hard,     bg = colors.orange },

        MatchParen     = { fg = colors.yellow,      bold = true,         underline = true },

        Pmenu          = { fg = colors.fg,          bg = colors.black },
        PmenuSel       = { fg = colors.bg_hard,     bg = colors.yellow_dark },
        PmenuSbar      = { bg = colors.bg_soft },
        PmenuThumb     = { bg = colors.gray },

        StatusLine     = { fg = colors.fg,          bg = colors.black },
        StatusLineNC   = { fg = colors.gray,        bg = colors.black },

        TabLine        = { fg = colors.gray,        bg = colors.black },
        TabLineSel     = { fg = colors.yellow,      bg = colors.bg,      bold = true },
        TabLineFill    = { bg = colors.black },

        VertSplit      = { fg = colors.gray },
        WinSeparator   = { fg = colors.gray },

        FloatBorder    = { fg = colors.yellow_dim,  bg = colors.bg_hard },
        FloatTitle     = { fg = colors.yellow,      bg = colors.bg_hard,  bold = true },

        ErrorMsg       = { fg = colors.red_bright },
        WarningMsg     = { fg = colors.orange },
        ModeMsg        = { fg = colors.yellow },
        MoreMsg        = { fg = colors.yellow },

        DiagnosticError = { fg = colors.red },
        DiagnosticWarn  = { fg = colors.orange },
        DiagnosticInfo  = { fg = colors.cyan },
        DiagnosticHint  = { fg = colors.yellow_dim },

        DiagnosticUnderlineError = { underline = true, sp = colors.red },
        DiagnosticUnderlineWarn  = { underline = true, sp = colors.orange },
        DiagnosticUnderlineInfo  = { underline = true, sp = colors.cyan },
        DiagnosticUnderlineHint  = { underline = true, sp = colors.yellow_dim },

        DiffAdd        = { bg = "#1e2d1a" },
        DiffChange     = { bg = "#2a2510" },
        DiffDelete     = { bg = "#2d1a1a" },
        DiffText       = { bg = "#3d3510" },

        GitSignsAdd    = { fg = colors.green },
        GitSignsChange = { fg = colors.yellow_dim },
        GitSignsDelete = { fg = colors.red },

        NonText        = { fg = colors.gray },
        Whitespace     = { fg = "#333333" },
        EndOfBuffer    = { fg = colors.black },
        Directory      = { fg = colors.yellow },
        Title          = { fg = colors.yellow,     bold = true },
        WildMenu       = { fg = colors.bg_hard,    bg = colors.yellow },
        Question       = { fg = colors.yellow },

        SpellBad       = { underline = true, sp = colors.red },
        SpellCap       = { underline = true, sp = colors.orange },
        SpellRare      = { underline = true, sp = colors.purple },
        SpellLocal     = { underline = true, sp = colors.cyan },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    vim.opt.guicursor = "a:block-Cursor"
end

return M

