--Code to add a FMTA snippet:
--s({trig="",dscr="",wordTrig = false},
--fmta("partial_{<>}",{i(1)})),
--LATEX PACKAGE DEPENDENCIES: amssymb, tensor
return{
s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'",wordTrig = false},
  fmt(
    "\\frac{<>}{<>}",
    {
      i(1),
      i(2)
    },
    {delimiters = "<>",wordTrig = false} -- manually specifying angle bracket delimiters
  )
),
--MATH MODE ACCENTS (ESSENTIALLY EVERYTHING THAT GOES ABOVE)
s({trig="til",dscr="Tilde accent (Transposed operators)",wordTrig = false},
fmta("\\tilde{<>}",{i(1)})),
s({trig="dt",dscr="dot accent (Time derivative)",wordTrig = false},
fmta("\\dot{<>}",{i(1)})),
s({trig="ddt",dscr="double dot accent (double Time derivative)",wordTrig = false},
fmta("\\ddot{<>}",{i(1)})),
s({trig="br",dscr="bar accent",wordTrig = false},
fmta("\\bar{<>}",{i(1)})),
s({trig="ht",dscr="hat accent",wordTrig = false},
fmta("\\hat{<>}",{i(1)})),
s({trig="vec",dscr="Vector",wordTrig = false},
fmta("\\vec{<>}",{i(1)})),



--MATHEMATICAL OPERATORS.
s({trig="sqrt",snippetType="autosnippet",dscr="sqrt automatic snippet.",wordTrig = false},
fmta("\\sqrt{<>}",{i(1)})),
s({trig="grd",dscr="Gradient",wordTrig = false},
fmta("\\nabla{<>}",{i(1)})),
s({trig="div",dscr="Divergence",wordTrig = false},
fmta("\\vec{\\nabla}\\centerdot\\vec{<>}",{i(1)})),
s({trig="rot",dscr="Rotational",wordTrig = false},
fmta("\\vec{\\nabla}\\times\\vec{<>}",{i(1)})),
s({trig="brk",dscr="Hilbert product",wordTrig = false},
fmt("<{}|{}>{}",{i(1),i(2),i(0)})),
s({trig="par",dscr="partial symbol",wordTrig = false},
fmta("\\partial_{<>}",{i(1)})),
s({trig="pt",dscr="Partial_time operator",wordTrig = false},
fmta("\\partial_{t}{<>}",{i(1)})),
s({trig="px",dscr="Partial_x operator",wordTrig = false},
fmta("\\partial_{x}{<>}",{i(1)})),
s({trig="pd",dscr="Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial<>}",{i(1),i(2)})),
s({trig="pdt",dscr=" Time Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial t}",{i(1)})),
s({trig="pdx",dscr="Position Partial derivative leibniz notation",wordTrig = false},
fmta("\\fracc{\\partial<>}{\\partial x}",{i(1)})),
s({trig="up",dscr="Exponent operator",wordTrig = false},
fmta("^{<>}",{i(1)})),
s({trig="dn",dscr="Exponent operator",wordTrig = false},
fmta("_{<>}",{i(1)})),
s({trig="int",dscr="Integral operator",wordTrig = false},
fmta("\\int_{<>}^{<>} {<>} \\,d<>",{i(1),i(2),i(3),i(4)})),
s({trig="iint",dscr="Double Integral operator",wordTrig = false},
fmta("\\iint_{<>} {<>} \\,d<> \\,d<>",{i(1),i(2),i(3),i(4)})),
s({trig="infint",dscr="Integral operator from -inf to inf",wordTrig = false},
fmta("\\int_{\\inf}^{-\\inf} {<>} \\,d<>",{i(1),i(2)})),
s({trig="sum",dscr="Sum operator",wordTrig = false},
fmta("\\sum_{<>}^{<>} {<>} ",{i(1),i(2),i(3)})),







--MATH SYMBOLS/PHYSICS CONSTANTS
s({trig="nab", dscr = "nabla",wordTrig = false},
    {
      t("\\nabla"),
  }),
s({trig="dot", dscr = "center dot",wordTrig = false},
    {
      t("\\centerdot"),
  }),
s({trig="inf", dscr = "Infinity",wordTrig = false},
    {
      t("\\infty"),
  }),
s({trig="par", dscr = "Partial",wordTrig = false},
    {
      t("\\partial"),
  }),
s({trig="pi", dscr = "Partial",wordTrig = false},
    {
      t("\\pi"),
  }),
s({trig="hbr", dscr = "Plank constant 'hbar'",wordTrig = false},
    {
      t("\\hbar"),
  }),
s({trig="la", dscr = "Left arrow",wordTrig = false},
    {
      t("\\Leftarrow"),
  }),
s({trig="ra", dscr = "Right arrow",wordTrig = false},
    {
      t("\\Rightarrow"),
  }),
s({trig="lra", dscr = "Left Right arrow",wordTrig = false},
    {
      t("\\Leftrightarrow"),
  }),

--MATHEMATICAL FONTS (ONLY TO BE USED IN MATH MODE!) MAYBE MAKE THEM AUTOSNIPPETS?
s({trig="mfc",dscr="Math font-> caligraphy",wordTrig = false},
fmta("\\mathcal{<>}",{i(1)})),
s({trig="mfb",dscr="Math font-> Bold",wordTrig = false},
fmta("\\mathbb{<>}",{i(1)})),
s({trig="mff",dscr="Math font-> frak",wordTrig = false},
fmta("\\mathfrak{<>}",{i(1)})),



--MATRICES
s({trig="3x3",dscr="3x3 matrix with parentheses",wordTrig = false},
fmta([[
begin{pmatrix}
<> & <> & <>\\
<> & <> & <>\\
<> & <> & <> 
\end{pmatrix}
<>
]],{i(1),i(2),i(3),i(4),i(5),i(6),i(7),i(8),i(9),i(0)})),



}
