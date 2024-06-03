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
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end


return{
	
--MATH MODE ACCENTS (ESSENTIALLY EVERYTHING THAT GOES ABOVE)

s({trig="til",snippetType="autosnippet",dscr="Tilde accent (Transposed operators)",wordTrig = false},
fmta("\\tilde{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="dt",snippetType="autosnippet",dscr="dot accent (Time derivative)",wordTrig = false},
fmta("\\dot{<>}",{i(1)}),{condition = in_mathzone}),

-- Priority altered to prevent the triggering of dt.
s({trig="ddt",snippetType="autosnippet",priority=1001,dscr="double dot accent (double Time derivative)",wordTrig = false},
fmta("\\ddot{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="bar",snippetType="autosnippet",dscr="bar accent",wordTrig = false},
fmta("\\bar{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="ha",snippetType="autosnippet",dscr="hat accent",wordTrig = false},
fmta("\\hat{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="vec",snippetType="autosnippet",dscr="Vector",wordTrig = false},
fmta("\\vec{<>}",{i(1)}),{condition = in_mathzone}),



--MATHEMATICAL OPERATORS.

s({trig = "ff",snippetType="autosnippet",dscr= "fraction operator",wordTrig = false},
fmta( "\\frac{<>}{<>}",{i(1),i(2)}),{condition = in_mathzone}),

s({trig = "tff",snippetType="autosnippet",priority=1001,dscr= "total derivative operator",wordTrig = false},
fmta( "\\frac{d <>}{d <>}",{i(1),i(2)}),{condition = in_mathzone}),

s({trig = "pff",snippetType="autosnippet",priority=1001,dscr= "partial fraction operator",wordTrig = false},
fmta( "\\frac{\\partial <>}{\\partial <>}",{i(1),i(2)}),{condition = in_mathzone}),

s({trig = "ppff",snippetType="autosnippet",priority=1002,dscr= "partial partial fraction operator",wordTrig = false},
fmta( "\\frac{\\partial <>}{\\partial \\left(\\partial_{<>} <>\\right)}",{i(1),i(2),i(3)}),{condition = in_mathzone}),

s({trig="sqrt",snippetType="autosnippet",dscr="sqrt snippet.",wordTrig = false},
fmta("\\sqrt{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="grd",snippetType="autosnippet",dscr="Gradient",wordTrig = false},
fmta("\\nabla{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="div",snippetType="autosnippet",dscr="Divergence",wordTrig = false},
fmta("\\vec{\\nabla}\\cdot\\vec{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="rot",snippetType="autosnippet",dscr="Rotational",wordTrig = false},
fmta("\\vec{\\nabla}\\times\\vec{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="brk",snippetType="autosnippet",dscr="Hilbert product",wordTrig = false},
fmt("\\left<{}|{}\\right>{}",{i(1),i(2),i(0)}),{condition = in_mathzone}),

s({trig="bra",snippetType="autosnippet",dscr="Bra from bracket",wordTrig = false},
fmt("\\left<{}\\right|{}",{i(1),i(0)}),{condition = in_mathzone}),

s({trig="ket",snippetType="autosnippet",dscr="Ket from bracket",wordTrig = false},
fmt("\\left|{}\\right>{}",{i(1),i(0)}),{condition = in_mathzone}),

s({trig="pd",snippetType="autosnippet",dscr="partial derivative down",wordTrig = false},
fmta("\\partial_{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="pu",snippetType="autosnippet",dscr="partial derivative up",wordTrig = false},
fmta("\\partial^{<>}",{i(1)}),{condition = in_mathzone}),
--Might we worth to delete the following to, since the advantage over typing pd is not substantial
s({trig="pt",dscr="Partial_time operator",wordTrig = false},
fmta("\\partial_{t}{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="px",dscr="Partial_x operator",wordTrig = false},
fmta("\\partial_{x}{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="du",snippetType="autosnippet",dscr="Exponent operator (superscript)",wordTrig = false},
fmta("^{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="dn",snippetType="autosnippet",dscr="Exponent operator",wordTrig = false},
fmta("_{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="int",snippetType="autosnippet",dscr="Integral operator",wordTrig = false},
fmta("\\int_{<>}^{<>} {<>} \\,d <>",{i(1),i(2),i(3),i(4)}),{condition = in_mathzone}),

s({trig="iint",snippetType="autosnippet",priority= 1001,dscr="Double Integral operator",wordTrig = false},
fmta("\\iint_{<>} {<>} \\,d <> \\,d <>",{i(1),i(2),i(3),i(4)}),{condition = in_mathzone}),

s({trig="fint",snippetType="autosnippet",priority=1001,dscr="Integral operator from -inf to inf (full integral)",wordTrig = false},
fmta("\\int_{\\infty}^{-\\infty} {<>} \\,d <>",{i(1),i(2)}),{condition = in_mathzone}),

s({trig="sum",snippetType="autosnippet",dscr="Sum operator",wordTrig = false},
fmta("\\sum_{<>}^{<>} {<>} ",{i(1),i(2),i(3)}),{condition = in_mathzone}),

s({trig="ee",snippetType="autosnippet",dscr="exponential function",wordTrig = false},
fmta("e^{<>} <>",{i(1),i(0)}),{condition = in_mathzone}),

s({trig="ind",snippetType="autosnippet",dscr="exponential indices",wordTrig = false},
fmta("\\indices{<>}<>",{i(1),i(0)}),{condition = in_mathzone}),

s({trig="lim",snippetType="autosnippet",dscr="limit operator",wordTrig = false},
fmta("\\lim_{<> \\to <>} <> <>",{i(1),i(2),i(3),i(0)}),{condition = in_mathzone}),

s({trig="det",snippetType= "autosnippet",dscr= "Adds the determinant in text form.",wordTrig = false},
    {
      t("\\text{det}"),
  },{condition = in_mathzone}),






--MATH SYMBOLS/PHYSICS CONSTANTS

s({trig="nab",snippetType= "autosnippet",dscr= "nabla",wordTrig = false},
    {
      t("\\nabla"),
  },{condition = in_mathzone}),

s({trig="dot",snippetType= "autosnippet",dscr= "center dot",wordTrig = false},
    {
      t("\\cdot"),
  },{condition = in_mathzone}),

s({trig="inf",snippetType= "autosnippet",dscr= "Infinity",wordTrig = false},
    {
      t("\\infty"),
  },{condition = in_mathzone}),

s({trig="par",snippetType= "autosnippet",dscr= "Partial",wordTrig = false},
    {
      t("\\partial"),
  },{condition = in_mathzone}),

s({trig="hb",snippetType= "autosnippet",dscr= "Plank constant 'hbar'",wordTrig = false},
    {
      t("\\hbar"),
  },{condition = in_mathzone}),

s({trig="La",snippetType= "autosnippet",dscr= "Left arrow",wordTrig = false},
    {
      t("\\Leftarrow"),
  },{condition = in_mathzone}),

s({trig="Ra",snippetType= "autosnippet",dscr= "Right arrow",wordTrig = false},
    {
      t("\\Rightarrow"),
  },{condition = in_mathzone}),

s({trig="la",snippetType= "autosnippet",dscr= "Left arrow",wordTrig = false},
    {
      t("\\leftarrow"),
  },{condition = in_mathzone}),

s({trig="ra",snippetType= "autosnippet",dscr= "Right arrow",wordTrig = false},
    {
      t("\\rightarrow"),
  },{condition = in_mathzone}),


s({trig="lra",snippetType= "autosnippet", priority = 1001 ,dscr= "Left Right arrow",wordTrig = false},
    {
      t("\\Leftrightarrow"),
  },{condition = in_mathzone}),

s({trig="perp",snippetType= "autosnippet",dscr= "perpendicular symbol",wordTrig = false},
    {
      t("\\perp"),
  },{condition = in_mathzone}),

s({trig="neq",snippetType= "autosnippet",dscr= "not equal sign",wordTrig = false},
    {
      t("\\neq"),
  },{condition = in_mathzone}),

s({trig="deg",snippetType= "autosnippet",dscr= "degree",wordTrig = false},
    {
      t("^{\\circ}"),
  },{condition = in_mathzone}),

s({trig="prop",snippetType= "autosnippet",dscr= "proportional to",wordTrig = false},
    {
      t("\\propto"),
  },{condition = in_mathzone}),

s({trig="box",dscr= "box",wordTrig = false},
    {
      t("\\Box"),
  },{condition = in_mathzone}),

s({trig="fa",snippetType= "autosnippet",dscr= "for all",wordTrig = false},
    {
      t("\\forall"),
  },{condition = in_mathzone}),

s({trig="in",priority= 900, dscr= "in",wordTrig = false},
    {
      t("\\in"),
  },{condition = in_mathzone}),

s({trig="Re",snippetType= "autosnippet",dscr= "Real numbers",wordTrig = false},
    {
      t("\\Re"),
  },{condition = in_mathzone}),

s({trig="Im",snippetType= "autosnippet",dscr= "Imaginary numbers",wordTrig = false},
    {
      t("\\Im"),
  },{condition = in_mathzone}),

s({trig="sR",snippetType= "autosnippet",dscr= "The set of real numbers.",wordTrig = false},
    {
      t("\\mathbb{R}"),
  },{condition = in_mathzone}),

s({trig="sN",snippetType= "autosnippet",dscr= "The set of natural numbers.",wordTrig = false},
    {
      t("\\mathbb{N}"),
  },{condition = in_mathzone}),

s({trig="sZ",snippetType= "autosnippet",dscr= "The set of integers.",wordTrig = false},
    {
      t("\\mathbb{Z}"),
  },{condition = in_mathzone}),

s({trig="sQ",snippetType= "autosnippet",dscr= "The set of rational numbers.",wordTrig = false},
    {
      t("\\mathbb{Q}"),
  },{condition = in_mathzone}),

s({trig="sC",snippetType= "autosnippet",dscr= "The set of complex numbers.",wordTrig = false},
    {
      t("\\mathbb{C}"),
  },{condition = in_mathzone}),

s({trig="ex",snippetType= "autosnippet",dscr= "'There exists' symbol.",wordTrig = false},
    {
      t("\\exists"),
  },{condition = in_mathzone}),

s({trig="nex",snippetType= "autosnippet",priority = 1001, dscr= "'There does not exist' symbol.",wordTrig = false},
    {
      t("\\nexists"),
  },{condition = in_mathzone}),

s({trig="oex",snippetType= "autosnippet",priority = 1001, dscr= "There exists one and only one. ",wordTrig = false},
    {
      t("\\exists!"),
  },{condition = in_mathzone}),

s({trig="nul",snippetType= "autosnippet",dscr= "Empty set symbol. (Short for null)",wordTrig = false},
    {
      t("\\emptyset"),
  },{condition = in_mathzone}),

s({trig="qed",snippetType= "autosnippet",dscr= "Inserts an 'end-of-proof' box.",wordTrig = false},
    {
      t("\\square"),
  },{condition = in_mathzone}),

s({trig="cross",snippetType= "autosnippet",dscr= "Inserts the times/ cross product symbol. ",wordTrig = false},
    {
      t("\\times"),
  },{condition = in_mathzone}),

s({trig="leq",snippetType= "autosnippet",dscr= "Less than or equal to symbol.",wordTrig = false},
    {
      t("\\leq"),
  },{condition = in_mathzone}),

s({trig="geq",snippetType= "autosnippet",dscr= "Greater than or equal to symbol",wordTrig = false},
    {
      t("\\geq"),
  },{condition = in_mathzone}),

s({trig="nin",priority = 1001, dscr= "'Not in' symbol.",wordTrig = false},
    {
      t("\\notin"),
  },{condition = in_mathzone}),

s({trig="app",snippetType= "autosnippet",dscr= "Approximately symbol.",wordTrig = false},
    {
      t("\\approx"),
  },{condition = in_mathzone}),

s({trig="def",snippetType= "autosnippet",dscr= "'Defined as' symbol.",wordTrig = false},
    {
      t("\\equiv"),
  },{condition = in_mathzone}),

s({trig="gg",snippetType= "autosnippet",dscr= "Much greater than symbol.",wordTrig = false},
    {
      t("\\gg"),
  },{condition = in_mathzone}),

s({trig="ll",snippetType= "autosnippet",dscr= "Much less than symbol.",wordTrig = false},
    {
      t("\\ll"),
  },{condition = in_mathzone}),

s({trig="pm",snippetType= "autosnippet",dscr= "Plus/ Minus symbol.",wordTrig = false},
    {
      t("\\pm"),
  },{condition = in_mathzone}),

s({trig="mp",snippetType= "autosnippet",dscr= "Minus/ Plus symbol.",wordTrig = false},
    {
      t("\\mp"),
  },{condition = in_mathzone}),

s({trig="dag",snippetType= "autosnippet",dscr= "Dagger symbol.",wordTrig = false},
    {
      t("\\dagger"),
  },{condition = in_mathzone}),

s({trig="odt",snippetType= "autosnippet",priority=1001,dscr= "Odot symbol (e.g. Solar Masses)",wordTrig = false},
    {
      t("\\odot"),
  },{condition = in_mathzone}),

s({trig="meq",snippetType= "autosnippet",priority=1001,dscr= "Must exist symbol.",wordTrig = false},
    {
      t("\\meq"),
  },{condition = in_mathzone}),

s({trig="am",snippetType= "autosnippet",priority=1001,dscr= "Adds '& = ' for use with align. Think 'Ampersand' as the hint.",wordTrig = false},
    {
      t("& = "),
  },{condition = in_mathzone}),

s({trig="ae",snippetType= "autosnippet",priority=1001,dscr= "Adds '&\\' for use with align. Think 'Ampersand End' as the hint.",wordTrig = false},
    {
      t("&\\\\"),
  },{condition = in_mathzone}),
--MATHEMATICAL FONTS (ONLY TO BE USED IN MATH MODE!) MAYBE MAKE THEM AUTOSNIPPETS?

s({trig="mfc",snippetType="autosnippet",dscr="Math font-> caligraphy",wordTrig = false},
fmta("\\mathcal{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="mfb",snippetType="autosnippet",dscr="Math font-> Bold",wordTrig = false},
fmta("\\mathbb{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="mff",snippetType="autosnippet",priority = 1001, dscr="Math font-> frak",wordTrig = false},
fmta("\\mathfrak{<>}",{i(1)}),{condition = in_mathzone}),



--MATHEMATICAL FUNCTIONS (TRIG. FUNCTIONS, ETC.)

	s({trig="sin",snippetType="autosnippet",priority=1000,dscr="sin function",wordTrig = false},
fmta("\\sin<> ",{i(1)}),{condition = in_mathzone}),

s({trig="cos",snippetType="autosnippet",priority=1000,dscr="cos function",wordTrig = false},
fmta("\\cos<> ",{i(1)}),{condition = in_mathzone}),

s({trig="tan",snippetType="autosnippet",priority=1000,dscr="tan function",wordTrig = false},
fmta("\\tan<> ",{i(1)}),{condition = in_mathzone}),

s({trig="hsin",snippetType="autosnippet",priority=1001,dscr="hyperbolic sin function",wordTrig = false},
fmta("\\sinh<> ",{i(1)}),{condition = in_mathzone}),

s({trig="hcos",snippetType="autosnippet",priority=1001,dscr="hyperbolic cos function",wordTrig = false},
fmta("\\cosh<> ",{i(1)}),{condition = in_mathzone}),

s({trig="htan",snippetType="autosnippet",priority=1001,dscr="hyperbolic tan function",wordTrig = false},
fmta("\\tanh<> ",{i(1)}),{condition = in_mathzone}),

s({trig="asin",snippetType="autosnippet",priority=1001,dscr="arcsin function",wordTrig = false},
fmta("\\arcsin<> ",{i(1)}),{condition = in_mathzone}),

s({trig="acos",snippetType="autosnippet",priority=1001,dscr="arccos function",wordTrig = false},
fmta("\\arccos<> ",{i(1)}),{condition = in_mathzone}),

s({trig="atan",snippetType="autosnippet",priority=1001,dscr="arctan function",wordTrig = false},
fmta("\\arctan<> ",{i(1)}),{condition = in_mathzone}),

s({trig="log",snippetType="autosnippet",priority=1000,dscr="log function",wordTrig = false},
t("\\log"),{condition = in_mathzone}),

s({trig="ln",snippetType="autosnippet",priority=1001,dscr="natural log function",wordTrig = false},
fmta("\\ln \\left( <> \\right) ",{i(1)}),{condition = in_mathzone}),

}
