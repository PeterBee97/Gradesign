%%
%% This is file `thuthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% thuthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2005-2020 by Ruini Xue <xueruini@gmail.com>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thuthesis}
[2020/02/23 6.0.2 Tsinghua University Thesis Template]
\RequirePackage{ifxetex}
\RequireXeTeX
\hyphenation{Thu-Thesis}
\def\thuthesis{ThuThesis}
\def\version{6.0.2}
\RequirePackage{kvdefinekeys}
\RequirePackage{kvsetkeys}
\RequirePackage{kvoptions}
\SetupKeyvalOptions{
  family=thu,
  prefix=thu@,
  setkeys=\kvsetkeys}
\newcommand\thu@error[1]{%
  \ClassError{thuthesis}{#1}{}%
}
\newcommand\thusetup{%
  \kvsetkeys{thu}%
}
\newcommand\thu@define@key[1]{%
  \kvsetkeys{thu@key}{#1}%
}
\kv@set@family@handler{thu@key}{%
  \@namedef{thu@#1@@name}{#1}%
  \def\thu@@default{}%
  \def\thu@@choices{}%
  \kv@define@key{thu@value}{name}{%
    \@namedef{thu@#1@@name}{##1}%
  }%
  \kv@define@key{thu@value}{code}{%
    \@namedef{thu@#1@@code}{##1}%
  }%
  \@namedef{thu@#1@@check}{}%
  \@namedef{thu@#1@@code}{}%
  \@namedef{thu@#1@@hook}{%
    \expandafter\ifx\csname\@currname.\@currext-h@@k\endcsname\relax
      \@nameuse{thu@#1@@code}%
    \else
      \AtEndOfClass{%
        \@nameuse{thu@#1@@code}%
      }%
    \fi
  }%
  \kv@define@key{thu@value}{choices}{%
    \def\thu@@choices{##1}%
    \@namedef{thu@#1@@reset}{}%
    \@namedef{thu@#1@@check}{%
      \@ifundefined{%
        ifthu@\@nameuse{thu@#1@@name}@\@nameuse{thu@\@nameuse{thu@#1@@name}}%
      }{%
        \thu@error{Invalid value "#1 = \@nameuse{thu@\@nameuse{thu@#1@@name}}"}%
      }%
      \@nameuse{thu@#1@@reset}%
      \@nameuse{thu@\@nameuse{thu@#1@@name}@\@nameuse{thu@\@nameuse{thu@#1@@name}}true}%
    }%
  }%
  \kv@define@key{thu@value}{default}{%
    \def\thu@@default{##1}%
  }%
  \kvsetkeys{thu@value}{#2}%
  \@namedef{thu@\@nameuse{thu@#1@@name}}{}%
  \kv@set@family@handler{thu@choice}{%
    \ifx\thu@@default\@empty
      \def\thu@@default{##1}%
    \fi
    \expandafter\newif\csname ifthu@\@nameuse{thu@#1@@name}@##1\endcsname
    \expandafter\g@addto@macro\csname thu@#1@@reset\endcsname{%
      \@nameuse{thu@\@nameuse{thu@#1@@name}@##1false}%
    }%
  }%
  \kvsetkeys@expandafter{thu@choice}{\thu@@choices}%
  \expandafter\let\csname thu@\@nameuse{thu@#1@@name}\endcsname\thu@@default
  \expandafter\ifx\csname thu@\@nameuse{thu@#1@@name}\endcsname\@empty\else
    \@nameuse{thu@#1@@check}%
    \@nameuse{thu@#1@@hook}%
  \fi
  \kv@define@key{thu}{#1}{%
    \@namedef{thu@\@nameuse{thu@#1@@name}}{##1}%
    \@nameuse{thu@#1@@check}%
    \@nameuse{thu@#1@@hook}%
  }%
}
\newcommand\thu@addto[2]{%
  \expandafter\g@addto@macro\csname thu@#1@@code\endcsname{#2}%
}
\newif\ifthu@degree@graduate
\newcommand\thu@set@graduate{%
  \thu@degree@graduatefalse
  \ifthu@degree@doctor
    \thu@degree@graduatetrue
  \fi
  \ifthu@degree@master
    \thu@degree@graduatetrue
  \fi
}
\thu@define@key{
  degree = {
    choices = {
      bachelor,
      master,
      doctor,
      postdoc,
    },
    default = doctor,
    code = {\thu@set@graduate},
  },
  degree-type = {
    choices = {
      academic,
      professional,
    },
    name = degree@type,
  },
  language = {
    choices = {
      chinese,
      english,
    },
  },
}
\DeclareBoolOption[true]{raggedbottom}
\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessKeyvalOptions*
\PassOptionsToPackage{quiet}{xeCJK}
\LoadClass[a4paper,openany,UTF8,zihao=-4,scheme=plain]{ctexbook}
\RequirePackage{etoolbox}
\RequirePackage{xparse}
\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{graphicx}
\RequirePackage[labelformat=simple]{subcaption}
\RequirePackage{pdfpages}
\includepdfset{fitpaper=true}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{environ}
\ifthu@raggedbottom
  \RequirePackage[bottom,perpage,hang]{footmisc}
  \raggedbottom
\else
  \RequirePackage[perpage,hang]{footmisc}
\fi
\RequirePackage{xeCJKfntef}
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{bibunits}
\RequirePackage{url}
\urlstyle{same}
\g@addto@macro\UrlBreaks{%
  \do0\do1\do2\do3\do4\do5\do6\do7\do8\do9%
  \do\A\do\B\do\C\do\D\do\E\do\F\do\G\do\H\do\I\do\J\do\K\do\L\do\M
  \do\N\do\O\do\P\do\Q\do\R\do\S\do\T\do\U\do\V\do\W\do\X\do\Y\do\Z
  \do\a\do\b\do\c\do\d\do\e\do\f\do\g\do\h\do\i\do\j\do\k\do\l\do\m
  \do\n\do\o\do\p\do\q\do\r\do\s\do\t\do\u\do\v\do\w\do\x\do\y\do\z
}
\Urlmuskip=0mu plus 0.1mu
\RequirePackage{geometry}
\geometry{
  a4paper, % 210 * 297mm
  nomarginpar,
}
\ifthu@degree@bachelor
  \geometry{
    top        = 3.8cm,
    bottom     = 3.2cm,
    left       = 3.2cm,
    right      = 3cm,
    headheight = 0.5cm,
    headsep    = 1.8cm,
    footskip   = 1.45cm,
  }
\else
  \geometry{
    margin     = 3cm,
    headheight = 0.5cm,
    headsep    = 0.3cm,
    footskip   = 0.8cm,
  }
\fi
\RequirePackage{fancyhdr}
\RequirePackage{notoccite}
\let\thu@cleardoublepage\cleardoublepage
\newcommand{\thu@clearemptydoublepage}{%
  \clearpage{\pagestyle{thu@empty}\thu@cleardoublepage}}
\let\cleardoublepage\thu@clearemptydoublepage
\renewcommand\frontmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmatterfalse
  \ifthu@degree@bachelor
    \pagestyle{thu@plain}
  \else
    \pagestyle{thu@headings}
  \fi
  \pagenumbering{Roman}%
  \let\@tabular\thu@tabular
}
\renewcommand\mainmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue
  \pagenumbering{arabic}
  \ifthu@degree@bachelor\pagestyle{thu@plain}\else\pagestyle{thu@headings}\fi}
\renewcommand\backmatter{%
  \if@openright\cleardoublepage\else\clearpage\fi
  \@mainmattertrue}
\newcommand\thu@fontset{\csname g__ctex_fontset_tl\endcsname}
\ifthenelse{\equal{\thu@fontset}{fandol}}{
  \setmainfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyretermes}
  \setsansfont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
  ]{texgyreheros}
  \setmonofont[
    Extension      = .otf,
    UprightFont    = *-regular,
    BoldFont       = *-bold,
    ItalicFont     = *-italic,
    BoldItalicFont = *-bolditalic,
    Scale          = MatchLowercase,
  ]{texgyrecursor}
}{
  \setmainfont{Times New Roman}
  \setsansfont{Arial}
  \ifthenelse{\equal{\thu@fontset}{mac}}{
    \setmonofont[Scale=MatchLowercase]{Menlo}
  }{
    \setmonofont[Scale=MatchLowercase]{Courier New}
  }
}
\unimathsetup{
  math-style = ISO,
  bold-style = ISO,
  nabla      = upright,
  partial    = upright,
}
\IfFontExistsTF{XITSMath-Regular.otf}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = XITSMath-Bold,
    StylisticSet = 8,
  ]{XITSMath-Regular}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{XITSMath-Regular.otf}
}{
  \setmathfont[
    Extension    = .otf,
    BoldFont     = *bold,
    StylisticSet = 8,
  ]{xits-math}
  \setmathfont[range={cal,bfcal},StylisticSet=1]{xits-math.otf}
}
\ifthenelse{\equal{\thu@fontset}{windows}}{
  \xeCJKsetup{EmboldenFactor=2}
  \IfFileExists{C:/bootfont.bin}{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi_GB2312]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi_GB2312}
  }{
    \setCJKmainfont[AutoFakeBold,ItalicFont=KaiTi]{SimSun}
    \setCJKfamilyfont{zhkai}[AutoFakeBold]{KaiTi}
  }
  \setCJKsansfont[AutoFakeBold]{SimHei}
  \setCJKfamilyfont{zhsong}[AutoFakeBold]{SimSun}
  \setCJKfamilyfont{zhhei}[AutoFakeBold]{SimHei}
}{}
\ifthenelse{\equal{\thu@fontset}{mac}}{
  \setCJKmainfont[
         UprightFont = * Light,
            BoldFont = * Bold,
          ItalicFont = Kaiti SC,
      BoldItalicFont = Kaiti SC Bold,
    ]{Songti SC}
  \setCJKsansfont[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhsong}[
         UprightFont = * Light,
            BoldFont = * Bold,
    ]{Songti SC}
  \setCJKfamilyfont{zhhei}[BoldFont=* Medium]{Heiti SC}
  \setCJKfamilyfont{zhkai}[BoldFont=* Bold]{Kaiti SC}
  \xeCJKsetwidth{‘’“”}{1em}
}{}
\renewcommand\normalsize{%
  \@setfontsize\normalsize{12bp}{20bp}%
  \abovedisplayskip=12bp \@plus 2bp \@minus 2bp
  \abovedisplayshortskip=12bp \@plus 2bp \@minus 2bp
  \belowdisplayskip=\abovedisplayskip
  \belowdisplayshortskip=\abovedisplayshortskip}
\def\thu@def@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][1.3]{%
    \fontsize{#2}{##1\dimexpr #2}\selectfont}}
\thu@def@fontsize{chuhao}{42bp}
\thu@def@fontsize{xiaochu}{36bp}
\thu@def@fontsize{yihao}{26bp}
\thu@def@fontsize{xiaoyi}{24bp}
\thu@def@fontsize{erhao}{22bp}
\thu@def@fontsize{xiaoer}{18bp}
\thu@def@fontsize{sanhao}{16bp}
\thu@def@fontsize{xiaosan}{15bp}
\thu@def@fontsize{sihao}{14bp}
\thu@def@fontsize{banxiaosi}{13bp}
\thu@def@fontsize{xiaosi}{12bp}
\thu@def@fontsize{dawu}{11bp}
\thu@def@fontsize{wuhao}{10.5bp}
\thu@def@fontsize{xiaowu}{9bp}
\thu@def@fontsize{liuhao}{7.5bp}
\thu@def@fontsize{xiaoliu}{6.5bp}
\thu@def@fontsize{qihao}{5.5bp}
\thu@def@fontsize{bahao}{5bp}
\newcommand\thu@setchinese{%
  \xeCJKResetPunctClass
}
\newcommand\thu@setenglish{%
  \xeCJKDeclareCharClass{HalfLeft}{"2018, "201C}%
  \xeCJKDeclareCharClass{HalfRight}{
    "00B7, "2019, "201D, "2013, "2014, "2025, "2026, "2E3A,
  }%
}
\newcommand\thu@setdefaultlanguage{%
  \ifthu@language@chinese
    \thu@setchinese
  \else
    \thu@setenglish
  \fi
}
\ifthu@language@chinese
  \ctexset{
    chapter/name   = {第,章},
    appendixname   = 附录,
    contentsname   = {目\hspace{\ccwd}录},
    listfigurename = 插图索引,
    listtablename  = 表格索引,
    figurename     = 图,
    tablename      = 表,
    bibname        = 参考文献,
    indexname      = 索引,
  }
  \newcommand\thu@denotation@name{主要符号对照表}
  \newcommand\listequationname{公式索引}
  \newcommand\equationname{公式}
  \newcommand\thu@assumption@name{假设}
  \newcommand\thu@definition@name{定义}
  \newcommand\thu@proposition@name{命题}
  \newcommand\thu@lemma@name{引理}
  \newcommand\thu@theorem@name{定理}
  \newcommand\thu@axiom@name{公理}
  \newcommand\thu@corollary@name{推论}
  \newcommand\thu@exercise@name{练习}
  \newcommand\thu@example@name{例}
  \newcommand\thu@remark@name{注释}
  \newcommand\thu@problem@name{问题}
  \newcommand\thu@conjecture@name{猜想}
  \newcommand\thu@proof@name{证明}
  \newcommand\thu@theorem@separator{：}
  \newcommand\thu@ack@name{致\hspace{\ccwd}谢}
  \ifthu@degree@bachelor
    \newcommand\thu@resume@title{在学期间参加课题的研究成果}
  \else
    \ifthu@degree@postdoc
      \newcommand\thu@resume@title{个人简历、发表的学术论文与科研成果}
    \else
      \newcommand\thu@resume@title{个人简历、在学期间发表的学术论文与研究成果}
    \fi
  \fi
\else
  \newcommand\thu@denotation@name{Nomenclature}
  \newcommand\listequationname{List of Equations}
  \newcommand\equationname{Equation}
  \newcommand\thu@assumption@name{Assumption}
  \newcommand\thu@definition@name{Definition}
  \newcommand\thu@proposition@name{Proposition}
  \newcommand\thu@lemma@name{Lemma}
  \newcommand\thu@theorem@name{Theorem}
  \newcommand\thu@axiom@name{Axiom}
  \newcommand\thu@corollary@name{Corollary}
  \newcommand\thu@exercise@name{Exercise}
  \newcommand\thu@example@name{Example}
  \newcommand\thu@remark@name{Remark}
  \newcommand\thu@problem@name{Problem}
  \newcommand\thu@conjecture@name{Conjecture}
  \newcommand\thu@proof@name{proof}
  \newcommand\thu@theorem@separator{: }
  \newcommand\thu@ack@name{Acknowledgements}
  \ifthu@degree@bachelor
    \newcommand\thu@resume@title{Research Achievements}
  \else
    \newcommand\thu@resume@title{Resume, Publications and Research Achievements}
  \fi
\fi
\fancypagestyle{thu@empty}{%
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{thu@plain}{%
  \fancyhead{}
  \fancyfoot[C]{\xiaowu\thepage}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}}
\fancypagestyle{thu@headings}{%
  \fancyhead{}
  \fancyhead[C]{\wuhao\normalfont\leftmark}
  \fancyfoot{}
  \fancyfoot[C]{\wuhao\thepage}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0pt}}
\ctexset{%
  punct=quanjiao,
  space=auto,
  autoindent=true}
\setlist{nosep}
\ifthenelse{\equal{\thu@fontset}{mac}}{
  \newfontfamily\thu@circlefont{Songti SC Light}
}{
  \ifthenelse{\equal{\thu@fontset}{windows}}{
    \newfontfamily\thu@circlefont{SimSun}
  }{
    \IfFontExistsTF{XITS-Regular.otf}{
      \newfontfamily\thu@circlefont{XITS-Regular.otf}
    }{
      \newfontfamily\thu@circlefont{xits-regular.otf}
    }
  }
}
\def\thu@textcircled#1{%
  \ifnum\value{#1} >9%
    \ClassError{thuthesis}%
      {Too many footnotes in this page.}{Keep footnote less than 10.}%
  \fi
  {\thu@circlefont\symbol{\the\numexpr\value{#1}+"245F\relax}}%
}
\renewcommand{\thefootnote}{\thu@textcircled{footnote}}
\renewcommand{\thempfootnote}{\thu@textcircled{mpfootnote}}
\def\footnoterule{\vskip-3\p@\hrule\@width0.3\textwidth\@height0.4\p@\vskip2.6\p@}
\let\thu@footnotesize\footnotesize
\renewcommand\footnotesize{\thu@footnotesize\xiaowu[1.5]}
\footnotemargin1.5em\relax
\let\thu@makefnmark\@makefnmark
\def\thu@@makefnmark{\hbox{{\normalfont\@thefnmark}}}
\pretocmd{\@makefntext}{\let\@makefnmark\thu@@makefnmark}{}{}
\apptocmd{\@makefntext}{\let\@makefnmark\thu@makefnmark}{}{}
\ifthu@language@chinese
  \def\mathellipsis{\cdots}
\fi
\protected\def\le{\leqslant}
\protected\def\ge{\geqslant}
\AtBeginDocument{%
  \renewcommand\leq{\leqslant}%
  \renewcommand\geq{\geqslant}%
}
\removenolimits{%
  \int\iint\iiint\iiiint\oint\oiint\oiiint
  \intclockwise\varointclockwise\ointctrclockwise\sumint
  \intbar\intBar\fint\cirfnint\awint\rppolint
  \scpolint\npolint\pointint\sqint\intlarhk\intx
  \intcap\intcup\upint\lowint
}
\AtBeginDocument{%
  \renewcommand{\Re}{\operatorname{Re}}%
  \renewcommand{\Im}{\operatorname{Im}}%
}
\AtBeginDocument{%
  \renewcommand\nabla{\mbfnabla}%
}
\newcommand\bm{\symbf}
\renewcommand\boldsymbol{\symbf}
\newcommand\square{\mdlgwhtsquare}
\AtBeginDocument{%
  \renewcommand\checkmark{\ensuremath{✓}}%
}
\allowdisplaybreaks[4]
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter-\fi\@arabic\c@equation}
\def\make@df@tag{\@ifstar\thu@make@df@tag@@\make@df@tag@@@}
\def\thu@make@df@tag@@#1{\gdef\df@tag{\thu@maketag{#1}\def\@currentlabel{#1}}}
\iffalse
\ifthu@degree@bachelor
  \def\thu@maketag#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)}}
  \def\tagform@#1{\maketag@@@{%
    (\ignorespaces\text{\equationname\hskip0.5em}#1\unskip\@@italiccorr)\equcaption{#1}}}
\fi
\fi
\def\thu@maketag#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)}}
\def\tagform@#1{\maketag@@@{(\ignorespaces #1\unskip\@@italiccorr)\equcaption{#1}}}
\renewcommand{\eqref}[1]{\textup{(\ref{#1})}}
\setlength{\floatsep}{12bp \@plus 2bp \@minus 4bp}
\setlength{\textfloatsep}{12bp}
\setlength{\intextsep}{12bp}
\setlength{\@fptop}{0bp \@plus1.0fil}
\setlength{\@fpsep}{12bp \@plus2.0fil}
\setlength{\@fpbot}{0bp \@plus1.0fil}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\ifthu@degree@bachelor
  \g@addto@macro\appendix{\renewcommand*{\thefigure}{\thechapter-\arabic{figure}}}
  \g@addto@macro\appendix{\renewcommand*{\thetable}{\thechapter-\arabic{table}}}
\fi
\let\old@tabular\@tabular
\def\thu@tabular{\dawu[1.5]\old@tabular}
\DeclareCaptionFont{thu}{\dawu[1.3]}
\DeclareCaptionLabelSeparator{thu}{\hspace{\ccwd}}
\captionsetup{
  font           = thu,
  labelsep       = thu,
  skip           = 6bp,
  figureposition = bottom,
  tableposition  = top,
}
\captionsetup[sub]{font=thu}
\renewcommand{\thesubfigure}{(\alph{subfigure})}
\renewcommand{\thesubtable}{(\alph{subtable})}
\def\hlinewd#1{%
  \noalign{\ifnum0=`}\fi\hrule \@height #1 \futurelet
    \reserved@a\@xhline}
\ifthu@degree@bachelor
  \newcommand{\cabstractname}{中文摘要}
  \newcommand{\eabstractname}{ABSTRACT}
\else
  \newcommand{\cabstractname}{摘\hspace{\ccwd}要}
  \newcommand{\eabstractname}{Abstract}
\fi
\AtBeginDocument{%
  \pagestyle{thu@empty}
  \renewcommand{\chaptermark}[1]{\@mkboth{\CTEXthechapter\hskip\ccwd#1}{}}}
\newcommand\thu@chapter@titleformat[1]{%
  \ifthu@degree@bachelor #1\else%
    \ifthenelse%
      {\equal{#1}{\eabstractname}}%
      {\bfseries #1}%
      {#1}%
  \fi}
\ctexset{%
  chapter={
    afterindent=true,
    pagestyle={\ifthu@degree@bachelor thu@plain\else thu@headings\fi},
    beforeskip={\ifthu@degree@bachelor 15bp\else 9bp\fi},
    aftername=\hskip\ccwd,
    afterskip={\ifthu@degree@bachelor 20bp\else 24bp\fi},
    format={\centering\sffamily\ifthu@degree@bachelor\xiaosan[1.333]\else\sanhao[1]\fi},
    nameformat=\relax,
    numberformat=\relax,
    titleformat=\thu@chapter@titleformat,
    lofskip=0pt,
    lotskip=0pt,
  },
  section={
    afterindent=true,
    beforeskip={\ifthu@degree@bachelor 25bp\else 24bp\fi\@plus 1ex \@minus .2ex},
    afterskip={\ifthu@degree@bachelor 12bp\else 6bp\fi \@plus .2ex},
    format={\sffamily\ifthu@degree@bachelor\sihao[1.286]\else\sihao[1.429]\fi},
  },
  subsection={
    afterindent=true,
    beforeskip={\ifthu@degree@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifthu@degree@bachelor\xiaosi[1.25]\else\banxiaosi[1.538]\fi},
    numberformat={\sffamily\ifthu@degree@bachelor\banxiaosi[1.154]\else\banxiaosi[1.538]\fi},
  },
  subsubsection={
    afterindent=true,
    beforeskip={\ifthu@degree@bachelor 12bp\else 16bp\fi\@plus 1ex \@minus .2ex},
    afterskip={6bp \@plus .2ex},
    format={\sffamily\ifthu@degree@bachelor\xiaosi[1.25]\else\xiaosi[1.667]\fi},
  },
  paragraph/afterindent=true,
  subparagraph/afterindent=true}
\newcommand\thu@pdfbookmark[2]{}
\newcommand\thu@phantomsection{}
\NewDocumentCommand\thu@chapter{s o m o}{
  \IfBooleanF{#1}{%
    \ClassError{thuthesis}{You have to use the star form: \string\thu@chapter*}{}
  }%
  \if@openright\cleardoublepage\else\clearpage\fi%
  \IfValueTF{#2}{%
    \ifthenelse{\equal{#2}{}}{%
      \thu@pdfbookmark{0}{#3}%
    }{%
      \thu@phantomsection
      \addcontentsline{toc}{chapter}{#3}%
    }%
  }{%
    \thu@phantomsection
    \addcontentsline{toc}{chapter}{#3}%
  }%
  \ifthu@degree@bachelor\ctexset{chapter/beforeskip=25bp}\fi
  \chapter*{#3}%
  \ifthu@degree@bachelor\ctexset{chapter/beforeskip=15bp}\fi
  \IfValueTF{#4}{%
    \ifthenelse{\equal{#4}{}}{%
      \@mkboth{}{}%
    }{%
      \@mkboth{#4}{#4}%
    }%
  }{%
    \@mkboth{#3}{#3}%
  }%
}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{2}
\renewcommand\tableofcontents{%
  \thu@chapter*[]{\contentsname}
  \ifthu@degree@bachelor\xiaosi[1.667]\else\xiaosi[1.65]\fi\@starttoc{toc}\normalsize}
\def\@pnumwidth{2em}
\def\@tocrmarg{\@pnumwidth}
\def\@dotsep{1}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \ifthu@degree@bachelor\vskip 6bp\else\vskip 4bp\fi \@plus\p@
    \setlength\@tempdima{4em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      \begingroup
        \ifthu@degree@graduate
          \sffamily
        \else
          \ifthu@degree@bachelor
            \heiti
          \fi
        \fi
        #1%
      \endgroup
      \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill%
      \nobreak #2\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\patchcmd{\@dottedtocline}{\hb@xt@\@pnumwidth}{\hbox}{}{}
\renewcommand*\l@section{%
  \@dottedtocline{1}{\ccwd}{2.1em}}
\renewcommand*\l@subsection{%
  \@dottedtocline{2}{\ifthu@degree@bachelor 1.5\ccwd\else 2\ccwd\fi}{3em}}
\renewcommand*\l@subsubsection{%
  \@dottedtocline{3}{\ifthu@degree@bachelor 2.4em\else 3.5em\fi}{3.8em}}
\thu@define@key{
  secret-level = {
    name = secret@level,
  },
  secret-year = {
    name = secret@year,
  },
  title = {
    default = {标题},
  },
  title* = {
    default = {Title},
    name    = title@en,
  },
  author = {
    default = {姓名},
  },
  author* = {
    default = {Name of author},
    name    = author@en,
  },
  supervisor = {
    default = {导师姓名},
  },
  supervisor* = {
    default = {Name of supervisor},
    name    = supervisor@en,
  },
  associate-supervisor = {
    name = associate@supervisor,
  },
  associate-supervisor* = {
    name = associate@supervisor@en,
  },
  joint-supervisor = {
    name = joint@supervisor,
  },
  joint-supervisor* = {
    name = joint@supervisor@en,
  },
  degree-name = {
    default = {工学博士},
    name    = degree@name,
  },
  degree-name* = {
    default = {Doctor of Philosophy},
    name    = degree@name@en,
  },
  department = {
    default = {计算机科学与技术系},
  },
  discipline = {
    % default = {计算机科学与技术},
  },
  discipline* = {
    % default = {Computer Science and Technology},
    name    = discipline@en,
  },
  date = {
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  clc,
  udc,
  id,
  discipline-level-1 = {
    default = {一级学科名称},
    name    = discipline@level@i,
  },
  discipline-level-2 = {
    default = {二级学科名称},
    name    = discipline@level@ii,
  },
  start-date = {
    name    = start@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
  end-date = {
    name    = end@date,
    default = {\the\year-\two@digits{\month}-\two@digits{\day}},
  },
}
\newcommand\thu@format@date[2]{%
  \edef\thu@@date{#2}%
  \def\thu@@process@date##1-##2-##3\@nil{%
    #1{##1}{##2}{##3}%
  }%
  \expandafter\thu@@process@date\thu@@date\@nil
}
\newcommand\thu@date@zh@digit[3]{#1 年 \number#2 月 \number#3 日}
\newcommand\thu@date@zh@digit@short[3]{#1 年 \number#2 月}
\newcommand\thu@date@zh@short[3]{\zhdigits{#1}年\zhnumber{#2}月}
\newcommand\thu@date@month[1]{%
  \ifcase\number#1\or
    January\or February\or March\or April\or May\or June\or
    July\or August\or September\or October\or November\or December%
  \fi
}
\newcommand\thu@date@en@short[3]{\thu@date@month{#2}, #1}
\newcommand\thu@underline[2][6em]{\hskip1pt\underline{\hb@xt@ #1{\hss#2\hss}}\hskip3pt}
\newcommand\thu@CJKunderline[2][6em]{\CJKunderline*{\hb@xt@ #1{\hss#2\hss}}}
\newcommand\thu@fixed@box[2]{%
  \begingroup
    \def\CJKglue{\hskip 0pt plus 2filll minus 1filll}%
    \makebox[#1][l]{#2}%
  \endgroup
}
\newbox\thu@stretch@box
\newcommand\thu@stretch[2]{%
  \sbox\thu@stretch@box{#2}%
  \ifdim \wd\thu@stretch@box < #1\relax
    \begingroup
      \def\CJKglue{\hskip 0pt plus 2filll}%
      \makebox[#1][l]{#2}%
    \endgroup
  \else
    \box\thu@stretch@box
  \fi
}
\newbox\thu@pad@box
\newcommand\thu@pad[2]{%
  \sbox\thu@pad@box{#2}%
  \ifdim \wd\thu@pad@box < #1\relax
    \makebox[#1][l]{\box\thu@pad@box}%
  \else
    \box\thu@pad@box
  \fi
}
\newcounter{thu@csl@count}
\newcommand\thu@name@title@process[1]{%
  \ifcase\c@thu@csl@count  % == 0
    \gdef\thu@@name{#1}%
  \or  % == 1
    \gdef\thu@@title{#1}%
  \fi
  \stepcounter{thu@csl@count}%
}
\newcommand\thu@name@title@format[2]{%
  \thu@pad{3cm}{\thu@stretch{4em}{#1}}%
  \thu@stretch{3em}{#2}%
}
\newcommand\thu@name@title[1]{%
  \setcounter{thu@csl@count}{0}%
  \gdef\thu@@name{}%
  \gdef\thu@@title{}%
  \expandafter\comma@parse\expandafter{#1}{\thu@name@title@process}%
  \thu@name@title@format{\thu@@name}{\thu@@title}%
}
\renewcommand\maketitle{%
  \cleardoublepage
  \pagestyle{thu@empty}%
  \pagenumbering{Alph}%
  \thu@pdfbookmark{-1}{\thu@title}%
  \thu@titlepage
  \ifthu@degree@graduate
    \cleardoublepage
    \thu@titlepage@en
  \fi
  \clearpage
}
\newcommand\thu@titlepage{%
  \ifthu@degree@graduate
    \ifthu@degree@type@academic
      \thu@titlepage@graduate@academic
    \else
      \ifx\thu@discipline\@empty
        \thu@titlepage@graduate@professional
      \else
        \thu@titlepage@graduate@academic
      \fi
    \fi
  \else
    \ifthu@degree@bachelor
      \thu@titlepage@bachelor
    \else
      \ifthu@degree@postdoc
        \thu@cover@postdoc
        \cleardoublepage
        \thu@titlepage@postdoc
      \fi
    \fi
  \fi
}
\newcommand\thu@titlepage@graduate@academic{%
  \newgeometry{
    top     = 2cm,
    bottom  = 6cm,
    hmargin = 3.5cm,
  }%
  \null\vskip 0.2cm%
  \begingroup
    \centering
    \parbox[t][2cm][t]{\textwidth}{%
      \hskip -0.69cm%
      \thu@titlepage@secret
    }\par
    \vskip 1.5cm%
    {\thu@titlepage@title}%
    \vskip 0.85cm%
    \thu@titlepage@degree
    \vfill
    \parbox[t][7.25cm][t]{\textwidth}{\centering\thu@titlepage@info}\par
    \parbox[t][1.03cm][t]{\textwidth}{\centering\thu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\thu@titlepage@graduate@professional{%
  \newgeometry{
    top     = 2cm,
    bottom  = 6cm,
    hmargin = 3.5cm,
  }%
  \null\vskip 0.45cm%
  \begingroup
    \centering
    \parbox[t][1.52cm][t]{\textwidth}{%
      \hskip -0.69cm%
      \thu@titlepage@secret
    }\par
    \vskip 1.5cm%
    {\sffamily\yihao[1.575]\thu@title\par}%
    \vskip 0.9cm%
    \thu@titlepage@degree
    \vfill
    \parbox[t][5.28cm][t]{\textwidth}{\centering\thu@titlepage@info}\par
    \parbox[t][1.25cm][t]{\textwidth}{\centering\thu@titlepage@date}\par
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\thu@titlepage@secret{%
  \sffamily\CJKfamily+{}\sanhao
  \ifx\thu@secret@level\@empty
    \phantom{秘密}%
  \else
    \thu@secret@level★\makebox[3em][c]{\thu@secret@year}年%
  \fi\par
}
\newcommand\thu@titlepage@title{%
  \sffamily\yihao[1.8]\thu@title\par
}
\newcommand\thu@titlepage@degree{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \CJKfamily+{}\xiaoer
    (申请清华大学\thu@degree@name\ifthu@degree@type@professional 专业\fi 学位论文)\par
  \endgroup
}
\newcommand\thu@titlepage@info{%
  \ifthu@degree@doctor
    \thu@titlepage@info@doctor
  \else
    \thu@titlepage@info@master
  \fi
}
\newcommand\thu@cover@info@tabular[4]{%
  \def\thu@cover@item##1##2##3{%
    \ifx##3\@empty\else
      \thu@pad{#2}{\thu@fixed@box{#1}{##1}}%
      \thu@pad{#3}{：}%
      ##2{##3}\\
    \fi
  }%
  \begin{tabular}{l}%
    #4%
  \end{tabular}
}
\newcommand\thu@titlepage@info@doctor{%
  \fangsong\sanhao[1.95]%
  \thu@cover@info@tabular{2.8cm}{2.8cm}{0.82cm}{%
    \thu@cover@item{培养单位}{}{\thu@department}%
    \ifthu@degree@type@academic
      \thu@cover@item{学科}{}{\thu@discipline}%
      \thu@cover@item{研究生}{\thu@name@title}{\thu@author}%
    \else
      \thu@cover@item{申请人}{\thu@name@title}{\thu@author}%
    \fi
    \thu@cover@item{指导教师}{\thu@name@title}{\thu@supervisor}%
    \thu@cover@item{副指导教师}{\thu@name@title}{\thu@associate@supervisor}%
    \thu@cover@item{联合导师}{\thu@name@title}{\thu@joint@supervisor}%
  }\par
}
\newcommand\thu@titlepage@info@master{%
  \fangsong\sanhao[1.95]%
  \thu@cover@info@tabular{5.5em}{3.6cm}{0.82cm}{%
    \thu@cover@item{培养单位}{}{\thu@department}%
    \ifthu@degree@type@academic
      \thu@cover@item{学科}{}{\thu@discipline}%
      \thu@cover@item{研究生}{\thu@name@title}{\thu@author}%
    \else
      \thu@cover@item{工程领域}{}{\thu@discipline}%
      \thu@cover@item{申请人}{\thu@name@title}{\thu@author}%
    \fi
    \thu@cover@item{指导教师}{\thu@name@title}{\thu@supervisor}%
    \thu@cover@item{副指导教师}{\thu@name@title}{\thu@associate@supervisor}%
    \thu@cover@item{联合指导教师}{\thu@name@title}{\thu@joint@supervisor}%
  }\par
}
\newcommand\thu@titlepage@date{%
  \begingroup
    \def\CJKglue{\hskip 1bp}%
    \sanhao\thu@format@date{\thu@date@zh@short}{\thu@date}\par
  \endgroup
}
\newcommand{\thu@titlepage@en}{%
  \newgeometry{
    top     = 5.5cm,
    bottom  = 5cm,
    hmargin = 3.6cm,
  }%
  \ifthu@degree@type@academic
    \thu@titlepage@en@graduate@academic
  \else
    \thu@titlepage@en@graduate@professional
  \fi
  \clearpage
  \restoregeometry
}
\newcommand\thu@titlepage@en@graduate@academic{%
  \begingroup
    \centering
    \null\vskip -0.7cm%
    \thu@titlepage@en@title
    \vfill
    \sanhao[1.725]%
    \thu@titlepage@en@degree
    \vskip 0.13cm%
    in\par
    \vskip 0.1cm%
    {\bfseries\sffamily\thu@discipline@en\par}
    \vskip 0.7cm%
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\thu@author@en\par}%
    \vskip 0.14cm%
    \parbox[t][3.07cm][t]{\textwidth}{%
      \centering\xiaosan[2.1]%
      \thu@titlepage@en@supervisor
    }\par
    \thu@titlepage@en@date
    \vskip 0.65cm%
  \endgroup
}
\newcommand\thu@titlepage@en@graduate@professional{%
  \begingroup
    \centering
    \null\vskip -0.7cm%
    \thu@titlepage@en@title
    \vfill
    \sanhao[1.725]%
    \thu@titlepage@en@degree
    \vskip 1.1cm%
    {\sffamily by\par}
    \vskip 0.24cm%
    {\sffamily\bfseries\thu@author@en\par}%
    \ifx\thu@discipline@en\empty
      \vskip 1.95cm%
    \else
      \vskip -0.1cm%
      {\sffamily\bfseries(\thu@discipline@en)\par}%
      \vskip 1.1cm%
    \fi
    \parbox[t][3.37cm][t]{\textwidth}{%
      \centering\xiaosan[1.82]%
      \thu@titlepage@en@supervisor
    }\par
    \thu@titlepage@en@date
    \vskip 0.3cm%
  \endgroup
}
\newcommand\thu@titlepage@en@title{%
  \begingroup
    \sffamily\bfseries\fontsize{20bp}{31bp}\selectfont
    \thu@title@en\par
  \endgroup
}
\newcommand\thu@thesis@name@en{%
  \ifthu@degree@master
    Thesis%
  \else
    Dissertation%
  \fi
}
\newcommand\thu@titlepage@en@degree{%
  \thu@thesis@name@en{} Submitted to\par
  {\bfseries Tsinghua University\par}%
  in partial fulfillment of the requirement\par
  for the
  \ifthu@degree@type@professional
    professional
  \fi
  degree of\par
  {\sffamily\bfseries\thu@degree@name@en\par}%
}
\newcommand\thu@titlepage@en@supervisor{%
  \begin{tabular}{r@{\makebox[0.71cm][l]{:}}l}%
    \thu@thesis@name@en{} Supervisor & \thu@supervisor@en     \\
    \ifx\thu@associate@supervisor@en\@empty\else
      Associate Supervisor            & \thu@associate@supervisor@en \\
    \fi
    \ifx\thu@joint@supervisor@en\@empty\else
      Cooperate Supervisor            & \thu@joint@supervisor@en   \\
    \fi
  \end{tabular}%
}
\newcommand\thu@titlepage@en@date{%
  \begingroup
    \sffamily\bfseries\sanhao
    \thu@format@date{\thu@date@en@short}{\thu@date}\par
  \endgroup
}
\newcommand\thu@titlepage@bachelor{%
  \newgeometry{
    vmargin = 2.54cm,
    hmargin = 3.17cm,
  }%
  \null\vskip 0.44cm%
  \begingroup
    \centering
    \parbox[t][2cm][t]{\textwidth}{%
      \hfill
      \sffamily\CJKfamily+{}\xiaosi
      \ifx\thu@secret@level\@empty
        \phantom{秘密}%
      \else
        \thu@secret@level\makebox[3em][c]{\thu@secret@year}年%
      \fi\par
    }\par
    \begingroup
      \ifcsname lishu\endcsname
        \lishu\yihao\ziju{0.5}清华大学%
      \else
        \includegraphics{tsinghua.pdf}%
      \fi
      \par
    \endgroup
    \vskip 0.94cm%
    {\sffamily\bfseries\xiaochu\ziju{0.5}综合论文训练\par}%
    \vskip 2.3cm%
    \parbox[t][2.4cm][t]{\textwidth}{%
      \heiti\xiaoer[1.56]%
      \parindent=2em%
      \hangindent=5em%
      \makebox[3em][l]{题目：}%
      \yihao[1.56]%
      \CJKunderline[skip=false, thickness=0.05em, depth=0.12em]{\thu@title}\par
    }\par
    \vskip 2.5cm%
    \parbox[t][6.0cm][t]{\textwidth}{%
      \fangsong\sanhao[2.3]%
      \leftskip=2.5cm%
      \parindent=\z@
      \def\thu@cover@item##1##2##3{%
        \ifx##3\@empty\else
          \thu@fixed@box{4em}{##1}：##2{##3}\\
        \fi
      }%
      \def\thu@name@title@format##1##2{%
        \thu@stretch{3em}{##1}\quad ##2%
      }
      \thu@cover@item{系别}{}{\thu@department}%
      \thu@cover@item{专业}{}{\thu@discipline}%
      \thu@cover@item{姓名}{\thu@name@title}{\thu@author}%
      \thu@cover@item{指导教师}{\thu@name@title}{\thu@supervisor}%
      \thu@cover@item{辅导教师}{\thu@name@title}{\thu@associate@supervisor}%
    }\par
    {\xiaosi\thu@format@date{\thu@date@zh@digit}{\thu@date}\par}%
  \endgroup
  \clearpage
  \restoregeometry
}
\newcommand\thu@cover@postdoc{%
  \begin{center}%
    \renewcommand\ULthickness{0.7pt}%
    \vspace*{0.35cm}%
    {\sihao[2.6]%
      \thu@stretch{3.1em}{分类号}\thu@underline[3.7cm]{\thu@clc}\hfill
      密级\thu@underline[3.7cm]{\thu@secret@level}\par
      \thu@stretch{3.1em}{U D C}\thu@underline[3.7cm]{\thu@udc}\hfill
      编号\thu@underline[3.7cm]{\thu@id}\par
    }%
    \vskip 3.15cm%
    {\sffamily\bfseries\xiaoer[2.6]%
      {\ziju{1.5}清华大学\par}%
      {\ziju{0.5}博士后研究工作报告\par}%
    }%
    \vskip 0.2cm%
    \parbox[t][4.0cm][c]{\textwidth}{%
      \centering\sihao[3.46]\CJKunderline*[depth=1em]{\thu@title}\par
    }\par
    \vskip 0.4cm%
    {\xiaosi\thu@author\par}%
    \vskip 1.4cm%
    {\xiaosi[1.58]\xeCJKsetup{underline/depth=0.9em}%
      工作完成日期\quad
      \thu@CJKunderline[5.9cm]{%
        \thu@format@date{\thu@date@zh@digit@short}{\thu@start@date}—%
        \thu@format@date{\thu@date@zh@digit@short}{\thu@end@date}
      }\par
      \vskip 0.55cm%
      报告提交日期\quad
      \thu@CJKunderline[5.9cm]{\thu@format@date{\thu@date@zh@digit@short}{\thu@date}}\par
    }%
    \vskip 0.45cm%
    {\xiaosi[2]{\ziju{1}清华大学}\quad （北京）\par}%
    \vskip 0.25cm%
    {\xiaosi[2]\thu@format@date{\thu@date@zh@digit@short}{\thu@date}\par}%
  \end{center}%
}
\newcommand\thu@titlepage@postdoc{%
  \begin{center}%
    \vspace*{1.5cm}%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sanhao[1.95]\thu@title\par
    }\par
    \vskip 0.15cm%
    \parbox[t][3cm][c]{\textwidth}{%
      \centering\sihao[1.36]\thu@title@en\par
    }\par
    \vskip 0.4cm%
    {\xiaosi[2.6]%
      \begin{tabular}{l@{\quad}l}%
        \thu@stretch{11em}{博士后姓名}                  & \thu@author           \\
        \thu@stretch{11em}{流动站（一级学科）名称}      & \thu@discipline@level@i  \\
        \thu@stretch{11em}{专\quad{}业（二级学科）名称} & \thu@discipline@level@ii \\
      \end{tabular}\par
    }%
    \vskip 2.7cm%
    {\xiaosi[2.6]%
      研究工作起始时间\quad\thu@format@date{\thu@date@zh@digit}{\thu@start@date}\par
      \vskip 0.1cm%
      研究工作期满时间\quad\thu@format@date{\thu@date@zh@digit}{\thu@end@date}\par
    }%
    \vskip 2.1cm%
    {\xiaosi[2.6]清华大学人事部（北京）\par}%
    \vskip 0.6cm%
    {\wuhao\thu@format@date{\thu@date@zh@digit@short}{\thu@date}\par}%
  \end{center}%
}
\newcommand{\thu@authorization}{%
\ifthu@degree@bachelor
本人完全了解清华大学有关保留、使用学位论文的规定，即：学校有权保留学位
论文的复印件，允许该论文被查阅和借阅；学校可以公布该论文的全部或部分内
容，可以采用影印、缩印或其他复制手段保存该论文。
\else
本人完全了解清华大学有关保留、使用学位论文的规定，即：

清华大学拥有在著作权法规定范围内学位论文的使用权，其中包括：（1）已获学位的研究生
必须按学校规定提交学位论文，学校可以采用影印、缩印或其他复制手段保存研究生上交的
学位论文；（2）为教学和科研目的，学校可以将公开的学位论文作为资料在图书馆、资料
室等场所供校内师生阅读，或在校园网上供校内师生浏览部分内容\ifthu@degree@master 。\else ；
（3）根据《中华人民共和国学位条例暂行实施办法》，向国家图书馆报送可以公开的学位
论文。\fi

本人保证遵守上述规定。
\fi}
\newcommand{\thu@authorizationaddon}{%
  \ifthu@degree@bachelor(涉密的学位论文在解密后应遵守此规定)\else （保密的论文在解密后应遵守此规定）\fi}
\newcommand{\thu@authorsig}{\ifthu@degree@bachelor 签\hskip1em名：\else 作者签名：\fi}
\newcommand{\thu@teachersig}{导师签名：}
\newcommand{\thu@frontdate}{%
  日\ifthu@degree@bachelor\hspace{1em}\else\hspace{2em}\fi 期：}
\newcommand\copyrightpage[1][]{%
  \ifthu@degree@postdoc\relax\else
    \ifthu@degree@bachelor\clearpage\else\cleardoublepage\fi%
    \def\thu@@tmp{#1}
    \ifx\thu@@tmp\@empty
      \ifthu@degree@bachelor\thu@authorization@mk\else%
        \begin{list}{}{%
          \topsep\z@%
          \listparindent\parindent%
          \parsep\parskip%
          \setlength{\leftmargin}{0.9mm}%
          \setlength{\rightmargin}{0.9mm}}%
        \item[]\thu@authorization@mk%
        \end{list}%
      \fi%
    \else
      \includepdf{#1}%
    \fi
  \fi
}
\newcommand{\thu@authorization@mk}{%
  \ifthu@degree@bachelor\vspace*{0.2cm}\else\vspace*{0.42cm}\fi % shit code!
  \begin{center}\erhao\heiti 关于学位论文使用授权的说明\end{center}
  \ifthu@degree@bachelor\vskip5pt\else\vskip40pt\sihao[2.03]\fi\par
  \thu@authorization\par
  \textbf{\thu@authorizationaddon}\par
  \ifthu@degree@bachelor\vskip0.7cm\else\vskip1.0cm\fi
  \ifthu@degree@bachelor
    \indent\mbox{\thu@authorsig\thu@underline\relax%
    \thu@teachersig\thu@underline\relax\thu@frontdate\thu@underline\relax}
  \else
    \begingroup
      \parindent0pt\xiaosi
      \hspace*{1.5cm}\thu@authorsig\thu@underline[7em]\relax\hfill%
                     \thu@teachersig\thu@underline[7em]\relax\hspace*{1cm}\\[3pt]
      \hspace*{1.5cm}\thu@frontdate\thu@underline[7em]\relax\hfill%
                     \thu@frontdate\thu@underline[7em]\relax\hspace*{1cm}
    \endgroup
  \fi}
\thu@define@key{
  keywords,
  keywords* = {
    name = keywords@en,
  },
}
\newcommand\thu@clist@use[2]{%
  \def\thu@@tmp{}%
  \kv@set@family@handler{thu@clist}{%
    \ifx\thu@@tmp\@empty
      \def\thu@@tmp{#2}%
    \else
      #2%
    \fi
    ##1%
  }%
  \kvsetkeys@expandafter{thu@clist}{#1}%
}
\newbox\thu@kw
\newcommand\thu@put@keywords[2]{%
  \begingroup
    \setbox\thu@kw=\hbox{#1}
    \ifthu@degree@bachelor\indent\else\noindent\hangindent\wd\thu@kw\hangafter1\fi%
    \box\thu@kw#2\par
  \endgroup}
\newenvironment{abstract}{%
  \ifthu@degree@bachelor\clearpage\else\cleardoublepage\fi
  \thu@setchinese
  \thu@chapter*[]{\cabstractname} % no tocline
}{%
  \ifthu@degree@doctor\vfill\else\vskip12bp\fi
  \thu@put@keywords{\textbf{关键词：}}{%
    \thu@clist@use{\thu@keywords}{；}%
  }%
  \thu@setdefaultlanguage
}
\newenvironment{abstract*}{%
  \thu@setenglish
  \thu@chapter*[]{\eabstractname} % no tocline
}{%
  \ifthu@degree@doctor\vfill\else\vskip12bp\fi
  \thu@put@keywords{%
    \textbf{\ifthu@degree@bachelor Keywords:\else Key Words:\fi\enskip}%
  }{%
    \thu@clist@use{\thu@keywords@en}{; }%
  }%
  \thu@setdefaultlanguage
}
\newenvironment{denotation}[1][2.5cm]{%
  \thu@chapter*[]{\thu@denotation@name} % no tocline
  \vskip-30bp\xiaosi[1.6]\begin{thu@denotation}[labelwidth=#1]
}{%
  \end{thu@denotation}
}
\newlist{thu@denotation}{description}{1}
\setlist[thu@denotation]{%
  nosep,
  font=\normalfont,
  align=left,
  leftmargin=!, % sum of the following 3 lengths
  labelindent=0pt,
  labelwidth=2.5cm,
  labelsep*=0.5cm,
  itemindent=0pt,
}
\newcommand\thu@declarename{声\hspace{\ccwd}明}
\newcommand{\thu@declaretext}{本人郑重声明：所呈交的学位论文，是本人在导师指导下
  ，独立进行研究工作所取得的成果。尽我所知，除文中已经注明引用的内容外，本学位论
  文的研究成果不包含任何他人享有著作权的内容。对本论文所涉及的研究工作做出贡献的
  其他个人和集体，均已在文中以明确方式标明。}
\newcommand{\thu@signature}{签\hspace{1em}名：}
\newcommand{\thu@backdate}{日\hspace{1em}期：}
\newenvironment{acknowledgements}{%
  \thu@chapter*{\thu@ack@name}%
}{}
\newcommand\statement[1][]{%
  \def\thu@@tmp{#1}%
  \ifx\thu@@tmp\@empty
    \thu@chapter*{\thu@declarename}%
    \par{\xiaosi\parindent2em\thu@declaretext}\vskip2cm%
    {\xiaosi\hfill\thu@signature\thu@underline[2.5cm]\relax
      \thu@backdate\thu@underline[2.5cm]\relax}%
  \else
    \includepdf[pagecommand={\thispagestyle{thu@empty}%
      \addcontentsline{toc}{chapter}{\thu@declarename}%
    }]{#1}%
  \fi
}
\let\acknowledgement\acknowledgements
\let\endacknowledgement\endacknowledgements
\def\thu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname\hskip.4em ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\thu@listof#1{% #1: float type
  \setcounter{tocdepth}{2} % restore tocdepth in case being modified
  \@ifstar
    {\thu@chapter*[]{\csname list#1name\endcsname}\thu@starttoc{#1}}
    {\thu@chapter*{\csname list#1name\endcsname}\thu@starttoc{#1}}}
\renewcommand\listoffigures{\thu@listof{figure}}
\renewcommand*\l@figure{\ifthu@degree@bachelor\relax\else\addvspace{6bp}\fi\@dottedtocline{1}{0em}{4em}}
\renewcommand\listoftables{\thu@listof{table}}
\let\l@table\l@figure
\def\ext@equation{loe}
\def\equcaption#1{%
  \addcontentsline{\ext@equation}{equation}%
                  {\protect\numberline{#1}}}
\newcommand\listofequations{\thu@listof{equation}}
\let\l@equation\l@figure
\DeclareRobustCommand\inlinecite{\@inlinecite}
\def\@inlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\let\onlinecite\inlinecite
\renewcommand\bibsection{\thu@chapter*{\bibname}}
\renewcommand\bibfont{\ifthu@degree@bachelor\wuhao[1.619]\else\wuhao[1.5]\fi}
\setlength\bibhang{2\ccwd}
\addtolength{\bibsep}{-0.7em}
\setlength{\labelsep}{0.4em}
\def\@biblabel#1{[#1]\hfill}
\expandafter\newcommand\csname bibstyle@thuthesis-numeric\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\expandafter\newcommand\csname bibstyle@thuthesis-author-year\endcsname{%
  \bibpunct{(}{)}{;}{a}{,}{,}}
\expandafter\newcommand\csname bibstyle@thuthesis-bachelor\endcsname{%
  \bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\@namedef{bibstyle@thuthesis-inline}{\bibpunct{[}{]}{,}{n}{,}{,}}
\thu@define@key{
  cite-style = {
    name = cite@style,
    code = {
      \@nameuse{bibstyle@thuthesis-\thu@cite@style}
    },
  }
}
\patchcmd\NAT@citexnum{%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\NAT@cmt#2\fi
  }{}%
  \NAT@mbox{\NAT@@close}%
}{%
  \NAT@mbox{\NAT@@close}%
  \@ifnum{\NAT@ctype=\z@}{%
    \if*#2*\else\textsuperscript{#2}\fi
  }{}%
}{}{}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
  \if*#2*\else#2\NAT@spacechar\fi
\unskip\kern\p@\textsuperscript{\NAT@@open#1\NAT@@close\if*#3*\else#3\fi}%
   \else #1\fi\endgroup}
\patchcmd{\NAT@citex}{%
  \if*#2*\else\NAT@cmt#2\fi
  \if\relax\NAT@date\relax\else\NAT@@close\fi
}{%
  \if\relax\NAT@date\relax\else\NAT@@close\fi
  \if*#2*\else\textsuperscript{#2}\fi
}{}{}
\renewcommand\NAT@cite%
    [3]{\ifNAT@swa\NAT@@open\if*#2*\else#2\NAT@spacechar\fi
        #1\NAT@@close\if*#3*\else\textsuperscript{#3}\fi\else#1\fi\endgroup}
\patchcmd{\NAT@citexnum}{%
  \ifx\NAT@last@yr\relax
    \def@NAT@last@yr{\@citea}%
  \else
    \def@NAT@last@yr{--\NAT@penalty}%
  \fi
}{%
  \def@NAT@last@yr{-\NAT@penalty}%
}{}{}
\thu@define@key{
  toc-depth = {
    name = toc@depth,
    code = {\addtocontents{toc}{\protect\setcounter{tocdepth}{\thu@toc@depth}}},
  },
}
\g@addto@macro\appendix{\addtocontents{toc}{\protect\setcounter{tocdepth}{0}}}
\newenvironment{survey}{%
  \chapter{外文资料的调研阅读报告}%
  \thu@setenglish
  \let\title\thu@appendix@title
  \let\maketitle\thu@appendix@maketitle
  \renewcommand\bibname{参考文献}%
  \let\bibsection\thu@appendix@bibsection
  \renewcommand\@bibunitname{main-survey}%
  \let\bibliographystyle\defaultbibliographystyle
  \let\bibliography\thu@appendix@bibliography
  \begin{bibunit}%
}{%
  \end{bibunit}%
}
\newenvironment{translation}{%
  \chapter{外文资料的书面翻译}%
  \thu@setenglish
  \let\title\thu@appendix@title
  \let\maketitle\thu@appendix@maketitle
  \renewcommand\bibname{书面翻译对应的原文索引}%
  \let\bibsection\thu@appendix@bibsection
  \renewcommand\@bibunitname{main-translation}%
  \let\bibliographystyle\defaultbibliographystyle
  \let\bibliography\thu@appendix@bibliography
  \begin{bibunit}%
}{%
  \end{bibunit}%
}
\DeclareRobustCommand\thu@appendix@title[1]{\gdef\thu@appendix@@title{#1}}
\newcommand\thu@appendix@maketitle{%
  \par
  \begin{center}%
    \xiaosi[1.667]\thu@appendix@@title
  \end{center}%
  \par
}
\newcommand\thu@appendix@bibsection{%
  \par
  \vskip 20bp%
  \begingroup
    \centering
    \xiaosi[1.667]\bibname\par
  \endgroup
  \vskip 6bp%
}%
\newcommand\thu@appendix@bibliography[1]{\putbib[#1]}
\newenvironment{resume}[1][\thu@resume@title]{%
  \thu@chapter*{#1}}{}
\newcommand{\resumeitem}[1]{%
  \vspace{24bp}{\sihao\heiti\centerline{#1}}\par\vspace{6bp}}
\newcommand{\researchitem}[1]{%
  \vspace{32bp}{\sihao\heiti\centerline{#1}}\par\vspace{14bp}}
\newlist{publications}{enumerate}{1}
\setlist[publications]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26],resume}
\newlist{achievements}{enumerate}{1}
\setlist[achievements]{label=[\arabic*],align=left,nosep,itemsep=8bp,
  leftmargin=10mm,labelsep=!,before=\xiaosi[1.26]}
\def\publicationskip{\bigskip\bigskip}
\newcommand\thu@atendpackage{\csname ctex_at_end_package:nn\endcsname}
\thu@atendpackage{hyperref}{
  \hypersetup{
    linktoc            = all,
    bookmarksdepth     = 2,
    bookmarksnumbered  = true,
    bookmarksopen      = true,
    bookmarksopenlevel = 1,
    unicode            = true,
    psdextra           = true,
    breaklinks         = true,
    plainpages         = false,
    pdfdisplaydoctitle = true,
    hidelinks,
  }%
  \newcounter{thu@bookmark}
  \renewcommand\thu@pdfbookmark[2]{%
    \phantomsection
    \stepcounter{thu@bookmark}%
    \pdfbookmark[#1]{#2}{thuchapter.\thethu@bookmark}%
  }
  \renewcommand\thu@phantomsection{%
    \phantomsection
  }
  \pdfstringdefDisableCommands{
    \let\\\@empty
    \let\hspace\@gobble
  }%
  \@ifpackagelater{hyperref}{2019/04/27}{}{%
    \g@addto@macro\psdmapshortnames{\let\mu\textmu}
  }%
  \AtBeginDocument{%
    \ifthu@language@chinese
      \hypersetup{
        pdftitle    = \thu@title,
        pdfauthor   = \thu@author,
        pdfsubject  = \thu@degree@name,
        pdfkeywords = \thu@keywords,
        pdflang     = zh-CN,
      }%
    \else
      \hypersetup{
        pdftitle    = \thu@title@en,
        pdfauthor   = \thu@author@en,
        pdfsubject  = \thu@degree@name@en,
        pdfkeywords = \thu@keywords@en,
        pdflang     = en-US,
      }%
    \fi
    \hypersetup{
      pdfcreator={\thuthesis-v\version}}
  }%
}
\thu@atendpackage{nomencl}{
  \let\nomname\thu@denotation@name
  \def\thenomenclature{\begin{denotation}[\nom@tempdim]}
  \def\endthenomenclature{\end{denotation}}
}
\AtBeginDocument{%
  \let\thu@LT@array\LT@array
  \def\LT@array{\dawu[1.5]\thu@LT@array} % set default font size
}
\thu@atendpackage{siunitx}{%
  \sisetup{
    group-minimum-digits = 4,
    separate-uncertainty = true,
    inter-unit-product   = \ensuremath{{}\cdot{}},
  }
  \newcommand\thu@set@siunitx@language{%
    \ifthu@language@chinese
      \sisetup{
        list-final-separator = { 和 },
        list-pair-separator  = { 和 },
        range-phrase         = {～},
      }%
    \else
      \ifthu@language@english
        \sisetup{
          list-final-separator = { and },
          list-pair-separator  = { and },
          range-phrase         = { to },
        }%
      \fi
    \fi
  }
  \thu@set@siunitx@language
  \thu@addto{language}{\thu@set@siunitx@language}
}
\thu@atendpackage{ntheorem}{%
  \theorembodyfont{\normalfont}%
  \theoremheaderfont{\normalfont\sffamily}%
  \theoremsymbol{\ensuremath{\square}}%
  \newtheorem*{proof}{\thu@proof@name}%
  \theoremstyle{plain}%
  \theoremsymbol{}%
  \theoremseparator{\thu@theorem@separator}%
  \newtheorem{assumption}{\thu@assumption@name}[chapter]%
  \newtheorem{definition}{\thu@definition@name}[chapter]%
  \newtheorem{proposition}{\thu@proposition@name}[chapter]%
  \newtheorem{lemma}{\thu@lemma@name}[chapter]%
  \newtheorem{theorem}{\thu@theorem@name}[chapter]%
  \newtheorem{axiom}{\thu@axiom@name}[chapter]%
  \newtheorem{corollary}{\thu@corollary@name}[chapter]%
  \newtheorem{exercise}{\thu@exercise@name}[chapter]%
  \newtheorem{example}{\thu@example@name}[chapter]%
  \newtheorem{remark}{\thu@remark@name}[chapter]%
  \newtheorem{problem}{\thu@problem@name}[chapter]%
  \newtheorem{conjecture}{\thu@conjecture@name}[chapter]%
}
\NewDocumentCommand{\spine}{O{\thu@title} O{\thu@author}}{%
  \newpage\thispagestyle{empty}%
  \fangsong\addCJKfontfeatures*{RawFeature={vertical:}}
  \xiaosan\ziju{0.4}%
  \noindent\hfill\rotatebox[origin=lt]{-90}{\makebox[\textheight]{#1\hfill#2}}}
\AtEndOfClass{\sloppy}
\endinput
%%
%% End of file `thuthesis.cls'.
