%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% 字体段落
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\PassOptionsToPackage{quiet}{fontspec}
%消除CJK字体警告。

\ProvidesClass{jnuthesis}
\LoadClass[12pt,fontset=ubuntu]{ctexbook}
%12号字（小四）。

\usepackage{newtxtext}
\usepackage{newtxmath}
% 英文字体新罗马。

\setCJKfamilyfont{lishu}[Path=./misc/]{simli.ttf}
\newcommand{\lishu}{\CJKfamily{lishu}}
% 配置隶书字体。


\setlength{\parskip}{0pt}
%段间距为0。
\linespread{1.5}\selectfont
%1.5倍行距。

\raggedbottom
%允许页面底部凌乱。





\RequirePackage[
a4paper,
top=3cm,
bottom=2.5cm,
left=3cm,
right=2.5cm,
headheight=2.25cm,
headsep=0.75cm,
footskip=0.75cm,
marginparwidth=2cm,
]{geometry}
% 纸张边距等。



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 临时工具

%\RequirePackage{showframe}%显示边界。
%\RequirePackage[]{changes}%批注。



%\def\showfontsize{\csname f@size\endcsname pt}
%显示字体大小。







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 图表、公式及引用
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{amsmath}
\RequirePackage{booktabs}
% 表格公式。

\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
\pgfplotsset{compat=newest}
% 图片。






\RequirePackage{siunitx}
%单位宏包。注：不同物理单位、数学字符等字体是不一样的，不能直接写进公式环境。
\sisetup{
range-phrase = $\ \sim \ $,
range-units = single
}
%修改范围中间符号为“~”，默认为“to”，且单位不重复。
\sisetup{inter-unit-product = \ensuremath{{}\cdot{}}}
%修改单位内部间隔符号为点乘，默认为小空格。





\RequirePackage[
center,
size=small,
labelsep=quad,
belowskip=-6pt,
]{caption}
% 图片题注。



\RequirePackage{float}
% 禁止浮动体。




\RequirePackage{enumitem}
\setlist{
leftmargin=48pt,
label=(\arabic*),
labelwidth=24pt,
nosep,
}
% 列表环境。



\RequirePackage[sort&compress]{gbt7714}
% 参考文献 GBT7714-2015 规范宏包。

\RequirePackage[bookmarks,hidelinks]{hyperref}
% 引用，目录及链接有跳转。



\RequirePackage{zhlipsum}






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  
% 章节目录
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




\RequirePackage{tocloft}

\setcounter{tocdepth}{1}
%只统计到节。

\renewcommand\cftaftertoctitleskip{-5em}
%标题后跳-5em。

\renewcommand\cftchapdotsep{\cftdotsep} 
\renewcommand{\cftdot}{$\cdot$}
%章节引导线设置为单个居中点。




\ctexset{chapter={
      name = {},
      number = {\arabic{chapter}},
      format = {\bfseries\zihao{-3}\hspace{24pt}},
      beforeskip = 3em,
      afterskip = 3em,
      fixskip = true,
  }
}
% 章标题左锁进 0.83cm（约小四号字2字符宽度）。
% 正文模板这样的，但是式样3中“目录”标题又是居中，无语，这里以式样4为准。

\ctexset{section={
  format={\bfseries\zihao{4}},
  beforeskip = 3em,
  afterskip = 2em,
  fixskip = true,
  }
}

\ctexset{subsection={
   format = {\bfseries\zihao{-4}},
   beforeskip = 2em,
   afterskip = 1em,
   fixskip = true,
   }
}









%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 页眉页脚
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\RequirePackage{emptypage}%偶数页空白。

\RequirePackage{fancyhdr}


\fancypagestyle{plain}{
    \renewcommand{\headrulewidth}{0.6pt}
    \fancyhf{}
    \chead{暨南大学硕士/博士学位论文}
    \cfoot{\thepage}
}
\fancypagestyle{onlyfoot}{
    \renewcommand{\headrulewidth}{0pt}
    \fancyhf{}
    \cfoot{\thepage}
}


\makeatletter
\renewcommand\frontmatter{%
  \if@openright
  \cleardoublepage
  \else
    \clearpage
  \fi
\@mainmatterfalse
\pagenumbering{Roman}\pagestyle{onlyfoot}
}
\renewcommand\mainmatter{%
\if@openright
  \cleardoublepage
  \else
    \clearpage
  \fi
\@mainmattertrue
\pagenumbering{arabic}\pagestyle{plain}
}
\makeatother







