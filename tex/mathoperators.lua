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

s({trig="ht",snippetType="autosnippet",dscr="hat accent",wordTrig = false},
fmta("\\hat{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="vec",snippetType="autosnippet",dscr="Vector",wordTrig = false},
fmta("\\vec{<>}",{i(1)}),{condition = in_mathzone}),



--MATHEMATICAL OPERATORS.

s({trig = "ff",snippetType="autosnippet",dscr= "fraction operator",wordTrig = false},fmta( "\\frac{<>}{<>}",{i(1),i(2)}),{condition = in_mathzone}),

s({trig="sqrt",snippetType="autosnippet",dscr="sqrt snippet.",wordTrig = false},
fmta("\\sqrt{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="grd",snippetType="autosnippet",dscr="Gradient",wordTrig = false},
fmta("\\nabla{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="div",snippetType="autosnippet",dscr="Divergence",wordTrig = false},
fmta("\\vec{\\nabla}\\cdot\\vec{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="rot",snippetType="autosnippet",dscr="Rotational",wordTrig = false},
fmta("\\vec{\\nabla}\\times\\vec{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="brk",snippetType="autosnippet",dscr="Hilbert product",wordTrig = false},
fmt("<{}|{}>{}",{i(1),i(2),i(0)}),{condition = in_mathzone}),

s({trig="par",snippetType="autosnippet",dscr="partial symbol",wordTrig = false},
fmta("\\partial_{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="pt",snippetType="autosnippet",dscr="Partial_time operator",wordTrig = false},
fmta("\\partial_{t}{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="px",snippetType="autosnippet",dscr="Partial_x operator",wordTrig = false},
fmta("\\partial_{x}{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="pd",snippetType="autosnippet",dscr="Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial<>}",{i(1),i(2)}),{condition = in_mathzone}),

s({trig="pdt",snippetType="autosnippet",dscr=" Time Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial t}",{i(1)}),{condition = in_mathzone}),

s({trig="pdx",snippetType="autosnippet",dscr="Position Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial x}",{i(1)}),{condition = in_mathzone}),

s({trig="up",snippetType="autosnippet",dscr="Exponent operator",wordTrig = false},
fmta("^{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="dn",snippetType="autosnippet",dscr="Exponent operator",wordTrig = false},
fmta("_{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="int",snippetType="autosnippet",dscr="Integral operator",wordTrig = false},
fmta("\\int_{<>}^{<>} {<>} \\,d<>",{i(1),i(2),i(3),i(4)}),{condition = in_mathzone}),

s({trig="iint",snippetType="autosnippet",dscr="Double Integral operator",wordTrig = false},
fmta("\\iint_{<>} {<>} \\,d<> \\,d<>",{i(1),i(2),i(3),i(4)}),{condition = in_mathzone}),

s({trig="infint",snippetType="autosnippet",dscr="Integral operator from -inf to inf",wordTrig = false},
fmta("\\int_{\\inf}^{-\\inf} {<>} \\,d<>",{i(1),i(2)}),{condition = in_mathzone}),

s({trig="sum",snippetType="autosnippet",dscr="Sum operator",wordTrig = false},
fmta("\\sum_{<>}^{<>} {<>} ",{i(1),i(2),i(3)}),{condition = in_mathzone}),







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

s({trig="pi",snippetType= "autosnippet",dscr= "Partial",wordTrig = false},
    {
      t("\\pi"),
  },{condition = in_mathzone}),

s({trig="hbar",snippetType= "autosnippet",dscr= "Plank constant 'hbar'",wordTrig = false},
    {
      t("\\hbar"),
  },{condition = in_mathzone}),

s({trig="la",snippetType= "autosnippet",dscr= "Left arrow",wordTrig = false},
    {
      t("\\Leftarrow"),
  },{condition = in_mathzone}),

s({trig="ra",snippetType= "autosnippet",dscr= "Right arrow",wordTrig = false},
    {
      t("\\Rightarrow"),
  },{condition = in_mathzone}),

s({trig="lra",snippetType= "autosnippet",dscr= "Left Right arrow",wordTrig = false},
    {
      t("\\Leftrightarrow"),
  },{condition = in_mathzone}),

--MATHEMATICAL FONTS (ONLY TO BE USED IN MATH MODE!) MAYBE MAKE THEM AUTOSNIPPETS?

s({trig="mfc",snippetType="autosnippet",dscr="Math font-> caligraphy",wordTrig = false},
fmta("\\mathcal{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="mfb",snippetType="autosnippet",dscr="Math font-> Bold",wordTrig = false},
fmta("\\mathbb{<>}",{i(1)}),{condition = in_mathzone}),

s({trig="mff",snippetType="autosnippet",dscr="Math font-> frak",wordTrig = false},
fmta("\\mathfrak{<>}",{i(1)}),{condition = in_mathzone}),




}
