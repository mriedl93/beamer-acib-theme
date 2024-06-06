\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{biotop}

\LoadClass[aspectratio=169]{beamer}

\RequirePackage{tikz}
\RequirePackage{setspace}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage[british]{babel}
\RequirePackage[useregional]{datetime2}
\RequirePackage{changepage}
\usetikzlibrary{positioning}
\usetikzlibrary{calc}

% \definecolor{acibgreen}{rgb}{26,229,26}
% \definecolor{bokugreen}{rgb}{79,183,71}
% \definecolor{biotopblue}{rgb}{0,0,255}
% \definecolor{biotopred}{rgb}{255,0,0}
% \definecolor{biotechteal}{rgb}{74,177,213}
% \definecolor{black}{rgb}{0,0,0}
% \definecolor{biotopgrey}{RGB}{221,221,221}
%
% \useoutertheme{shadow}
% \useoutertheme{split}


\DeclareOption{fira}{%
  \setsansfont[%
  ItalicFont={Fira Sans Italic},%
  BoldFont={Fira Sans SemiBold},%
  BoldItalicFont={Fira Sans Italic}%
  ]{Fira Sans Regular}
}

\DeclareOption{work}{%
  \setsansfont[%
  ItalicFont={Work Sans Italic},%
  BoldFont={Work Sans SemiBold},%
  BoldItalicFont={Work Sans Italic}%
  ]{Work Sans Regular}
}

\ProcessOptions\relax


% ================================================
%   Colors
% ================================================

\definecolor{green}{RGB}{185,205,79}
\definecolor{blue}{RGB}{0,152,161}
\definecolor{bokugreen}{rgb}{79,183,71}
\definecolor{biotopblue}{rgb}{0,0,255}
\definecolor{biotopred}{rgb}{255,0,0}
\definecolor{biotechteal}{rgb}{74,177,213}
\definecolor{black}{RGB}{62,61,64}
\definecolor{biotopgrey}{RGB}{221,221,221}
\definecolor{boku-cool-green}{RGB}{0,170,90}
\definecolor{boku-grape-purple}{RGB}{75,40,140}
\definecolor{boku-apricot-orange}{RGB}{230,100,30}


\setbeamercolor{structure}{fg=black}
\setbeamercolor{acibcolor}{fg=green}
\setbeamercolor{acibcolorheadline}{fg=black,bg=green!15}
\setbeamercolor{biotopcolor}{fg=gray}
\setbeamercolor{block body}{bg=biotopgrey!50}
\setbeamercolor{block title}{fg=black, bg=biotopgrey}
\setbeamercolor{itemize item}{fg=black}
\setbeamercolor{itemize subitem}{fg=black}
\setbeamercolor{section number projected}{bg = biotopgrey, fg = white}

\setbeamercolor{alerted text}{fg=black}


% TODO: Fix this. @ in package is different
\makeatletter
% \newcommand{\event}[1]{#1}
\def\event#1{\gdef\@event{#1}}
\newcommand{\insertevent}{\@event}
\makeatother


\setbeamerfont{title}{series=\bfseries}
\setbeamerfont{title}{size=\Large}
\setbeamerfont{frametitle}{size=\Large}
\setbeamerfont{framesubtitle}{size=\small}
\setbeamerfont{author}{size=\normalsize}
\setbeamerfont{date}{size=\scriptsize}
\setbeamerfont{institute}{size=\small}

\setbeamerfont{alerted text}{series=\bfseries}


\setbeamertemplate{title page}{%

    \begin{tikzpicture}
    [remember picture, overlay]
    {
        \node [anchor=base west] at ($(current page.north west) + (1, -1.5) $)
        {\usebeamerfont{date} \insertevent, \insertdate};
    }
    \end{tikzpicture}

    \vspace*{40pt}


    \begin{center}
        {%
            \usebeamerfont{title}
            \inserttitle
        }
        \par\vspace{20pt}

        {%
            \usebeamerfont{author}
            \insertauthor
        }
        \par\vspace{12pt}
        {%
            \usebeamerfont{institute}
            \insertinstitute
        }
        \par\medskip
    \end{center}


    \begin{tikzpicture}[remember picture,overlay]
        % \node[anchor=north east] (aciblogo) [xshift=-105pt,yshift=-10pt]
        %     at (current page.north east)
        % { \includegraphics[height=1.2cm]{logos/logo_acib_500.png} };
        \node[anchor=south east] (bokulogo) [xshift=-15pt,yshift=10pt]
            at (current page.south east)
        { \includegraphics[height=1.0cm]{logos/BOKU_Hauptlogo_CMYK} };
        \node[anchor=north east] (imicslogo) [xshift=-15pt,yshift=-10pt]
            at (current page.north east)
        { \includegraphics[height=1.0cm]{logos/imics-logo.jpg} };

        {
            \usebeamercolor{biotopcolor}
            \draw[color=white, fill=biotopgrey] (current page.south west) --
                ++(0, 1.45) -- ++(4.2, -1.45) -- cycle;
            \node[anchor=south west] (biotoplogo)
                at ($(current page.south west) + (0, 0)$)
                { \includegraphics[height=0.8cm]{logos/biotop_dim_colors.png} };
        }

    \end{tikzpicture}
}


\setbeamertemplate{background}{}

\setbeamertemplate{frametitle}{%
    \begin{adjustwidth}{-1em}{0em}
        {%
            \usebeamerfont{frametitle}\insertframetitle\vskip3pt
        }%
        \ifx\insertframesubtitle\@empty\else%
            {%
                \usebeamerfont{framesubtitle}%
                \insertframesubtitle\vskip4pt
            }%
        \fi%
    \end{adjustwidth}
}

\setbeamertemplate{footline}{%

    \begin{beamercolorbox}[ht=20pt, wd = \paperwidth]{white}
    \end{beamercolorbox}

    {
        \usebeamercolor{biotopcolor}
        \begin{tikzpicture}[remember picture,overlay]
            \draw[color=white, fill=biotopgrey] (current page.south west) --
                ++(0, 1.4) -- ++(4, -1.4) -- cycle;
            \node[anchor=south west] (biotoplogo)
                at ($(current page.south west) + (0, 0)$)
                { \includegraphics[height=0.8cm]{logos/biotop_dim_colors.png} };
            \node[anchor = south east] (bokulogo)
                at ($(current page.south east) + (-0.15, 0.08)$)
                {\includegraphics[height = .5cm]{logos/BOKU_Hauptlogo_CMYK}};
            \node[anchor = south east] (fwflogo)
                [below left = -0.72 and -0.05 of bokulogo]
                {\includegraphics[height=.7cm]{logos/FWF_Logo_Zusatz_Dunkelblau_RGB_DE}};
            \node[anchor=south] (slidenumber)
                at ($(current page.south) + (0, .08)$)
                {\scriptsize \insertframenumber};
        \end{tikzpicture}
    }
    % \begin{tikzpicture}[remember picture,overlay]
    %     \node[anchor=south west] (aciblogo) [xshift=5pt,yshift=3pt] at (current page.south west)
    %     { \includegraphics[height=.6cm]{logos/logo_acib_500.png} };
    %     \node (bokulogo) [base right=2pt of aciblogo]
    %     { \includegraphics[height=.4cm]{logos/BOKU-Logo-Department-DBT-E.pdf} };
    %     \node (biotoplogo) [base right=2pt of bokulogo]
    %     { \includegraphics[height=.4cm]{logos/biotop.png} };
    %
    %     \draw [ultra thin] (current page.south east)++(0,.7cm) -- +(-.73\paperwidth,0);
    % \end{tikzpicture}
    %
    % \begin{beamercolorbox}[sep=0.3cm,ht=.7cm,wd=\paperwidth]{white}
    %     \hspace{.3\paperwidth}
    %     \begin{minipage}{.53\paperwidth}
    %     \insertauthor \quad --- \quad \insertevent
    %     \end{minipage}
    %     \begin{minipage}{.1\paperwidth}
    %         \flushright
    %         \insertframenumber
    %     \end{minipage}
    % \end{beamercolorbox}
}

\setbeamertemplate{itemize item}[square]
\setbeamertemplate{itemize subitem}[circle]
\setbeamertemplate{section in toc}[square]

\setbeamertemplate{navigation symbols}{}
