---
title: Introduction to De Rham Cohomology
edit: 2018-11-23
categories: Topology
tags: De-Rham-Cohomology Topology
keywords: cohomology
description: My study notes on cohomology, as a preparation for K-theory.
status: Writing
---

$$
\newcommand{\spl}[1]{\langle{#1}\rangle}
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
\newcommand{\abs}[1]{\left\vert{#1}\right\vert}
%\renewcommand{\vec}{\mathbf}
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left| {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \; \middle|\;{#2} \right\rangle }
\newcommand{\mani}{\mathcal}
\newcommand{\field}{\mathscr}
\newcommand{\Tspace}[1]{T\! {#1}}
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\op}{\hat}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{: =}
\newcommand{\Eqn}[1]{\text{(Eqn. }\ref{#1}\text{)}}
\newcommand{\dual}{\tilde}
\newcommand{\vard}{\mathfrak{d}}
\newcommand{\vare}{\mathfrak{e}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\i}{\mathrm{i}}
\newcommand{\blue}{\color{blue}}
\newcommand{\red}{\color{red}}
\newcommand{\norm}[1]{\left\|{#1}\right\|}
\newcommand{\set}[1]{\left\lbrace{#1}\right\rbrace}
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\Z}{\mathbb{Z}}
\notag
$$

You can check my previous notes on [homology](https://yk-liu.github.io/blog/Introduction-to-Homology.html).

# The Name

"De Rham Cohomology" is translated in Chinese as "德拉姆上同调", where "同调" stands for "same tune". I suppose this is related to the musical isomorphism between one forms and vectors. As for the meaning of "co-", here are my thoughts. 

| English                  | Chinese           | Meaning                  |
| ------------------------ | ----------------- | ------------------------ |
| **co**sine/**co**tangent | **余**弦/**余**切 | adding up to $\pi /2$    |
| **co**set                | **陪**集          | dual in the same space   |
| **co**homology           | **上**同调        | dual in different spaces |

# Body and Boundary

Given a vector space $V$, a space of wedge product can be constructed as

$$
\wedge ^2 V = \set{ \vec u\wedge \vec v  {\mid}  \vec u,\vec v \in V  }\\
\wedge ^3 V = \set{ \vec u\wedge \vec v \wedge \vec w {\mid} \vec u,\vec v,\vec w \in V  }\\
\wedge ^n V = \set{ \vec u _ 1\wedge\vec u _ 2 \wedge\cdots\wedge \vec u _ n {\mid} \vec u _ i\in V ,i=1,2,\cdots,n }
$$

q