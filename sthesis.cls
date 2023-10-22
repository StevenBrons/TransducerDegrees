\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sthesis}[2014/08/16 Steven's thesis latex class]

\LoadClass{smath}

\newcommand{\togreek}[1]{\ifthenelse{\equal{#1}{a}}{\alpha}{\beta}}
% 	% \ifthenelse{\equal{#1}{b}}{\beta}{}
% 	% \ifthenelse{\equal{#1}{c}}{\gamma}{}
% }
\newcommand{\2}[0]{\mathbf{2^*}} % Set of finite words
\newcommand{\streams}[0]{\mathbf{2^{\N}}} % Set of streams
\newcommand{\s}[1]{\texttt{#1}} % Set of streams
\newcommand{\0}[0]{\mathbf{0}} % Set of streams
\newcommand{\norel}[0]{\not\vartriangle} % No transduction relation
\newcommand{\spir}[1][\N]{\raisebox{-0.2ex}{\includegraphics[scale=1]{{./images/spiralling_icon.pdf}}}} % No transduction relation
\newcommand{\fs}[1]{\langle #1 \rangle} % Function stream
\newcommand{\zd}[1]{\mathbf{0}} % Zero degree
\newcommand{\wa}[0]{\vec{\bm{\alpha}}} % Zero degree
\newcommand{\wb}[0]{\vec{\bm{\beta}}} % Zero degree
\newcommand{\help}[1]{\textbf{NOTE TO SUPERVISOR: #1}} % Supervisor needed
\newcommand{\citationNeeded}[0]{\textbf{CITATION NEEDED}} % Supervisor needed
\newcommand{\bs}[3]{\fs{f(#1)\mid #2 \leq n < #3}} % Supervisor needed
\newcommand{\lb}[2]{$\texttt{#1} \mid #2$}
\newcommand{\mass}[1][a]{\ifthenelse{\equal{#1}{a}}{\massA}{\massB}}
\newcommand{\massA}{\boldsymbol{\vec{\alpha}}}
\newcommand{\massB}{\boldsymbol{\vec{\beta}}}
\newcommand{\weight}[1][b]{\vec{\togreek{#1}}}
\newcommand{\shift}[2]{\mathcal{S}^{#1}(#2)}
\renewcommand{\tilde}[1]{\widetilde{#1}}
\let\olddots\dots
\renewcommand{\dots}{\;\olddots}
\newcommand{\tup}[1]{[#1]}
\newcommand{\TD}[0]{(\streams\sfrac{}{\equiv})}
\newcommand{\fzip}{zip}


\numberwithin{equation}{section}
\numberwithin{figure}{section}
\counterwithout{section}{chapter}
\makeatletter
\let\c@equation\c@figure
\makeatother

\renewcommand{\thechapter}{\Roman{chapter}}

\usepackage[margin=3.5cm]{geometry}
\usepackage{todonotes}
\usepackage{afterpage}
\usepackage[format=plain,
            labelfont=it,
						textfont=it]{caption}
						
% TIKZ
\usepackage{tikz}
\usetikzlibrary{automata, positioning, arrows, shapes, decorations.pathmorphing,calc}
\tikzstyle{curvy}=[dashed,decorate,yshift=0.3cm,decoration={snake,amplitude=3mm,segment length=8mm,post length=1mm}]
\tikzstyle{block}=[draw, rectangle]
\tikzset{
	->,
	>=stealth,
	node distance=3cm,
	every state/.style={line width=0.8pt},
	initial text=$ $,
	minimum size=2em,
	inner sep=1
}

\DeclareUnicodeCharacter{0088}{ }
\newcommand\blankpage{%
    \null
    \thispagestyle{empty}%
    \addtocounter{page}{-1}%
    \newpage}