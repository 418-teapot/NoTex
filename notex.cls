\ProvidesClass{NoTex}[2023/02/28 v0.0.3]

\LoadClass[UTF8]{ctexrep}

% 设置备用字体
\xeCJKsetup{AutoFallBack = true}
\setCJKfallbackfamilyfont{\CJKrmdefault}{
    {Source Han Serif SC},
    {Source Han Serif CN},
    {PingFangSC-Regular}
}

% 设置页面格式
\RequirePackage{geometry}
\geometry{
    inner = 1in,
    outer = 1.5in,
    vmargin = 1in,
    marginparwidth = 1in,
}

% 设置封面格式
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

\RequirePackage{multirow}

\RequirePackage{color}
\RequirePackage[usenames, dvipsnames]{xcolor}
\definecolor{light-gray}{gray}{0.95}

% 设置代码高亮
\RequirePackage[outputdir=build]{minted}
\setminted{
    bgcolor = light-gray,
    xleftmargin = \parindent,
    linenos = true,
    autogobble = true,
    mathescape = true
}

\RequirePackage{enumitem}
\AddEnumerateCounter{\chinese}{\chinese}{}

% 设置绘图环境
\RequirePackage{tikz}
\usetikzlibrary{
    arrows,
    arrows.meta,
    backgrounds,
    calc,
    chains,
    decorations.pathreplacing,
    graphs,
    matrix,
    positioning,
    quotes,
}

\newenvironment{tikzfig}
    {
        \begin{figure}[!ht]
        \centering
        \begin{tikzpicture}[node font=\small]
    }
    {
        \end{tikzpicture}
        \end{figure}
    }

\RequirePackage{booktabs}

% 设置算法环境
\RequirePackage[ruled, linesnumbered]{algorithm2e}

\RequirePackage{amsthm}
\RequirePackage[many]{tcolorbox}
\RequirePackage{thmtools}
\newlength{\spacelength}
\settowidth{\spacelength}{\normalfont\ }

% 设置定义、定理、证明环境
\declaretheoremstyle[
    headfont = {\bfseries\sffamily\footnotesize},
    notefont = {\normalfont},
    %notebraces = {}{},
    bodyfont = {\normalfont}, %\itshape
    headpunct = {\newline},
    headformat = {
        \makebox[0pt][r] {\NAME\ \NUMBER\hspace{\marginparsep}}
        \hskip-\spacelength{\normalsize\NOTE}
    },
]{theorem}
\tcolorboxenvironment{theorem}{
    boxrule = 0pt,
    boxsep = 0pt,
    colback = {White!90!Dandelion},
    enhanced jigsaw,
    borderline west = {1pt}{0pt}{Dandelion},
    sharp corners,
    before skip = 10pt,
    after skip = 10pt,
    left = 5pt,
    right = 5pt,
    breakable,
}
\declaretheorem[style=theorem]{theorem}

\theoremstyle{theorem}
\newtheorem{definition}{Definition}
\tcolorboxenvironment{definition}{
    boxrule = 0pt,
    boxsep = 0pt,
    colback = {White!90!Cerulean},
    enhanced jigsaw,
    borderline west = {1pt}{0pt}{Cerulean},
    sharp corners,
    before skip = 10pt,
    after skip = 10pt,
    left = 5pt,
    right = 5pt,
    breakable,
}

\let\proof\relax
\let\endproof\relax
\declaretheoremstyle[
    headfont={\small\scshape},
    notefont={\normalsize\normalfont},
    %notebraces = {}{},
    bodyfont={\normalfont}, %\itshape
    headpunct={\newline},
    headformat={%
        \makebox[0pt][r]{\NAME\hspace{\marginparsep}}\hskip-\spacelength{\NOTE}},
]{proof}
\tcolorboxenvironment{proof}{
    boxrule = 0pt,
    boxsep = 0pt,
    colback = {White!90!WildStrawberry},
    enhanced jigsaw,
    borderline west = {1pt}{0pt}{WildStrawberry},
    sharp corners,
    before skip = 10pt,
    after skip = 10pt,
    left = 5pt,
    right = 5pt,
    breakable,
}
\declaretheorem[style=proof, qed=\qedsymbol]{proof}
