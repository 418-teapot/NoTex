%===-- NoTex.cls - Document Class ------------------------------------------===%
%
%===------------------------------------------------------------------------===%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NoTex/NoTex}[2023/11/27 v0.0.4]

% Based on ctexrep.
\LoadClass[UTF8]{ctexrep}

% Set fall back fonts.
\xeCJKsetup{AutoFallBack = true}
\setCJKfallbackfamilyfont{\CJKrmdefault}{
    {Source Han Serif SC},
    {Source Han Serif CN},
    {PingFangSC-Regular}
}

% Set book cover style.
\renewcommand*\maketitle{
    \thispagestyle{empty}
    \vspace*{\stretch{0.5}}
    \noindent\begin{minipage}{\textwidth}
    \raggedleft
    {\huge \bfseries \@title}
    \noindent\rule[-1ex]{\textwidth}{5pt}\\[2.5ex]
    \end{minipage}
    \vspace{\stretch{2}}
}

\RequirePackage{NoTex/Style/Page}
\RequirePackage{NoTex/Style/Code}
\RequirePackage{NoTex/Style/Algo}
\RequirePackage{NoTex/Style/Theorem}
