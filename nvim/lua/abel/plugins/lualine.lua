-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local mode = {
	function()
		return " " --" ",' '
	end,
	padding = { right = 1 },
}

lualine.setup({

	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = "",
		-- section_separators = { left = '', right = '' },
		--section_separators = { left = '', right = '' },

		section_separators = { left = "", right = "" },

		--component_separators = { left = '', right = ''},
		--section_separators = { left = '', right = ''},

		disabled_filetypes = { "NvimTree", "undotree", "diff" },
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = { mode },
		--{ 'mode', separator = { left = '' }, right_padding = 2 },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = {--[['encoding']]
			"fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
		--{ separator = { right = '' }, left_padding = 2 },
	},
	tabline = {},
	extensions = {},
})
