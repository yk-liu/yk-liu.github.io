---
title: MathJax Update and Fix
categories: Meta
edit: 2020-10-30
description: Somehow this site's mathjax suddenly stopped working. This post is to test that. 
---

First inline math $1$



Then inline complicated math $\matrix{1&1\\2&2}$ or $\cases{1\\2}$.

I think github pages might have updated. Trying not loading mathjax and see if Github Pages is parsing $$ to \( \)

Then environments such as align

$$
\begin{align}
a=&-2\\
=&21\\
=&\pmatrix{saasas \\ asas \\ asas \\ }
\end{align}
$$

and arrays, seems to be giving me trouble

$$
\begin{array}
as & qs & asa& asacs\\
\vert
\end{array}
$$

try other syntax, should not work:

\[
qsqw
\]


Try new command $\newcommand{\s}{\sin}$, and then use it $\s$. 