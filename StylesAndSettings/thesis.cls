\ProvidesClass{StylesAndSettings/thesis}
\NeedsTeXFormat{LaTeX2e}[2023-11-01]

\LoadClass[12pt, a4paper, openany]{memoir}
\RequirePackage{mathptmx} 							

\RequirePackage{graphicx}								

\RequirePackage{booktabs, longtable} 		

\RequirePackage{url} 									

\RequirePackage{hyperref}							

\RequirePackage{geometry}								

\RequirePackage{memhfixc}							
	
\RequirePackage{amsmath,amssymb,amsthm} 

\RequirePackage{setspace}								

\RequirePackage{StylesAndSettings/title}								

\RequirePackage{comment}								

\RequirePackage{enumitem}

\RequirePackage{silence}
\WarningFilter{memoir}{}
\WarningFilter{latex}{Unused global option}
\WarningFilter{biblatex}{File 'polish-apa.lbx' not found}
\WarningFilter{biblatex}{Ignoring mapping 'polish' -> 'polish-apa'}
\WarningFilter{biblatex}{Field 'extrayear' is deprecated}

\RequirePackage{xcolor}

	\newif\ifmycomments@comments
	\DeclareOption{instructions}{\mycomments@commentstrue}
	\DeclareOption{final}{\mycomments@commentsfalse}

	\ExecuteOptions{draft} % default is to have no comments.
	\excludecomment{instructional}

	\ProcessOptions\relax

	\ifmycomments@comments
		\includecomment{instructional} %include comments if true
        % Colour the instructions Purple
        % (not using #51247A, as too hard to distinguish from black)
        \definecolor{UQPurple}{HTML}{7030A0}

        \specialcomment{instructional}{%
        \begingroup\color{UQPurple}}{%
         \endgroup}
	\fi

\setlrmarginsandblock{20mm}{20mm}{*}
\setulmarginsandblock{20mm}{20mm}{*}

\setheadfoot{15mm}{\baselineskip}
\setheaderspaces{*}{\baselineskip}{*}

\def\baselinestretch{1.1}

\checkandfixthelayout

\makechapterstyle{mychapterstyle}{%
    \setlength{\beforechapskip}{0pt}%
    \renewcommand{\chapnamefont}{\Huge\rmfamily\bfseries}%
    \renewcommand{\chapnumfont}{\Huge\rmfamily\bfseries}%
    \renewcommand{\chaptitlefont}{\Huge\rmfamily\bfseries}%
    \renewcommand{\printchaptername}{\chapnamefont\chapnamefont Chapter}%
    \renewcommand{\printchapternum}{\chapnumfont\thechapter}%
    \renewcommand{\afterchapternum}{: }% Adds colon and space after the number
}

\chapterstyle{mychapterstyle}

\setsecheadstyle{\LARGE\rmfamily\bfseries}
\setsubsecheadstyle{\Large\rmfamily\bfseries}
\setsubsubsecheadstyle{\large\rmfamily\bfseries}
\setparaheadstyle{\normalfont\rmfamily}

\settocdepth{subsection}

\setsecnumdepth{subsection}
\maxsecnumdepth{subsection}
\settocdepth{subsection}
\maxtocdepth{subsection}

\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}

\settowidth{\cftchapternumwidth}{Chapter 88: }
\renewcommand*{\cftchapterpresnum}{Chapter~}
\renewcommand*{\cftchapteraftersnum}{:~}

\renewcommand*{\cftchapterleader}{\cftdotfill{4}}

\usepackage[format=plain,
            labelfont=it,
            textfont=it]{caption}

\linespread{1.4}
\interfootnotelinepenalty=10000

\setitemize{noitemsep, topsep=-1pt, leftmargin=*}

\setlist[enumerate]{noitemsep, topsep=-1pt, leftmargin=*}

\let\SQRT\sqrt
\renewcommand{\sqrt}[1]{\ensuremath{\SQRT{#1} \;}}

\renewcommand\bibname{References} % Name the Bibliography as References
