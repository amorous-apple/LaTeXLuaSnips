return {
	s(
		{trig="homework", dscr="A convenient boilerplate for math homework. Add/delete packages according to your personal needs.This boilerplate has two additional environments, 'ex' and 'sol' (excercise and solution respectively)"
		},
		fmta(
			[[
				\documentclass[12pt]{article}

				\usepackage{breqn}
				\usepackage[margin=1in]{geometry} 
				\usepackage{amsmath,amsthm,amssymb,enumitem}
				\usepackage[german,spanish,english]{babel}
				\usepackage{tensor}
				\usepackage{esint}
				\usepackage[T1]{fontenc}
				\usepackage{mathtools}
				\usepackage{siunitx}
				\newenvironment{ex}[2][Exercise]{\begin{trivlist}
				\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}

				\newenvironment{sol}[1][Solution]{\begin{trivlist}
				\item[\hskip \labelsep {\bfseries #1:}]}{\end{trivlist}}

				\newcommand{\meq}{\overset{!}{=}}
				\DeclarePairedDelimiter\bra{\langle}{\rvert}
				\DeclarePairedDelimiter\ket{\lvert}{\rangle}
				\DeclarePairedDelimiterX\brk[2]{\langle}{\rangle}{#1\,\delimsize\vert\,\mathopen{}#2}
				\DeclareSIUnit\angstrom{\text {Å}}

				%DECLARATION OF DELIMITERS%

				\DeclarePairedDelimiter\vb{\lvert}{\rvert}
				\DeclarePairedDelimiter\rb{(}{)}
				\DeclarePairedDelimiter\sqrb{[}{]}
				\DeclarePairedDelimiter\cb{\{}{\}}
				\DeclarePairedDelimiter\ab{\langle}{\rangle}
				\DeclarePairedDelimiter\db{\|}{\|}


				\begin{document}
				\noindent <> \hfill \today \\[30pt]
				\centerline{ \Large{ \textbf{ <> }}}

				<>

				\end{document}
			]],
			{ i(1, "Name(s)"),i(2, "Title of the homework"),i(0) }
	  	)
	),

	s({trig="booklet", dscr="A convienient, simple boilerplate to make a math booklet, ideal for texts shorter than books, but bigger than homeworks or articles."},
		fmta([[
			\documentclass{article}
			\usepackage{amsmath}
			\usepackage{amsthm}
			\usepackage{amssymb}
			\usepackage{tensor}
			\newtheorem{thm}{Theorem}
			\usepackage[english]{babel}
			\usepackage{graphicx}
			\title{<>}

			\author{<>}

			\date{\today}
			\begin{document}
			\maketitle
			\newpage
			<>
			\end{document}
			]],
			{ i(1, "Title"),i(2, "Name"),i(0) }
	  	)
	),

}
 
