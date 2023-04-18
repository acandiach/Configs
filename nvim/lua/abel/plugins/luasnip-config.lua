local ls = require("luasnip")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/abel/plugins/snippets/" })

ls.config.set_config({
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true,
	ext_opts = {
		[require("luasnip.util.types").choiceNode] = {
			active = {
				virt_text = { { "●", "GruvboxOrange" } },
			},
		},
	},
})

-- Key Maps
vim.keymap.set({ "i", "s" }, "<c-p>", function()
	if ls.expand_or_jumpable() then
		ls.expand()
	end
end)

vim.keymap.set({ "i", "s" }, "<c-l>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end)

vim.keymap.set({ "i", "s" }, "<c-h>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end)

vim.keymap.set({ "i", "s" }, "<c-j>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

vim.keymap.set({ "i", "s" }, "<c-k>", function()
	if ls.choice_active() then
		ls.change_choice(-1)
	end
end)
