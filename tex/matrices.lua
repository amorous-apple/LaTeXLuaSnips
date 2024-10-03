-- Abbreviations used in this article and the LuaSnip docs
local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

--LATEX PACKAGE DEPENDENCIES: amssymb,amsmath
local in_mathzone = function()
	-- The `in_mathzone` function requires the VimTeX plugin
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {

	-- Horizontal vector snippits.

	-- nxn Matrix
	s(
		{ trig = "nxn", snippetType = "autosnippet", dscr = "Creates an nxn matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <>
				\end{pmatrix}
			]],
			{ i(1), i(2) }
		),
		{ condition = in_mathzone }
	),

	-- 1x2 Matrix
	s(
		{ trig = "1x2", snippetType = "autosnippet", dscr = "Creates a 1x2 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <>
				\end{pmatrix}
			]],
			{ i(1), i(2) }
		),
		{ condition = in_mathzone }
	),

	-- 1x3 Matrix
	s(
		{ trig = "1x3", snippetType = "autosnippet", dscr = "Creates a 1x3 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <> & <>
				\end{pmatrix}
			]],
			{ i(1), i(2), i(3) }
		),
		{ condition = in_mathzone }
	),

	-- 1x4 Matrix
	s(
		{ trig = "1x4", snippetType = "autosnippet", dscr = "Creates a 1x4 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <> & <> & <>
				\end{pmatrix}
			]],
			{ i(1), i(2), i(3), i(4) }
		),
		{ condition = in_mathzone }
	),

	--Vertical Matrices

	-- 2x1 Matrix
	s(
		{ trig = "2x1", snippetType = "autosnippet", dscr = "Creates a 2x1 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<>\\
					<>
				\end{pmatrix}
			]],
			{ i(1), i(2) }
		),
		{ condition = in_mathzone }
	),

	-- 3x1 Matrix
	s(
		{ trig = "3x1", snippetType = "autosnippet", dscr = "Creates a 3x1 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<>\\
					<>\\
					<>
				\end{pmatrix}
			]],
			{ i(1), i(2), i(3) }
		),
		{ condition = in_mathzone }
	),

	-- 4x1 Matrix
	s(
		{ trig = "4x1", snippetType = "autosnippet", dscr = "Creates a 4x1 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<>\\
					<>\\
					<>\\
					<>
				\end{pmatrix}
			]],
			{ i(1), i(2), i(3), i(4) }
		),
		{ condition = in_mathzone }
	),

	-- Squqre Matrices

	-- 2x2 Matrix
	s(
		{ trig = "2x2", snippetType = "autosnippet", dscr = "Creates a 2x2 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <>\\
					<> & <>
				\end{pmatrix}
			]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
			}
		),
		{ condition = in_mathzone }
	),

	-- 3x3 Matrix
	s(
		{ trig = "3x3", snippetType = "autosnippet", dscr = "Creates a 3x3 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <> & <>\\
					<> & <> & <>\\
					<> & <> & <>
				\end{pmatrix}
			]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
				i(7),
				i(8),
				i(9),
			}
		),
		{ condition = in_mathzone }
	),

	-- 4x4 Matrix
	s(
		{ trig = "4x4", snippetType = "autosnippet", dscr = "Creates a 4x4 matrix", wordTrig = false },
		fmta(
			[[
				\begin{pmatrix}
					<> & <> & <> & <>\\
					<> & <> & <> & <>\\
					<> & <> & <> & <>\\
					<> & <> & <> & <>
				\end{pmatrix}
			]],
			{
				i(1),
				i(2),
				i(3),
				i(4),
				i(5),
				i(6),
				i(7),
				i(8),
				i(9),
				i(10),
				i(11),
				i(12),
				i(13),
				i(14),
				i(15),
				i(16),
			}
		),
		{ condition = in_mathzone }
	),

	-- Unit Matrices
	-- NOT YET WORKING

	s(
		{
			trig = "u2x2",
			snippetType = "autosnippet",
			priority = 1001,
			dscr = "Creates a 2x2 unit matrix",
			wordTrig = false,
		},
		t([[
				\begin{pmatrix}
					1 & 0\\
					0 & 1
				\end{pmatrix}
			]]),
		{ condition = in_mathzone }
	),
}
