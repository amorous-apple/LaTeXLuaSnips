return{

-- Use typewriter font.
s({trig="tt", dscr="Expands 'tt' into '\texttt{}'",wordTrig = false},
  fmta(
    "\\texttt{<>}",
    { i(1) }
  )
),

-- Insert a line break (\\)
s({trig="br",dscr="Insert a line break.",wordTrig = false},
  {t("\\\\")}),

-- DEPRECATED - Add author in boilerplate.
s({trig="auth",dscr="Latex author field",wordTrig = false},
fmta("\\author{<>}",{i(1)})),

-- DEPRECATED - Add title in boilerplate.
s({trig="tit",dscr="Title command field for latex",wordTrig = false},
fmta("\\title{<>}",{i(1)})),

s({trig="sec",dscr="Expands 'sec' into a Section command with a lable command",wordTrig = false},
fmta([[
\section{<>}
\label{sec:<>}
]],{i(1),i(2)})),

}
