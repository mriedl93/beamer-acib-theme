\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{biotop}

% Internal variables
\newif\iffira
\newif\ifwork

% Options
\DeclareOption{firafont}{\firatrue}
\DeclareOption{workfont}{\worktrue}

\DeclareOption{handout}{%
  \PassOptionsToClass{\CurrentOption}{beamer}
}
\ProcessOptions\relax

% Load Beamer class
\LoadClass[aspectratio=169]{beamer}


% Packages
\RequirePackage{tikz}
\RequirePackage{setspace}
\RequirePackage{fontspec}
\RequirePackage{graphicx}
\RequirePackage[british]{babel}
\RequirePackage[useregional]{datetime2}
\RequirePackage{changepage}
\usetikzlibrary{positioning}
\usetikzlibrary{calc}


% Set fonts
\iffira
  \setsansfont[%
  ItalicFont={Fira Sans Italic},%
  BoldFont={Fira Sans SemiBold},%
  BoldItalicFont={Fira Sans Italic}%
  ]{Fira Sans Regular}
\fi

\ifwork
  \setsansfont[%
  ItalicFont={Work Sans Italic},%
  BoldFont={Work Sans SemiBold},%
  BoldItalicFont={Work Sans Italic}%
  ]{Work Sans Regular}
\fi

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



\setbeamercolor{alerted text}{fg=black}


% TODO: Fix this. @ in package is different
\makeatletter
% \newcommand{\event}[1]{#1}
\def\event#1{\gdef\@event{#1}}
\newcommand{\insertevent}{\@event}
\makeatother


\setbeamerfont{title}{series=\bfseries}
\setbeamerfont{title}{size=\large}
\setbeamercolor{title}{fg = white}
\setbeamerfont{author}{size=\normalsize}
\setbeamerfont{date}{size=\scriptsize}
\setbeamerfont{institute}{size=\small}

\setbeamerfont{frametitle}{size=\Large}
\setbeamerfont{framesubtitle}{size=\small}

\setbeamercolor{structure}{fg=black}
\setbeamercolor{biotopcolor}{fg=gray}
\setbeamercolor{block body}{bg=boku-cool-green!20}
\setbeamercolor{block title}{fg=white, bg=boku-cool-green}
\setbeamerfont{block title}{series = \bfseries}

\setbeamertemplate{itemize item}[square]
\setbeamertemplate{itemize subitem}[circle]
\setbeamertemplate{section in toc}[square]
\setbeamercolor{itemize item}{fg=boku-cool-green}
\setbeamercolor{itemize subitem}{fg=boku-cool-green}

\setbeamercolor{section number projected}{bg = biotopgrey, fg = white}

\setbeamertemplate{navigation symbols}{}

\setbeamerfont{alerted text}{series=\bfseries}


\setbeamertemplate{title page}{%

  \hspace{-20pt}
  \includegraphics[width = .35\textwidth]{beamer-acib-theme/logos/biotop-logo-new_BW.png}

    \vspace*{20pt}
    {%
        \usebeamerfont{title}
        \usebeamercolor[fg]{title}
        \inserttitle
    }
    \par\vspace{20pt}

    {%
        \usebeamerfont{author}
        \usebeamercolor[fg]{title}
        \insertauthor
    }
    \par\vspace{12pt}
    {%
        \usebeamerfont{institute}
        \usebeamercolor[fg]{title}
        \insertinstitute
    }
    \par\medskip


    \begin{tikzpicture}[remember picture,overlay]
      \node[anchor=north east] (muthgasse)
      at (current page.north east) [xshift = .2cm, yshift = 1cm]
        { \includegraphics[height = 1.1\paperheight]{logos/foto-muthgasse.png} };
    \end{tikzpicture}
}


\setbeamertemplate{background}{}

\setbeamertemplate{frametitle}{%
    \begin{adjustwidth}{-1em}{0em}
        {%
          \vspace{6pt}\usebeamerfont{frametitle}\insertframetitle\vskip3pt
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
        \begin{tikzpicture}[remember picture,overlay]
          % \draw[color=white, fill=boku-cool-green] (current page.south west) --
          %       ++(0, 1.4) -- ++(4, -1.4) -- cycle;
          % \draw[color=white, fill=boku-cool-green] (current page.south west) --
          %       ++(0, 1.4) -- ++(4, 0) -- ++(0, -1.4) -- cycle;
          \node[anchor = south west] (biotoplogo)
            at ($(current page.south west) + (0,0)$)
            { \includegraphics[width = 2cm]{logos/biotop-logo-new_Color_short.png} };
          \node[anchor = south west] (footline)
            at ($(current page.south west) + (3, 0.2)$)
            {\footnotesize \insertauthor\ --- \insertevent };
            % \node[anchor=south west] (biotoplogo)
            %     at ($(current page.south west) + (0, 0)$)
            %     { \includegraphics[height=0.8cm]{logos/biotop_dim_colors.png} };
            % \node[anchor = south east] (bokulogo)
            %     at ($(current page.south east) + (-0.15, 0.08)$)
            %     {\includegraphics[height = .5cm]{logos/BOKU_Hauptlogo_CMYK}};
            % \node[anchor = south east] (fwflogo)
            %     [below left = -0.72 and -0.05 of bokulogo]
            %     {\includegraphics[height=.7cm]{logos/FWF_Logo_Zusatz_Dunkelblau_RGB_DE}};
            \node[anchor=south east] (slidenumber)
                at ($(current page.south east) + (-0.4, 0.2)$)
                {\small \insertframenumber};
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

