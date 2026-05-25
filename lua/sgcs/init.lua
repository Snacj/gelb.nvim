local M = {}

function M.setup()
	local colors = {
		bg = "#2b2b2b",
		fg = "#e0e0e0",

		black = "#1f1f1f",
		gray = "#3a3a3a",

		green = "#6b9e78",
		yellow = "#c9b36a",
		red = "#c46a6a",

		blue = "#8fbcd4",
		cyan = "#7fbfb3",
		purple = "#a58fd6",
		orange = "#d19a66",
	}

	-- Define highlight groups
	local highlights = {
		Normal = { fg = colors.fg, bg = colors.bg },
	}

    -- Apply highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
