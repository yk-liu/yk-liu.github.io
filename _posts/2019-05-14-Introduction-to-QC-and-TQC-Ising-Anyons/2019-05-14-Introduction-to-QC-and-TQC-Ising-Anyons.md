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
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
\newcommand{\Eqn}[1]{\text{Eqn. (}\ref{#1}\text{)}}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\vac}{ {1\!\!1}}
\newcommand{\la}{\mathfrak}
\newcommand{\anti}{\overline}
\newcommand{\Id}{\mathbb I}
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

The physical significance, as well as experimental realization, will not be discussed in this post.

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

The key is to make sure our target $F_{\sigma\sigma\sigma}^\sigma$ appears somewhere in the edge of the pentagon. But we need to draw multiple Pentagon diagrams to have enough equations to solve for the $F$-matrices.

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

Notice the forbidden fusion tree is marked with a large red cross. $F$-matrices with such trees are just $0$. Substitute corresponding values of $a,c$ into $\left(F _ {a\sigma\sigma}^\vac\right) _ c^\sigma  \left(F _ {\sigma\sigma c}^\vac\right) _ \sigma ^a  = \sum _ e F _ e^a  \left(F _ {\sigma e\sigma}^\vac\right) _ \sigma^\sigma  F _ c^e$, we have

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

As you can see, there are only two independent equations, from diagonal parts of the above table.

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

The two sets of independent equation can be obtained by setting $b=\vac, c=\vac $ and $b=\vac, c=\psi$. After finding the trivial $F$-matrices associated with the equations,  

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Trivial-F-matrices-2.png" alt="Trivial F-matrices" width="70%">

We have:

|                     $$b=\vac ,\ c=\vac$$                     |                     $$b=\vac ,\ c=\psi$$                     |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| $$\begin{align*}F_\vac^\vac  \left(F_{\psi\sigma \vac}^\sigma\right)_\sigma^\sigma &= \sum_e \left(F_{\psi\sigma\sigma}^\vac\right)_e^\sigma  \left(F_{\psi e\sigma}^\sigma\right)_\sigma^\vac  F_\vac^e \\F_\vac^\vac \cdot  =& \left(F_{\psi\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\psi \psi\sigma}^\sigma\right)_\sigma^\vac  F_\vac^\psi +  \left(F_{\psi\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\psi \vac\sigma}^\sigma\right)_\sigma^\vac  F_\vac^\vac\\F_\vac^\vac =& 1\cdot1\cdot F_\vac^\psi + 0\cdot 1 \cdot F_\vac^\vac\\F_\vac^\vac=&F_\vac^\psi\end{align*}$$ | $$\begin{align*}F_\psi^\vac  \left(F_{\psi\sigma \psi}^\sigma\right)_\sigma^\sigma & = \sum_e \left(F_{\psi\sigma\sigma}^\vac\right)_e^\sigma  \left(F_{\psi e\sigma}^\vac\right)_\sigma^\vac  F_\psi^e \\F_\psi^\vac \cdot ({\color{red}-1})=&\left(F_{\psi\sigma\sigma}^\vac\right)_\vac^\sigma  \left(F_{\psi \vac\sigma}^\sigma\right)_\sigma^\vac  F_\psi^\vac + \left(F_{\psi\sigma\sigma}^\vac\right)_\psi^\sigma  \left(F_{\psi \psi\sigma}^\vac\right)_\sigma^\vac  F_\psi^\psi\\-F_\psi^\vac=&0\cdot 1\cdot F_\psi^\vac +1\cdot1\cdot F_\psi^\psi\\-F_\psi^\vac=&F_\psi^\psi\end{align*}$$ |

where $\left(F_{\psi\sigma \psi}^\sigma\right)_\sigma^\sigma = -1$ is a choice to make $F$-matrix unitary. As the reason for doing so, see [`About the "Arbitrary Phase Factor"`](#about-the--arbitrary-phase-factor-).

### Step 3: Solve for the $F$-Matrix

So far we have $4$ equations for the elements. Notice the fact that $F$-matrix is unitary does not appear as a constraint but serves as a condition to be satisfied after our choices of gauge (i.e., the arbitrary phase factor).

$$
\begin{align*}
1 &=F_\psi^\vac \cdot F_\vac^\psi + (F_\vac^\vac)^2 \\
F_\psi^\psi &=- F_\vac^\vac\\
F_\vac^\vac &= F_\vac^\psi \\
F_\vac^\vac &= - F_\psi^\psi
\end{align*}
$$

Which we can solve for the elements of $F$ as

$$
F=
\begin{pmatrix}
F_\vac^\vac & F_\psi^\vac \\
F_\psi^\vac & F_\psi^\psi
\end{pmatrix} 
=\pm \frac{1}{\sqrt2}
\begin{pmatrix}
1 & 1 \\
1 & -1
\end{pmatrix}
$$

where the $\pm$ is called the Frobenius–Schur indicator (see Pachos).

### About the "Arbitrary Phase Factor"

From [^1]:

> Given a set of fusion rules $N^k_{i,j}$ solving the pentagons turns out to be a difficult task (even with the help of computers). However, certain normalizations can be made to simplify the solutions. If one of the indices of the $F$-matrix $a, b, c$ is the trivial type $\vac$, we may assume $F^{d} _ {a,b,c} = 1$. In the Fibonacci theory, we may also assume $F _ {a,b,c}^\vac = 1$. There are many pentagons even for the Fibonacci theory depending on the four anyons to be fused and their total charges: a priori $2^5 = 32$.

While in Pachos' book, the explanation for some elements is set to $1$ was simply "otherwise the $F$-matrix wouldn't be unitary". I suspect the justification is or (superficially) a direct result from brute force calculation, or may be related to the category theory. For now, I will stop digging deeper and be content with what I have.


## $R$-matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Rmatrix.png" alt="R-matrix" width="40%">

Recall the $R$-matrix as above. With all the $F$ matrices figured out, $R$-matrix is easy to calculate. The $R$-matrix is trivial if either $a$ or $b$ is vacuum. Since moving around a particle would not result in any topological phase.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/Hexagon.png" alt="Hexagon identity" width="70%">

$$
\begin{array}{}
\sum_b \left(F_{312}^4\right)_b^a R_{3b}^4 \left(F_{123}^4 \right)_c^b = R_{13}^a \left(F_{132}^4\right)_c^a R_{23}^c 
& \text{Simon's version.}\\
\sum_b \left(F_{231}^4\right)_b^c R_{1b}^4 \left(F_{123}^4 \right)_a^b = R_{13}^c \left(F_{213}^{4}\right)_a^c R_{12}^a 
&\text{Pachos' version}.
\end{array}
$$

I will chose to use Simon's version. Pachos' version is discussed in his book in detail. Using $\set{1,2,3,4}=\set{\sigma}$, we have for $b=\vac,\psi$:

$$
\sum_b \left(F_{\sigma\sigma\sigma}^\sigma\right)_b^a R_{\sigma b}^\sigma \left(F_{\sigma\sigma\sigma}^\sigma \right)_c^b = R_{\sigma\sigma}^a \left(F_{\sigma\sigma\sigma}^\sigma\right)_c^a R_{\sigma\sigma}^c\\
\Rightarrow F_\vac^a R_{\sigma \vac}^\sigma F_c^\vac + F_\psi^a R_{\sigma \psi}^\sigma F_c^\psi = R_{\sigma\sigma}^a F_c^a R_{\sigma\sigma}^c
$$

Now substitute the corresponding $a$ and $c$, 


|            |                          $$a=\vac$$                          |                          $$a=\psi$$                          |
| ---------- | :----------------------------------------------------------: | :----------------------------------------------------------: |
| $$c=\vac$$ | $$\begin{align}F_\vac^\vac R_{\sigma \vac}^\sigma F_\vac^\vac + F_\psi^\vac R_{\sigma \psi}^\sigma F_\vac^\psi &= R_{\sigma\sigma}^\vac F_\vac^\vac R_{\sigma\sigma}^\vac\notag\\\frac{1}{\sqrt2}( R_{\sigma \vac}^\sigma  +   R_{\sigma \psi}^\sigma) &= R_{\sigma\sigma}^\vac R_{\sigma\sigma}^\vac\label{avaccvac}\end{align}$$ | $$\begin{align}F_\vac^\psi R_{\sigma \vac}^\sigma F_\vac^\vac + F_\psi^\psi R_{\sigma \psi}^\sigma F_\vac^\psi &= R_{\sigma\sigma}^\psi F_\vac^\psi R_{\sigma\sigma}^\vac\notag\\ \frac{1}{\sqrt2}(R_{\sigma \vac}^\sigma  - R_{\sigma \psi}^\sigma) &= R_{\sigma\sigma}^\psi R_{\sigma\sigma}^\vac\label{apsicvac} \end{align}$$ |
| $$c=\psi$$ | $$\begin{align}F_\vac^\vac R_{\sigma \vac}^\sigma F_\psi^\vac + F_\psi^\vac R_{\sigma \psi}^\sigma F_\psi^\psi &= R_{\sigma\sigma}^\vac F_\psi^\vac R_{\sigma\sigma}^\psi\notag\\\frac{1}{\sqrt2}(R_{\sigma \vac}^\sigma - R_{\sigma \psi}^\sigma ) &= R_{\sigma\sigma}^\vac  R_{\sigma\sigma}^\psi\label{avaccpsi}\end{align}$$ | $$\begin{align}F_\vac^\psi R_{\sigma \vac}^\sigma F_\psi^\vac + F_\psi^\psi R_{\sigma \psi}^\sigma F_\psi^\psi &= R_{\sigma\sigma}^\psi F_\psi^\psi R_{\sigma\sigma}^\psi\notag\\\frac{1}{\sqrt2}(  R_{\sigma \vac}^\sigma  + R_{\sigma \psi}^\sigma )&= -R_{\sigma\sigma}^\psi R_{\sigma\sigma}^\psi\label{apsicpsi}\end{align}$$ |

The equations are the same with Pachos version of the hexagon. Notice that there only three independent equations, with an additional condition that circling an anyon around vacuum is trivial, $R_{\sigma\vac}^\sigma=1$.

$\Eqn{avaccvac}$ and $\Eqn{apsicpsi}$ implies that $R_{\sigma\sigma}^1=\pm \imath R_{\sigma\sigma}^\psi$. Adding $\Eqn{apsicvac}$ and $\Eqn{apsicpsi}$ gives $\sqrt 2=(1\pm \imath)(R_{\sigma\sigma}^1)^2$.

Finally, we have the solutions:

$$
R_{\sigma\vac}^\sigma=1 \quad \text{as a given trivial matrix}\\ R_{\sigma\psi}^{\sigma} = \imath\\
R_{\sigma\sigma}^\psi= \pm \e^{\tfrac{3\pi}{8}\imath} , 
R_{\sigma\sigma}^\vac= \pm \imath \e^{\tfrac{3\pi}{8}\imath}
$$

Where the overall phase is a choice of the combinations of different signs.

The $R_{\sigma\sigma}$ is considered a matrix as
$$
R_{\sigma\sigma} = \begin{pmatrix}R_{\sigma\sigma}^\vac &0\\0&R_{\sigma\sigma}^\psi\end{pmatrix}
$$


# Computation with Ising Anyons

## Encoding Single Qubit

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/single-qubit.png" alt="Anyons fusion space single Qubit" width="50%">

As is described before, since fusion is equivalent to a measurement, the only way to achieve superposition is to have an "incomplete measurement". For $4$ anyons, a certain total fusion result (called a sector) has two intermediate channels. In our case, we will always pull our $\sigma$ anyons pairwise form the vacuum, and fusion them back into the vacuum. 

## Encoding Two Q-Bits

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/two-qubit.png" alt="Anyons fusion space two Qubits" width="60%">

The same can be done for $2$ Qubits. $6$ anyons can encode two qubits. Following the same pattern, $2N$ anyons have $2^{N-1}$ intermediate fusion channels, and can thus encode $N-1$ qubits. 

As you can imagine, with the increase of the number of qubits, the fusion tree will become considerably larger and harder to draw. A new type of fusion diagram came into existence just to save some space. The idea depicted as below.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/different-fusion-diagrams.png" alt="different fusion diagrams" width="60%">

## Initialization

The initialization is then pulling different intermediate anyons from the vacuum. What is the physical process that determines whether a pair of $\sigma$ anyons or a pair of $\psi$ anyons are pulled from the vacuum? As an oversimplification, we can slowly turn on the defects so some excitations as anyons are introduced. Such appearance of anyons can be regarded as "pulling from the vacuum". In the case of Ising anyons, the building block is $\sigma$ anyon. By introducing defects, $\sigma$ anyons emerge. We can bring the $\sigma$ anyons together pair-wise to see if they behave like a $\psi$ or $\vac$. After such operation, we separate the anyons pair-wise as if they were pulled form $\psi$ or $\vac$. I will leave a detailed answer to the question to a case study of physical realization of such a system in later posts. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/initialization.png" alt="initialization of two Qubits" width="80%">

For now, we will just concern ourselves with the fact that we can control what to be pulled from the vacuum. As such, $N$ qubits can be prepared.

## Braiding Matrices

Imagine we implement some of the quantum gates using $R$ and $F$ matrices. The problem is that our $F$ and $R$ matrices are written in the basis of six $\sigma$ anyons, while our quantum gates are written in the basis of three pairwise fusion results.







## implementation of Clifford Gates

You might ask that if two anyons are created pairwise from the vacuum, how can they possibly fuse into $\psi$. That is achieved through Braiding to these anyons. In other words, two pairs of $\sigma$ anyons pulled from vacuum respectively can be regrouped pair-wisely and fused. Such intermediate fusion does not necessarily result in $\vac$ since the only constraint is the total fusion to be $\vac$.

The two ingredients we have are $F_{\sigma\sigma\sigma}^\sigma$ and $R_{\sigma\sigma}$, where we choose the gauge as
$$
F_{\sigma\sigma\sigma}^\sigma=F=\frac{1}{\sqrt2}\begin{pmatrix}1 & 1 \\1 & -1 \end{pmatrix}
\\
R_{\sigma\sigma}=R= \e^{-\tfrac{\pi}{8}\imath}\begin{pmatrix}1 &0\\0&\imath\end{pmatrix}
$$

> Such result can also be directly calculated from specific systems. See Section III. B. 2 of [^2].

Prepare:
$$
F^{-1}=F=\frac{1}{\sqrt2}\begin{pmatrix}1 & 1 \\1 & -1 \end{pmatrix}
\\
R^{-1}=R= \e^{-\tfrac{\pi}{8}\imath}\begin{pmatrix}1 &0\\0&\imath\end{pmatrix}
$$


To write the matrix in the fusion space of $6$ anyons, we have
$$
F_{ij}=\begin{pmatrix}\Id \\ &F_{11} &&F_{12} \\&&\Id \\ &F_{21}&&F_{22} \\ &&&&\Id \end{pmatrix}
$$
Here are some of the gates:
$$
R_{23} = \begin{pmatrix}1\\&\e^{-\tfrac{\pi}{8}}\\ &&\imath \e^{-\tfrac{\pi}{8}} \\&&&1 \\ &&&&1\\&&&&&1\end{pmatrix}
\\
\left(R_{23}\right)^2 = \begin{pmatrix}1\\&\e^{-\tfrac{\pi}{4}}\\ && \e^{\tfrac{\pi}{4}} \\&&&1 \\ &&&&1\\&&&&&1\end{pmatrix}
$$






## Fusion



## Summary

As is stressed before, the only constraint on the entire process of TQC is that we pull everything from the vacuum and return back to vacuum.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-14-Introduction-to-QC-and-TQC-Ising-Anyons/assets/knot.png" alt="fusion as knot" width="80%">





# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---

[^1]: Trebst, S., Troyer, M., Wang, Z., & Ludwig, A. W. (2008). A short introduction to Fibonacci anyon models. *Progress of Theoretical Physics Supplement*, *176*, 384-407.
[^2]: Nayak, C., Simon, S. H., Stern, A., Freedman, M., & Sarma, S. D. (2008). Non-Abelian anyons and topological quantum computation. *Reviews of Modern Physics*, *80*(3), 1083.