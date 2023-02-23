-- in case it isn't installed
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
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
