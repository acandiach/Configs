local ls = require("luasnip") --{{{
local s = ls.s --> snippet
local i = ls.i --> insert node
local t = ls.t --> text node

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("Lua snippets", { clear = true })
local file_pattern = "*.lua"

-- Forma 1 se hacer snippets
local myFirstSnippet = s("myFirstSnippet", {
	t("ojala funcione esta wea"),
	i(1, "placeholder_text"),
	t({ "", "is another text" }),
})
table.insert(snippets, myFirstSnippet)

-- forma 2 de crear snipets basicos
local mySecondSnippet = s(
	"mySecondSnippet",
	fmt(
		[[
local {} = function({})
 {}
end
]],
		{
			i(1, "myVar"), --> la i es para insertar, le pasamos la posision y luego el placeholder o lo dejamos en blanco
			c(2, { t(""), t("myArg") }), --> c es para choice (eleccion), primero le damos la posision 2 y luego le agregamos las opciones en este caso le dimos 2 opciones vacio y "myArg"
			i(3, ""), --> aqui lo dejamos en blanco
		}
	)
)
-- recordar que por cada {} le pasamos un accion, en este caso le pasamos al primer {} i al segundo c y al tercero i con sus respectivos valores
table.insert(snippets, mySecondSnippet)

-- Para crear snippets automaticos con palabras claves o regex, trig definimos la llamda con una experesion
-- regular segun el lenguaje de programacion, luego en regTrig indicamos si esta acirivo este metodo o no
-- y por ultimo indicamos hidden para ocultar este snippets de la lista de cmp (por defecto es false)

-- autosnippets con regex
local myFirstAutoSnip = s({ trig = "normal%d", regTrig = true, hidden = false }, { t("auto snippet listo") })
table.insert(autosnippets, myFirstAutoSnip)

-- autosnippets con palabra clave
local mySecondAutoSnip = s({ trig = "autosnip" }, { t("auto snippet listo") })
table.insert(autosnippets, mySecondAutoSnip)

return snippets, autosnippets
