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

s({trig="dmat", dscr="Expands 'dmat' into a (non-numbered) dmath environemtn (for multi-line equaitons)",wordTrig = false},
  fmta(
     [[
\begin{dmath*}
	<>
\end{dmath*}
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
s({trig="fla", dscr="Expands 'fla' into a (non-numbered) flalign environment",wordTrig = false},
  fmta(
     [[
\begin{flalign*}
	<>
\end{flalign*}
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
s({trig="ali", dscr="Expands 'ali' into a (not-numbered) align environment",wordTrig = false},
  fmta(
     [[
\begin{align*}
	<>
\end{align*}
     ]],
     { i(1) }
  )
),
s({trig="alin", dscr="Expands 'alin' into a (numbered) align environment",wordTrig = false},
  fmta(
     [[
\begin{align}
	<>
\end{align}
     ]],
     { i(1) }
  )
),

s({trig="enuma", dscr="Expands 'enuma' into an alphabetical enumerate with an item.",wordTrig = false},
  fmta(
     [[
\begin{enumerate}[label=(\alph*)]
	\item <>
\end{enumerate}
     ]],
     { i(1) }
  )
),

s({trig="enumA", dscr="Expands 'enumA' into an alphabetical enumerate (captical letters) with an item.",wordTrig = false},
  fmta(
     [[
\begin{enumerate}[label=(\Alph*)]
	\item <>
\end{enumerate}
     ]],
     { i(1) }
  )
),

s({trig="enumr", dscr="Expands 'enumr' into a lower case roman numeral enumerate with an item.",wordTrig = false},
  fmta(
     [[
\begin{enumerate}[label=(\roman*)]
	\item <>
\end{enumerate}
     ]],
     { i(1) }
  )
),

s({trig="enumR", dscr="Expands 'enumR' into an apper case roman numeral enumerate with an item.",wordTrig = false},
  fmta(
     [[
\begin{enumerate}[label=(\Roman*)]
	\item <>
\end{enumerate}
     ]],
     { i(1) }
  )
),

s({trig="itemize", dscr="Expands 'itemize' into an un-ordered list with an item. ",wordTrig = false}, fmta(
     [[
\begin{itemize}
	\item <>
\end{itemize}
     ]],
     { i(1) }
  )
),

s({trig="ex", dscr="Adds an exercise environment",wordTrig = false},
  fmta(
     [[
\begin{ex}
	<>
\end{ex}
     ]],
     { i(1) }
  )
),

s({trig="sol", dscr="Adds a 'solution' environment. ",wordTrig = false},
  fmta(
     [[
\begin{sol} <> \end{sol}
<>
     ]],
     { i(1), i(2) }
  )
),

s({trig="itm",snippetType= "autosnippet",dscr= "Adds an item for a list.",wordTrig = false},
    {
      t("\\item "),
  }),

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
\normed*{<>} <>
]],{i(1),i(0)})),

s({trig="db",dscr="double vertical Brackets",wordTrig= false},fmta([[
\left\| <> \right\| <>
]],{i(1),i(0)})),

----------------------------------------------INSIDE MATH ENVIRONMENTS/COMMANDS-----------------------------------------------------

s({trig="boxed",snippetType= "autosnippet",dscr="Boxed equation command",wordTrig= false},fmta([[
\boxed{<>} <>
]],{i(1),i(0)})),

s({trig="txt",snippetType="autosnippet", dscr="normal text inside math environment",wordTrig= false},fmta([[
\text{<>} <>
]],{i(1),i(0)})),

s({trig="2fun",dscr="piecewise function with 2 cases",wordTrig= false},fmta([[
\begin{cases}
        <> & \text{if } <> \in <> \\
        <> & \text{if } <> \in <> 
\end{cases}<>
]],{i(1),i(2),i(3),i(4),i(5),i(6),i(0)})),

s({trig="3fun",dscr="piecewise function with 2 cases",wordTrig= false},fmta([[
\begin{cases}
        <> & \text{if } <> \in <> \\
        <> & \text{if } <> \in <> \\
	<> & \text{if } <> \in <> 
\end{cases}<>
]],{i(1),i(2),i(3),i(4),i(5),i(6),i(7),i(8),i(9),i(0)})),









}
