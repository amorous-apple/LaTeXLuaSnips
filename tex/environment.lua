return {
---------------ENVIRONMENTS (begin, fig*,gather*,equation, etc....)---------------
s({trig="eqn", dscr="Expands 'eq' into a (numbered) equation environment",wordTrig = false},
  fmta(
     [[
       \begin{equation}
           <>
       \end{equation}
     ]],
     { i(1) }
  )
),

s({trig="eq", dscr="Expands 'eq' into a (non-numbered) equation environment",wordTrig = false},
  fmta(
     [[
       \begin{equation*}
           <>
       \end{equation*}
     ]],
     { i(1) }
  )
),
s({trig="dm", dscr="inserts a display math (non-numbered equations) environment",wordTrig = false},
  fmta(
     [[
       \[
           <>
       \]
     ]],
     { i(1) }
  )
),
s({trig="im", dscr="Expands 'im' into an inline math environment",wordTrig = false},
  fmta(
     [[
     	\(<>\)
     ]],
     { i(1) }
  )
),
s({trig="begindoc", dscr="inserts begin/end doc environment",wordTrig = false},
  fmta(
     [[
       \begin{document}
           <>
       \end{document}
     ]],
     { i(1) }
  )
),
s({trig="beg", dscr="Inserts a begin{}/end{} environment",wordTrig = false},
  fmta(
     [[
       \begin{<>}
           <>
       \end{<>}
     ]],
     { i(1),i(0),rep(1) }
  )
),
s({trig="gat", dscr="Expands 'gat' into a (non-numbered) gather environment",wordTrig = false},
  fmta(
     [[
       \begin{gather*}
           <>
       \end{gather*}
     ]],
     { i(1) }
  )
),
s({trig="gatn", dscr="Expands 'gatn' into a (numbered) gather environment",wordTrig = false},
  fmta(
     [[
       \begin{gather}
           <>
       \end{gather}
     ]],
     { i(1) }
  )
),

--BRACKETS, PARENTHESES, AND DELIMITERS (NOTE: THE \LEFT \RIGHT COMMAND AUTOMATICALLY ADJUST THE SIZE OF THE DELIMITERS TO MATCH THE HEIGHT OF THE CONTENT INSIDE THEM.

s({trig="rb",dscr="Parentheses (Round brackets)",wordTrig= false},fmta([[
\left(<>\right) <>
]],{i(1),i(0)})),

s({trig="sb",dscr="Square Brackets",wordTrig= false},fmta([[
\left[<>\right] <>
]],{i(1),i(0)})),

s({trig="cb",dscr="Curly Brackets",wordTrig= false},fmta([[
\left\{<> \right\}<>
]],{i(1),i(0)})),

s({trig="ab",dscr="Angle Brackets",wordTrig= false},fmta([[
\left\langle <> \right\rangle<>
]],{i(1),i(0)})),

s({trig="vb",dscr="Vertical Brackets",wordTrig= false},fmta([[
\left| <> \right| <>
]],{i(1),i(0)})),

s({trig="db",dscr="double vertical Brackets",wordTrig= false},fmta([[
\left| <> \right| <>
]],{i(1),i(0)})),

}
