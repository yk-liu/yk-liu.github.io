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
\newcommand{\vac}{{1\!\!\!\mathsf{\phantom{I}I}}}
\newcommand{\la}{\mathfrak}
\newcommand{\anti}{\overline}
\notag
\require{cancel}
$$

# Properties of Ising Anyons

This post mostly follows Pachos's book of introduction to topological quantum computation.

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
> Where the $2$ does not mean two sigma anyons. It is means that there are two fusion channels or paths, one of them passes through $\vac$ and the other passes through $\psi$. Both of them end up with one $\sigma$ anyon. Thus, $2$ retains the dimension of this fusion space.

## $F$-Matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Fmatrix.png" alt="F-matrix" width="50%">

If we list all the possible combinations of fusion tree, the only non-trivial ones are those have $\sigma\times \sigma=\psi+\vac$ as intermediate results. In that case, $a$ and $b$ must be $\sigma$ on the left fusion tree, $b$ and $c$ must be $\sigma$ on the right fusion tree, the total fusion is either $\vac$ with $\sigma$ or $\psi$ with $\sigma$, leaving the $d$ a $\sigma$ anyon.

Thus the only non-trivial $F$-matrix is $F_{\sigma\sigma\sigma}^\sigma$, for simplicity, this matrix will be denoted as $F$ when there is no possible confusion. Since there are only two fusion channels, $F$ is a $2\times 2$ matrix, whose indices can only be $\set{\psi,\vac}$.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Nontrivial-F-matrix.png" alt="nontrivial F-matrix" width="50%">

As expected, since there are only three types of anyons including vacuum, the pentagon equation will be simplified. To calculate the explicit elements of $F_{\sigma\sigma\sigma}^\sigma$, we fill in some of the blanks. 

The key is to make sure our target $F_{\sigma\sigma\sigma}^\sigma$ appear  somewhere in the edge of the pentagon. But we need to draw multiple Pentagon diagrams to have enough equations to solve for the $F$-matrices.

### Step 1: First Pentagon

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Pentagon.png" alt="Pentagon identity" width="100%">

The pentagon equation is written as
$$
\begin{align}\left(F_{a34}^5\right)_c^b  \left(F_{12c}^5\right)_d^a & = \sum_e \left(F_{123}^b\right)_e^a  \left(F_{1e4}^5\right)_d^b  \left(F_{234}^d\right)_c^e 
\notag\\ 
&\downarrow \set{1,2,3,4,b,d} =\set{\sigma},\  5=\vac 
\notag\\
\left(F_{a\sigma\sigma}^\vac\right)_c^\sigma  \left(F_{\sigma\sigma c}^\vac\right)_\sigma ^a  & = \sum_e \left(F_{\sigma\sigma\sigma}^\sigma\right)_e^a  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  \left(F_{\sigma\sigma\sigma}^\sigma\right)_c^e
\label{penta}
\end{align}
$$
Apart from $F_{\sigma\sigma\sigma}^\sigma$, all other $F$-matrices are just $\mathbb{C}$-numbers, up to an overall phase factor. This corresponds to a gauge degree of freedom that I will fix to $+1$ (or $-1$, read on to see when it's $-1$). We are going to find and list the trivial $F$-matrices appeared in $\Eqn{penta}$ so we can use them in the pentagon equation to obtain $F_{\sigma\sigma\sigma}^\sigma$.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Trivial-F-matrices.png" alt="Trivial F-matrices" width="100%">

Notice the forbidden fusion tree is marked with a large red cross. $F$-matrices with such trees are just $0$. Substitute corresponding values of $a,c$ into $\left(F_{a\sigma\sigma}^\vac\right)_c^\sigma  \left(F_{\sigma\sigma c}^\vac\right)_\sigma ^a  = \sum_e F_e^a  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  F_c^e$, we have

|          |                          $a =\vac$                           |                          $a= \psi$                           |
| -------- | :----------------------------------------------------------: | :----------------------------------------------------------: |
| $c=\vac$ | $$\begin{align*}\left(F_{\vac\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\sigma\sigma \vac}^\vac\right)_\sigma ^\vac  &= \sum_e F_e^a  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  F_c^e\\1\cdot 1=& F_\psi^\vac  \left(F_{\sigma \psi\sigma}^\vac\right)_\sigma^\sigma  F_\vac^\psi + F_\vac^\vac  \left(F_{\sigma \vac\sigma}^\vac\right)_\sigma^\sigma  F_\vac^\vac \\1=&F_\psi^\vac \cdot 1 \cdot F_\vac^\psi + F_\vac^\vac \cdot 1 \cdot F_\vac^\vac \\1=& F_\psi^\vac F_\vac^\psi + (F_\vac^\vac)^2\end{align*}$$ | $$\begin{align*} \left(F_{\vac\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\sigma\sigma \psi}^\vac\right)_\sigma ^\vac  &= \sum_e F_e^\vac  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  F_\psi^e\\0\cdot 0  =& F_\psi^\vac  \left(F_{\sigma \psi \sigma}^\vac\right)_\sigma^\sigma F_\psi^\psi + F_\vac^\vac  \left(F_{\sigma \vac\sigma}^\vac\right)_\sigma^\sigma  F_\psi^\vac\\0=&F_\psi^\vac   F_\psi^\psi + F_\vac^\vac  F_\psi^\vac\end{align*}$$ |
| $c=\psi$ | $$\begin{align*}\left(F_{\psi\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\sigma\sigma \vac}^\vac\right)_\sigma ^\psi  &= \sum_e F_e^\psi  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  F_\vac^e\\0\cdot 0  =& F_\vac^\psi  \left(F_{\sigma \vac \sigma}^\vac\right)_\sigma^\sigma F_\vac^\vac + F_\psi^\psi  \left(F_{\sigma \psi\sigma}^\vac\right)_\sigma^\sigma  F_\vac^\psi\\0=&F_\vac^\psi   F_\vac^\vac + F_\psi^\psi  F_\vac^\psi\end{align*}$$ | $$\begin{align*}\left(F_{\psi\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\sigma\sigma \psi}^\vac\right)_\sigma ^\psi & = \sum_e F_e^\psi  \left(F_{\sigma e\sigma}^\vac\right)_\sigma^\sigma  F_\psi^e\\1\cdot 1=&F_\psi^\psi  \left(F_{\sigma \psi\sigma}^\vac\right)_\sigma^\sigma  F_\psi^\psi + F_\vac^\psi  \left(F_{\sigma \vac\sigma}^\vac\right)_\sigma^\sigma  F_\psi^\vac\\1=&F_\psi^\psi  \cdot 1\cdot  F_\psi^\psi + F_\vac^\psi \cdot 1 \cdot F_\psi^\vac\\1=&(F_\psi^\psi) ^2 + F_\vac^\psi F_\psi^\vac\end{align*}$$ |

Notice that the above identities are about elements, so the elements are associative. Rearrange and collect the results: 
$$
\begin{array}{}
1 = F_\psi^\vac \cdot F_\vac^\psi + (F_\vac^\vac)^2 & & 1=F_\psi^\vac \cdot F_\vac^\psi + (F_\vac^\vac)^2 \\
1 = F_\psi^\vac \cdot F_\vac^\psi + (F_\psi^\psi)^2 &  \Rightarrow&  \\
0=F_\psi^\vac(F_\psi^\psi + F_\vac^\vac)& & F_\psi^\psi =- F_\vac^\vac
\end{array}
$$
As you can see, there is only two independent equations, from diagonal parts of the above table.

### Step 2: Second Pentagon

We can draw a second pentagon as below.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Pentagon-2.png" alt="Second pentagon identity" width="100%">

This time we are going to find out the two sets of independent equations from $\Eqn{penta2}$ and only list the $F$-matrices appears in those equations.
$$
\begin{align}\left(F_{a34}^5\right)_c^b  \left(F_{12c}^5\right)_d^a & = \sum_e \left(F_{123}^b\right)_e^a  \left(F_{1e4}^5\right)_d^b  \left(F_{234}^d\right)_c^e 
\notag\\ 
&\downarrow \set{2,3,4,5,a,d} =\set{\sigma},\  1=\psi 
\notag\\
\left(F_{\sigma\sigma\sigma}^\sigma\right)_c^b  \left(F_{\psi\sigma c}^\sigma\right)_\sigma^\sigma & = \sum_e \left(F_{\psi\sigma\sigma}^b\right)_e^\sigma  \left(F_{\psi e\sigma}^\sigma\right)_\sigma^b  \left(F_{\sigma\sigma\sigma}^\sigma\right)_c^e 
\label{penta2}\\ 
\end{align}
$$

The two sets of independent equation can be obtained by setting $b=\vac, c=\vac $ and $b=\vac, c=\psi$. We have

| $$b=\vac ,\ c=\vac$$                                         | $$b=\vac ,\ c=\psi$$                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| $$\begin{align*}F_\vac^\vac  \left(F_{\psi\sigma \vac}^\sigma\right)_\sigma^\sigma &= \sum_e \left(F_{\psi\sigma\sigma}^\vac\right)_e^\sigma  \left(F_{\psi e\sigma}^\sigma\right)_\sigma^\vac  F_\vac^e \\F_\vac^\vac \cdot  =& \left(F_{\psi\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\psi \psi\sigma}^\sigma\right)_\sigma^\vac  F_\vac^\psi +  \left(F_{\psi\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\psi \vac\sigma}^\sigma\right)_\sigma^\vac  F_\vac^\vac\\F_\vac^\vac =& 1\cdot1\cdot F_\vac^\psi + 0\cdot 1 \cdot F_\vac^\vac\\F_\vac^\vac=&F_\vac^\psi\end{align*}$$ | $$\begin{align*}F_\psi^\vac  \left(F_{\psi\sigma \psi}^\sigma\right)_\sigma^\sigma & = \sum_e \left(F_{\psi\sigma\sigma}^\vac\right)_e^\sigma  \left(F_{\psi e\sigma}^\vac\right)_\sigma^\vac  F_\psi^e \\F_\psi^\vac \cdot ({\color{red}-1})=&\left(F_{\psi\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\psi \vac\sigma}^\sigma\right)_\sigma^\vac  F_\psi^\vac + \left(F_{\psi\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\psi \psi\sigma}^\vac\right)_\sigma^\vac  F_\psi^\psi\\-F_\psi^\vac=&0\cdot 1\cdot F_\psi^\vac +1\cdot1\cdot F_\psi^\psi\\-F_\psi^\vac=&F_\psi^\psi\end{align*}$$ |

where $\left(F_{\psi\sigma \psi}^\sigma\right)_\sigma^\sigma = -1$ is a choice to make $F$-matrix unitary. As the reason for doing so, see [`About the "Arbitrary Phase Factor"`](#about-the--arbitrary-phase-factor-).

### About the "Arbitrary Phase Factor"

From [^1]:

> Given a set of fusion rules $N^k_{i,j}$ solving the pentagons turns out to be a difficult task (even with the help of computers). However, certain normalizations can be made to simplify the solutions. If one of the indices of the $F$-matrix $a, b, c$ is the trivial type $\vac$, we may assume $F^{d}_{a,b,c} = 1$. In the Fibonacci theory, we may also assume $F_{a,b,c}^\vac = 1$. There are many pentagons even for the Fibonacci theory depending on the four anyons to be fused and their total charges: a priori $2^5 = 32$.

While in Pachos' book, the explanation for some element are set to $1$ was simply "otherwise the $F$-matrix wouldn't be unitary". I suspect the justification is or (superficially) a direct result from brute force calculation, or maybe related to the category theory. For now I will stop digging deeper and be content with what I have.


## $R$-matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Rmatrix.png" alt="R-matrix" width="40%">



<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Hexagon.png" alt="Hexagon identity" width="70%">



# Computation with Ising Anyons





# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---

[^1]: Trebst, S., Troyer, M., Wang, Z., & Ludwig, A. W. (2008). A short introduction to Fibonacci anyon models. *Progress of Theoretical Physics Supplement*, *176*, 384-407.