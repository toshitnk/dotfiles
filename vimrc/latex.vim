iabbrev preamble \RequirePackage{plautopatch}<LF>
\\documentclass[english, dvipdfmx, a4paper]{jsarticle}<LF>
\\usepackage[utf8]{inputenc}<LF>
\\usepackage[top=10truemm, bottom=20truemm, left=15truemm, right=15truemm]{geometry} % mergin<LF>
\\renewcommand{\headfont}{\bfseries}<LF>
\<LF>
\% graphics<LF>
\\usepackage{graphicx}<LF>
\\usepackage{here}<LF>
\<LF>
\% link<LF>
\<LF>
\\usepackage{url}<LF>
\\usepackage[dvipdfmx, linktocpage]{hyperref} <LF>
\\usepackage{xcolor}<LF>
\\usepackage{pxjahyper}<LF>
\\hypersetup{<LF>
\	colorlinks=true,<LF>
\	citecolor=blue,<LF>
\	linkcolor=teal,<LF>
\	urlcolor=orange,<LF>
\}<LF>
\<LF>
\% math<LF>
\<LF>
\\usepackage{amsmath, amssymb} <LF>
\\usepackage{physics}<LF>
\\usepackage{mathrsfs}<LF>
\\usepackage{mathtools}<LF>
\<LF>
\% theoremstyle<LF>
\\usepackage{amsthm}<LF>
\\newtheoremstyle{break}<LF>
\{\topsep}{\topsep}%<LF>
\{}{}%<LF>
\{\bfseries}{}%<LF>
\{\newline}{}%<LF>
\\theoremstyle{break}<LF>
\\newtheorem{thm}{Theorem}[section]<LF>
\\newtheorem{defn}[thm]{Definition}<LF>
\\newtheorem{eg}[thm]{Example}<LF>
\\newtheorem{cl}[thm]{Claim}<LF>
\\newtheorem{cor}[thm]{Corollary}<LF>
\\newtheorem{fact}[thm]{Fact}<LF>
\\newtheorem{rem}[thm]{Remark}<LF>
\\newtheorem{prob}{Problem}[section]<LF>
\<LF>
\\makeatletter<LF>
\\newenvironment{pr}[1][\proofnam]{\par<LF>
\\topsep6\p@\@plus6\p@ \trivlist<LF>
\\item[\hskip\labelsep{\itshape #1}\@addpunct{\bfseries}]\ignorespaces<LF>
\}{%<LF>
\\endtrivlist<LF>
\}<LF>
\\newcommand{\proofnam}{\underline{Derivation.}}<LF>
\\makeatother<LF>
\<LF>
\<LF>
\<LF>
\<LF>
\% number<LF>
\<LF>
\%\makeatletter<LF>
\%\@addtoreset{equation}{section}<LF>
\%\makeatother<LF>
\%\numberwithin{equation}{section}<LF>
\%\renewcommand{\thefootnote}{\roman{footnote}.}<LF>
\%\renewcommand{\appendixname}{Appendix }<LF>
\<LF>
\\title{}<LF>
\\author{Toshiya Tanaka}<LF>
\\date{\today}<LF>
\<LF>
\\begin{document}<LF>
\	\maketitle<LF>
\<LF>
\	%\bibliography{}<LF>
\	%\bibliographystyle{ytamsalpha}<LF>
\	%\bibliographystyle{ytamsbeta}<LF>
\\end{document}<LF>


iabbrev mycommand
			\	% ordinary<LF>
			\	\newcommand{\R}{\mathbb{R}}<LF>
			\	\newcommand{\C}{\mathbb{C}}<LF>
			\	\newcommand{\Z}{\mathbb{Z}}<LF>
			\	<LF>
			\	<LF>
			\	% Physics %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<LF>
			\	<LF>
			\	% Feynman slash<LF>
			\	\newcommand{\slashed}[1]{#1\!\!\!/}<LF>
			\	% order<LF>
			\	<LF>
			\	%Lie algebra<LF>
			\	\renewcommand{\O}{\mathcal{O}}<LF>
			\	\newcommand{\SO}{\mathrm{SO}}<LF>
			\	\newcommand{\so}{\mathfrak{so}}<LF>
			\	\newcommand{\SU}{\mathrm{SU}}<LF>
			\	\newcommand{\su}{\mathfrak{su}}<LF>
			\	\newcommand{\SP}{\mathrm{SP}}<LF>
			\	\renewcommand{\sp}{\mathfrak{sp}}<LF>
			\	\newcommand{\SL}{\mathrm{SL}}<LF>
			\	\renewcommand{\sl}{\mathfrak{sl}}<LF>
			\	\newcommand{\GL}{\mathrm{GL}}<LF>
			\	\newcommand{\gl}{\mathfrak{gl}}<LF>
			\	\newcommand{\U}{\mathrm{U}}<LF>
			\	\renewcommand{\u}{\mathfrak{u}}<LF>
