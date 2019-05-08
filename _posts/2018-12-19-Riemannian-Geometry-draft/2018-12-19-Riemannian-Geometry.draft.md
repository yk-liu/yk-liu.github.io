---
title: Riemannian Geometry
categories: Topology
edit: 2018-12-20
status: Writing
tags: Riemannian-Geometry connections
keywords: 
description: My study notes on connections on Riemannian Geometry
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
\newcommand{\id}{\mathrm{I}}
\newcommand{\blue}{\color{blue}}
\newcommand{\red}{\color{red}}
\newcommand{\norm}[1]{\left\|{#1}\right\|}
\newcommand{\set}[1]{\left\lbrace{#1}\right\rbrace}
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\Z}{\mathbb{Z}}
\notag
$$

# Metric Tensors

In elementary geometry, the space is flat, and the inner product (through musical isomorphism) of two vectors is defined by
$$
\inner{U^\flat}{V}=U \cdot V = \sum_{i=1}^n U_iV_i
$$
A metric maps two vectors into a number, i.e.,
$$
g(U,V)
$$

$$
(U^\flat)_\mu=g_{\mu\nu}U^\nu, \quad U^\mu=g^{\mu\nu}(U^\flat)_\nu
$$
 changing the inner product to
$$
\inner{U^\flat}{V}=U \cdot V =g_{\mu\nu}U^\nu V^\mu
$$

# Parallel Transport



