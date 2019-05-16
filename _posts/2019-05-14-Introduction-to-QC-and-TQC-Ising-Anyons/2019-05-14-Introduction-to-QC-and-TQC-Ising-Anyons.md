---
title: |
  Introduction to Topological Quantum Computation: Ising Anyons Case Study
categories: Topological-quantum-computation
tags: Topological-quantum-computation Ising-anyons Majorana-zero-modes
keywords: Braiding Anyon
status: Writing
description: This is a series of posts on topological quantum computations. The aim of this series is to work my way to understanding the diagrams of "strands" widely used in the field. In this post, the most promising candidate for TQC, Ising anyons, are discussed. A set of Clifford gates is implemented as the result of braiding.
---

$$
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\K}{\mathbb{K}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\op}{\hat}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
\newcommand{\Eqn}[1]{\text{(Eqn. }\ref{#1}\text{)}}
\newcommand{\vard}{\mathfrak{d}}
\newcommand{\vare}{\mathfrak{e}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\i}{\mathrm{i}}
\newcommand{\norm}[1]{\left\vert{#1}\right\vert}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\comm}[2]{\left[ #1 , \, #2 \right]}
\newcommand{\slot}{\,\cdot\,}
\newcommand{\lact}{\triangleright}
\newcommand{\ract}{\triangleleft}
\newcommand{\vac}{1\!\!\!\mathsf{\phantom{I}I}}
\newcommand{\la}{\mathfrak}
\newcommand{\anti}{\overline}
\notag
$$

# Properties of Ising Anyons

## Fusion Channels

There are three elements in the Ising anyons model. A fermion denoted as $\psi$, an anyon denoted as $\sigma$, and vacuum $\vac$. The fusion rules are

$$
\begin{array}{cccccc}
\vac \times \vac =& \vac &
\vac \times \psi =& \psi &
\vac \times \sigma =& \sigma \\
& & 
\psi\times \psi =& \vac &
\psi\times \sigma =& \sigma  \\
& &
& &
\sigma\times\sigma  =& \vac+\psi.
\end{array}
$$

The physical significance as well as experimental realization will not be discussed in this post.

> If you write the consecutive fusion result of $\sigma$ anyons, you will have
> 
> $$
> \begin{align*}
> \sigma \times \sigma \times \sigma &= (\sigma \times \sigma) \times \sigma \\
> &=(\vac + \psi)\times \sigma\\
> &=\vac \times \sigma + \psi \times \sigma\\
> &=\sigma + \sigma \\
> & = 2\sigma
> \end{align*}
> $$
> 
> Where the $2$ does not mean two sigma anyons. It is means that there are two fusion channels or paths, one of them passes through $\vac$ and the other passes through $\psi$. Both of them end up with one $\sigma$ anyon.

## $F$-Matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Fmatrix.png" alt="F-matrix" width="50%">

If we list all the possible combinations of fusion tree, the only non-trivial ones are those have $\sigma\times \sigma=\psi+\vac$ as intermediate results. In that case, $a$ and $b$ must be $\sigma$ on the left fusion tree, $b$ and $c$ must be $\sigma$ on the right fusion tree, the total fusion is either $\vac$ with $\sigma$ or $\psi$ with $\sigma$, leaving the $d$ a $\sigma$ anyon.

Thus the only non-trivial $F$-matrix is $F_{\sigma\sigma\sigma}^\sigma$, for simplicity, this matrix will be denoted as $F$. Since there are only two fusion channels, $F$ is a $2\times 2$ matrix, whose elements will be denoted as $F_{11},\ F_{12},\ F_{21},\ F_{22}$, where subscript $1$ correspond to $\vac$ and $2$ correspond to $\psi$.

All other $F$-matrices are just $\mathbb{C}$-numbers. We are going to find and list some of the most trivial $F$-matrices so we can use them in the pentagon equation to obtain $F_{\sigma\sigma\sigma}^\sigma$.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Trivial-F-matrices.png" alt="Trivial F-matrices" width="70%">

Next, we are going to solve for the explicit matrix elements of $F$-matrices using the pentagon identity.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Pentagon.png" alt="Pentagon identity" width="40%">



## $R$-matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Rmatrix.png" alt="R-matrix" width="50%">



<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Hexagon.png" alt="Hexagon identity" width="30%">



# Computation with Ising Anyons





# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---



