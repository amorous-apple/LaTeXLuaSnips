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

s({trig="ssec",priority = 1001, dscr="Expands 'ssec' into a subsection command with a lable command",wordTrig = false},
fmta([[
\subsection{<>}
\label{sec:<>}
]],{i(1),i(2)})),

s({trig="bru",dscr="Expands 'bru' into an underbrace and adds the comment. ",wordTrig = false},
fmta([[
\underbrace{<>}_{<>}
]],{i(1),i(2)})),

s({trig="bro",dscr="Expands 'bro' into an overbrace and adds the comment.",wordTrig = false},
fmta([[
\overbrace{<>}^{<>}
]],{i(1),i(2)})),

s({trig="emph",dscr="emphasize",wordTrig = false},
fmta("\\emph{<>}",{i(1)})),

s({trig="bf",dscr="bold text",wordTrig = false},
fmta("\\textbf{<>}",{i(1)})),

s({trig="it",dscr="italic text",wordTrig = false},
fmta("\\textit{<>}",{i(1)})),

s({trig="undr",dscr="underlined text",wordTrig = false},
fmta("\\underline{<>}",{i(1)})),

}
