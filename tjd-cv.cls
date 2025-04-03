%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tristan Davey CV Class
% Author: Tristan Davey
% Repository: https://github.com/tjdavey/cv
%
% Original template author: Debarghya Das (http://debarghyadas.com)
% Original template repository: https://github.com/deedydas/Deedy-Resume
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Intro Options
\ProvidesClass{tjd-cv}
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=0.75cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}
\usepackage{enumitem}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\fontsize{30pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig}
\selectfont #1
\\[3pt]
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Bold}
\fontsize{11pt}{14pt}
\hspace{0pt}
\selectfont #2
\\[2pt]
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}
\fontsize{11pt}{14pt}
\hspace{6pt}
\selectfont #3
\\[2pt]
\noindent
\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-20pt}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{15pt}{22pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}
\fontsize{12pt}{12pt}
\selectfont
\bfseries}{}{0em}{}

% Role Subsection
\newcommand{\rolesubsection}[2]{
\color{subheadings}
\fontspec[Path = fonts/lato/]{Lato-Bol}
\fontsize{12pt}{12pt}
\selectfont
\bfseries {#1}
\fontspec[Path = fonts/lato/]{Lato-Lig}
\selectfont
\hspace{0.5em}|\hspace{0.5em}
{#2 \\}
\normalfont}

% Role Command
\newcommand{\role}[1]{
\color{subheadings}
\raggedright
\fontspec[Path = fonts/lato/]{Lato-Lig}
\fontsize{12pt}{12pt}
\selectfont {#1 \\}
\normalfont}

% Period command
\newcommand{\period}[1]{
\color{headings}
\raggedright
\fontspec[Path = fonts/raleway/]{Raleway-Medium}
\fontsize{10pt}{12pt}
\selectfont {#1\\}
\normalfont
}

% Custom bullet lists
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}[leftmargin=12pt] \itemsep1pt \parskip0pt \parsep0pt \parindent-12pt}
{\end{itemize}\vspace{-\topsep}}

