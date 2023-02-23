local status, zenmode = pcall(require, "zen-mode")
if not status then
  return
end
zenmode.setup {
    window = {
        width = 130,
        options = {
            number = true,
            relativenumber = true,
        }
    },
}

vim.keymap.set("n", "<leader>zz", function()
    require("zen-mode").toggle()
    vim.wo.wrap = true
end)
