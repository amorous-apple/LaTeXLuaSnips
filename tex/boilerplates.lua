return {
	s(
		{trig="homework", dscr="A convenient boilerplate for math homework. Add/delete packages according to your personal needs.This boilerplate has two additional environments, 'ex' and 'sol' (excercise and solution respectively)"
		},
		fmta(
			[[
				\documentclass[12pt]{article}

				\usepackage[margin=1in]{geometry} 
				\usepackage{amsmath,amsthm,amssymb}
				\usepackage[german,spanish,english]{babel}
				\usepackage{tensor}
				\usepackage[T1]{fontenc}
				\newenvironment{ex}[2][Exercise]{\begin{trivlist}
				\item[\hskip \labelsep {\bfseries #1}\hskip \labelsep {\bfseries #2.}]}{\end{trivlist}}

				\newenvironment{sol}[1][Solution]{\begin{trivlist}
				\item[\hskip \labelsep {\bfseries #1:}]}{\end{trivlist}}


				\begin{document}
				\noindent <> \hfill {\Large <>} \hfill \today
				<>
				\end{document}
			]],
			{ i(1, "Name"),i(2, "Title of the homework"),i(0) }
	  	)
	),
}
 
