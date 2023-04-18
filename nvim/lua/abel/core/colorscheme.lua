-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end

------Grubvox Material------
-- vim.g["gruvbox_material_background"] = "hard"
-- vim.g["gruvbox_material_better_performance"] = 1
-- vim.g["gruvbox_material_cursor"] = "auto"
--vim.cmd("colorscheme gruvbox-material")

------ OneDark ------
--vim.cmd("colorscheme onedark")

------ Tokyonight ------
--vim.cmd[[colorscheme tokyonight]]
-- "moon", "storm" or "night"
-- require("tokyonight").setup({ style = "night" })

------ OneDark navarasu------
-- vim.cmd("colorscheme onedark")
-- darker, warmer, dee-- Lua
require("onedark").setup({
	style = "warmer", -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
})
require("onedark").load()
