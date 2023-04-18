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

local group = vim.api.nvim_create_augroup("ruby snippets", { clear = true })
local file_pattern = "*.rb"

-- local nombreSNip = s(
-- 	"nombreSNip",
-- 	fmt(
-- 		[[
-- <% {} %>
-- ]],
-- 		{
-- 			i(1, ""),
-- 		}
-- 	)
-- )
-- table.insert(snippets,nombreSNip)
return snippets, autosnippets
