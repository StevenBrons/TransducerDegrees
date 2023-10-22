\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{smath}[2014/08/16 Steven's math latex class]

\LoadClass[11pt,a4paper]{report}
\RequirePackage[utf8]{inputenc}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{graphicx}
\RequirePackage{float}
\RequirePackage{bm}
\RequirePackage{ifthen}
\RequirePackage{titlesec}
% \RequirePackage{minted}
\RequirePackage{scrextend}
\RequirePackage{hyperref}
\RequirePackage{enumerate}
\usepackage{caption}
\RequirePackage[capitalise]{cleveref}
% \RequirePackage{lipsum}
% \RequirePackage{listofitems}
\RequirePackage{mathtools}
\RequirePackage{etoolbox}
\RequirePackage{bookmark}
\RequirePackage{subfiles}
\RequirePackage{xfrac}

% Create usefull abreviations
\newcommand{\C}{\mathbb{C}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\T}{\mathcal{T}}
\newcommand{\of}{\subseteq}
\newcommand{\imp}{\rightarrow}
\newcommand{\E}{\exists}
\newcommand{\A}{\forall}
\newcommand{\arrow}{\longrightarrow}
\newcommand{\st}{\text{ s.t. }}
\newcommand{\abs}[1]{\lvert #1 \rvert}
\renewcommand{\mod}[0]{\;\text{mod}\;}
\let\empty\varnothing
\newcommand{\ol}[1]{\overline{#1}}
\newcommand{\set}[2]{\{ #1 \mid #2 \}}
\def\disobeylines{\catcode`\^^M=5 }
\def\multiset#1#2{\ensuremath{\left(\kern-.3em\left(\genfrac{}{}{0pt}{}{#1}{#2}\right)\kern-.3em\right)}}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\let\formalphi\phi
\let\phi\varphi

% Define theorems and definitions

\theoremstyle{definition}
% \counterwithout{equation}{section}
\newtheorem{theorem}[equation]{Theorem}
\newtheorem{corollary}[equation]{Corollary}
\newtheorem{lemma}[equation]{Lemma}
\newtheorem{definition}[equation]{Definition}
\newtheorem{refutation}[equation]{Refutation}
\newtheorem{proposition}[equation]{Proposition}
\newtheorem{example}[equation]{Example}
\newtheorem{notation}[equation]{Notation}
\crefname{figure}{Figure}{Figures}
\crefname{enumi}{item}{items}
\crefname{equation}{equation}{equations}

\setlength\parindent{0pt}

% Create new math environments
\newenvironment{smatrix}
{
    \left(
    \begin{matrix}
}
{
    \end{matrix}
    \right)
}

\newenvironment{sindent}
{
    \begin{addmargin}[1em]{0em}
}
{
    \end{addmargin}
}

\newenvironment{stp}[1]
{
    \textit{To Prove: } #1
    \begin{addmargin}[1em]{0em}
}
{
    \end{addmargin}
}

\newenvironment{sth}[1][]
{
    \textbf{Theorem:} #1
    \bgroup\obeylines
}
{
    \egroup
}

\newenvironment{sif}[1]
{
    \textbf{If } #1:
    \begin{sindent}
}
{ 
    \end{sindent}
}
