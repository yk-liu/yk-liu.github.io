---
title: Lie-Group-and-Lie-Algebra
categories: Topology
tags:
keywords:
Description: Many operations such as rotations and translations can be regarded as elements of a Lie group. With such operations certain symmetries can be extracted, and generators can be defined. Investigating the Lie group and further Lie algebras gives us solid ground about Poisson brackets.
status: Writing
---

$$
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
%\renewcommand{\vec}{\mathbf}
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\mani}{\mathcal}
\newcommand{\field}{\mathscr}
\newcommand{\Tspace}[1]{T\! {#1}}
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\op}{\hat}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
\newcommand{\Eqn}[1]{\text{(Eqn. }\ref{#1}\text{)}}
\newcommand{\dual}{\tilde}
\newcommand{\vard}{\mathfrak{d}}
\newcommand{\vare}{\mathfrak{e}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\i}{\mathrm{i}}
\newcommand{\blue}{\color{blue}}
\newcommand{\red}{\color{red}}
\newcommand{\norm}[1]{\left\vert{#1}\right\vert}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\lb}[2]{\left \lbrack \! \left \lbrack {#1} , {#2}\right\rbrack\!\right\rbrack}
\newcommand{\pb}[2]{\left\lbrace {#1} , {#2} \right\rbrace}
\newcommand{\slot}{\,\cdot\,}
\newcommand{\L}{\mathsf{L}}
\notag
$$

# Lie Group

Roughly speaking, a Lie group is a continuous group. The elements in this group are continuous and the group operations are continuous.

A Lie group $(G,\cdot)$ is a differentiable manifold with a group structure such that the operations

1. $\cdot : G\times G \rightarrow G,\, (g_1,g_2)\mapsto g_1\cdot g_2$
2. $^{-1}: G\rightarrow G,\, g\mapsto g^{-1}$.

are differentiable.

## Lie Group Examples and Representation



# Lie Algebra

## Terminologies

### General Algebra

An algebra is defined as a vector space equipped with a bilinear map $\lb{\slot}{\slot} : V\times V \rightarrow V$. Such vector space is called an **algebra**. This bilinear map can be interpreted as a product, but for future reference, it is written in the form similar to QM brackets.

Vectors in $\R^3$ with cross product is an algebra.

### General Derivation

A **derivation** $D$ is a linear map from an algebra to itself: $D: A\rightarrow A$ that satisfies the Leibnitz Rule:
$$
D(\lb{f}{g})=\lb{Df}{g}+\lb{f}{Dg}
$$
If we write the bilinear map as $\circ$, it's clear that it's a generalization of derivatives.
$$
D(f\circ g)=(Df)\circ g+f\circ (Dg)
$$
Poisson bracket is a derivation on the algebra of functions on phase space, i.e., observables.
$$
\D{}{t}=\pb{H}{\slot}
$$

## General Lie Algebra

An general Lie algebra is defined as a $K$-vector space $(K, + ,\cdot )$ equipped with an Lie bracket $\lb{\slot}{\slot } $ such that

1. bilinear: $\lb{\slot}{\slot}: L\times L \rightarrow L$
2. antisymmetric: $\lb{x}{y}= - \lb{y}{x}$
3. Jacobian identity: $\lb{x}{\lb{y}{z}}+\lb{y}{\lb{z}{x}}+\lb{z}{\lb{x}{y}}=0$

> example: $L\dfdas \Gamma(TM)$ is a $\R$-vector space.
>
> $\lb{\slot}{\slot}\dfdas[\slot,\slot]$ (bracket of vector fields)
>
> Thus $\Gamma(TM)$ is a infinite dimensional Lie algebra

## Lie Algebra

Let $(G,\cdot )$ be a Lie group. A **left translation** $l_g$ is defined as
$$
l_g:G\rightarrow G\\
h\mapsto l_g(h)\dfdas g\cdot h
$$
Each $l_g$ is an isomorphism.  

> injective: $l_g h=l_g h^\prime \rightarrow h=h^\prime$
>
> surjective: $l_g(g^{-1} \cdot h ) = g \cdot g^{-1}\cdot h = h$

Certainly $l_g$ is a diffeomorphism on $G$. 

Remark: Recall that we could extend the pull back (which is defined for covectors at a point) to covector field. By proofing that this $l_g$ is a diffeomorphism (namely bijective + smooth), we can push forward the vector field.

Upshot: we can push forward any vector field $X$ on $G$ to another vector field $l_g ^* X$:
$$
(l_g* X)_{gh} (vector field at point gh) \dfdas l_g^* (X_h)
$$
The **invariant vector fields** are of interest.

Let $(G \cdot)$ be a Lie group, and $X$ a vector field on $G$ then X is called left invariant if for any $g\in G$,
$$
l_g^* X = X.
(vector field eqn.)
$$
Alternatively, one can write this as
$$
l_g^* (X_h) = X_{gh} (vector eqn.)
$$
or, $\forall g \in G, \forall f \in C^\infty(G)$
$$
\begin{align*}
(l_g^*X_h)f &= X_{gh} f\\
(def. of push forward )X_h (f\circ l_g)&= (Xf )(gh)\\
[X(f\circ l_g)] (h)&=[(Xf)\circ l_g ] (h)\\
X(f\circ l_g)&=(Xf)\circ l_g \\
\end{align*}
$$
Def. The set of all left-invariant vector fields on a Lie group $G$ be denoted $\L (G)\sub \Gamma(TG)$.

Notice that this is a $\R$-vector space. this is finite dimensional.  

> Theorem : $[\slot,\slot]$ maps $\L(G)\times \L(G)\rightarrow \L(G)$ is a Lie algebra. (proof the [x,y] is left invar.)
>
> Proof: 
> $$
> \begin{align*}
> [X,Y](f\circ l_g)&= X(Y(f\circ l_g))-Y(X(f\circ l_g))\\
> &=X((Yf)\circ l_g)-Y((Xf)\circ l_g)\\
> &=X(Yf)\circ l_g-Y(Xf)\circ l_g\\
> &=([X,Y]f)\circ l_g thus it is left invar.
> \end{align*}
> $$
>

> Theorem: $\L(G) \simeq_\text{iso as vector space} T_e G$
>
> proof:
> $$
> \begin{align*}
> j: T_e G\rightarrow\L(G)\\
> A \mapsto j(A)\\
> j(A)_g\dfdas l_g^* A ,\quad\forall g\in G
> \\
> l_h^*(j(A)_g)=l_h^*(l_g^*A)=l_{hg}^*A=j(A)_{hg} 
> 
> 
> \end{align*}
> $$
>


