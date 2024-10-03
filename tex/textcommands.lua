return {

	-- Use typewriter font.
	s({ trig = "tt", dscr = "Expands 'tt' into '\texttt{}'", wordTrig = false }, fmta("\\texttt{<>}", { i(1) })),

	-- Insert a line break (\\)
	s({ trig = "bk", snippetType = "autosnippet", dscr = "Insert a line break.", wordTrig = false }, { t("\\\\") }),

	s(
		{ trig = "sec", dscr = "Expands 'sec' into a Section command with a lable command", wordTrig = false },
		fmta(
			[[
\section{<>}
\label{sec:<>}


]],
			{ i(1), i(2) }
		)
	),

	s(
		{
			trig = "ssec",
			priority = 1001,
			dscr = "Expands 'ssec' into a subsection command with a lable command",
			wordTrig = false,
		},
		fmta(
			[[
\subsection{<>}
\label{subsec:<>}


]],
			{ i(1), i(2) }
		)
	),

	s(
		{
			trig = "sssec",
			priority = 1002,
			dscr = "Expands 'sssec' into a subsubsection command with a lable command",
			wordTrig = false,
		},
		fmta(
			[[
\subsubsection{<>}
\label{subsubsec:<>}


]],
			{ i(1), i(2) }
		)
	),

	s(
		{ trig = "bru", dscr = "Expands 'bru' into an underbrace and adds the comment. ", wordTrig = false },
		fmta(
			[[
\underbrace{<>}_{<>}
]],
			{ i(1), i(2) }
		)
	),

	s(
		{ trig = "bro", dscr = "Expands 'bro' into an overbrace and adds the comment.", wordTrig = false },
		fmta(
			[[
\overbrace{<>}^{<>}
]],
			{ i(1), i(2) }
		)
	),

	s({ trig = "emph", dscr = "emphasize", wordTrig = false }, fmta("\\emph{<>}", { i(1) })),

	s({ trig = "bf", dscr = "bold text", wordTrig = false }, fmta("\\textbf{<>}", { i(1) })),

	s({ trig = "it", dscr = "italic text", wordTrig = false }, fmta("\\textit{<>}", { i(1) })),

	s({ trig = "undr", dscr = "underlined text", wordTrig = false }, fmta("\\underline{<>}", { i(1) })),

	s(
		{
			trig = "hrule",
			snippetType = "autosnippet",
			dscr = "Expands 'hrule' into a horizontal line with some spacing above and below. ",
			wordTrig = false,
		},
		fmta(
			[[
\vspace{5pt}
\hrule
\vspace{5pt}
<>
]],
			{ i(1) }
		)
	),
}
