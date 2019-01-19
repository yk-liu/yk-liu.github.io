---
title: Lie-Group-and-Lie-Algebra
categories: Topology
tags: Pullback Pushforward Lie-group Lie-algebra
keywords: Pull-back Push-forward algebra left-invariant-vector-field
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

This post follows [[**Bohm**, A. et al](https://www.springer.com/us/book/9783540000310)] and [[Frederic Schuller's Lectures on Geometrical Anatomy of Theoretical Physics](https://www.youtube.com/playlist?list=PLPH7f_7ZlzxTi6kS4vCmv4ZKm9u8g5yic)].

# Terminologies

## General Algebra

An algebra is defined as a vector space equipped with a bilinear map $\lb{\slot}{\slot} : V\times V \rightarrow V$. Such vector space is called an **algebra**. This bilinear map can be interpreted as a product, but for future reference, it is written in the form similar to QM brackets.

Vectors in $\R^3$ with cross product is an algebra.

## General Derivation

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

## Lie Group

Roughly speaking, a Lie group is a continuous group. The elements in this group are continuous and the group operations are continuous.

A Lie group $(G,\cdot)$ is a differentiable manifold with a group structure such that the operations

1. $\cdot : G\times G \rightarrow G,\, (g_1,g_2)\mapsto g_1\cdot g_2$
2. $^{-1}: G\rightarrow G,\, g\mapsto g^{-1}$.

are differentiable.

## Pullback and Pushforward

This section follows [[**Bohm**, A. et al](https://www.springer.com/us/book/9783540000310)].

### Vectors Are Pushed Forward

Left $M_1$ and $M_2$ be smooth manifolds, $p\in M_1$ and $\varphi: M_1\rightarrow M_2$ be a smooth function. Then $\varphi$ induces a *linear* map 
$$
\varphi _ * : T_p M_1 \rightarrow T_{\varphi(p)}M_2
$$
celled the **pushforward** or the **differential map**. This map is described by considering an arbitrary tangent vector $v_p\in T_p M$ to a curve $C_1:[0,1]\rightarrow M_1$, i.e., $v_p = \Big.\D{C_1}{t}\Big\vert_{t=0}$. The image of $C_1$ is a smooth curve in $M_2$ under $\varphi$:
$$
C_2\dfdas\varphi\circ C_1: [0,1]\rightarrow M_2
$$
The push forward of vector is then
$$
\varphi_* (v_p)=v_{*p} \dfdas \Big.\D{C_2}{t}\Big\vert_{t=0}
$$

### Differential Forms Are Pulled Back

Left $M_1$ and $M_2$ be smooth manifolds, $p\in M_1$ and $\varphi: M_1\rightarrow M_2$ be a smooth function. Then $\varphi$ induces a *linear* map 
$$
\varphi ^ * : T_p^* M_1 \leftarrow T_{\varphi(p)}^*M_2
$$
celled the **pullback map**. This map is described by considering an arbitrary cotangent vector $\omega_{\varphi(p)}$ at $T_{\varphi(p)}^*M$. The pullback is defined as its action on an arbitrary on an arbitrary element $u_p$ of $T_pM$. We have
$$
\big[\varphi^*(\omega_{\varphi(p)})\big](v_p)=\omega^*_{\varphi(p)}(u_p)\dfdas \omega_{\varphi(p)}(v_{*p})
$$

# Lie Algebra of a Lie Group

Recall that in the chapter on tangent vectors, we mentioned that in general there is no way to define a vector using vocabularies of manifold itself. Lie algebra can be seen as a way to connect a tangent vector $V_p\in T_p M$ at point $p\in M$ to a neighboring point $p^\prime \in M$. In this way, one may think the tangent vector as an infinitesimal little arrows (namely $\vec {pp^\prime}$) on manifold $M$.

> example: $L\dfdas \Gamma(TM)$ is a $\R$-vector space.
>
> $\lb{\slot}{\slot}\dfdas[\slot,\slot]$ (bracket of vector fields)
>
> Thus $\Gamma(TM)$ is a infinite dimensional Lie algebra

## Lie Algebra are Left Invariant Vector Fields

Let $(G,\cdot )$ be a Lie group. A **left translation** $L_g$ is defined as
$$
L_g:G\rightarrow G\\
h\mapsto L_g(h)\dfdas g\cdot h
$$
Each $R _ g$ is an isomorphism and a diffeomorphism on $G$. 

Since this $L _ g$ is a diffeomorphism (namely bijective and smooth), we can push forward the vector field $X$ on $G$ to another vector field ${L _ g}^* X$:

$$
({L _ g}^* X) _ {gh}\dfdas {L _ g}^* (X _ h)
$$
The **left invariant vector fields** are of interest.

Let $(G \cdot)$ be a Lie group, and $X$ a vector field on $G$ then $X$ is called left invariant if for any $g\in G$,
$$
{L_g}^* X = X.
$$
Alternatively, one can write this as a point wise vector equation:
$$
l_g^* (X_h) = X_{gh}
$$
This abstract left invariant vector field satisfies the requirements of a Lie algebra.

or, $\forall g \in G, \forall f \in C^\infty(G)$
$$
\begin{align*}
(l_g^*X_h)f &= X_{gh} f\\
X_h (f\circ l_g)&= (Xf )(gh)\\
[X(f\circ l_g)] (h)&=[(Xf)\circ l_g ] (h)\\
X(f\circ l_g)&=(Xf)\circ l_g \\
\end{align*}
$$
Def. The set of all left-invariant vector fields on a Lie group $G$ be denoted $\L (G)\sub \Gamma(TG)$.

### Lie bracket of vector fields

If we have two vector fields $V=V^i(x)\Partial{}{x^i}$ and $W=W^j(x)\Partial{}{x^j}$, we first define the composite of vectors $V \circ W$ as their actions on function $f(x)$ , notice that
$$
W_p(f) =W^j(x_p)\Partial{f}{x^j} \in \R
$$
can be seen as a function $W(f): M\rightarrow \R,  p \mapsto W^j(x_p)\Partial{f}{x^j}$. Thus we can apply another vector filed to this function as:
$$
\begin{align*}
\Big[V\circ W \Big](f) &= V\Big(W(f)\Big)\\
&=V^i(x) \cdot \Partial{}{x^i}\bigg(W^j(x_p)\Partial{f}{x^j}\bigg)\\
\end{align*}
$$

Notice that both $W^j(x_p)$ and $\Partial{f(x)}{x^j}$ are merely functions $M\rightarrow \R$, thus the Leibnitz rule applies,
$$
\begin{align*}
\Big[V\circ W \Big](f) &=V^i(x) \cdot \Partial{}{x^i}\bigg(W^j(x_p)\Partial{f}{x^j}\bigg)\\
&=V^i(x) \cdot \left(\Partial{W^j(x_p)}{x^i}\cdot\Partial{f}{x^j}\right) +V^i(x) \cdot \left(W^j(x_p)\cdot \Partial{\Partial{f}{x^j}}{x^i}\right)
\end{align*}
$$
notice that 
$$
\Partial{\Partial{f}{x^j}}{x^i} = \Partial{^2}{x^i\partial{x^j}} f
$$
==need proof here==

Write that in operator form, we have
$$
V\circ W  =V^i(x) \cdot \left(\Partial{W^j(x_p)}{x^i}\cdot\Partial{}{x^j}\right) +V^i(x) \cdot \left(W^j(x_p)\cdot \Partial{^2}{x^i\partial x^j}\right)
$$


Now we can define the **commutator**:
$$
\begin{align*}
[V,W] &=V \circ W - W\circ V\\
&=V^i(x) \cdot \left(\Partial{W^j(x_p)}{x^i}\cdot\Partial{}{x^j}\right) +V^i(x) \cdot \left(W^j(x_p)\cdot \Partial{^2}{x^i\partial x^j}\right) - \\ 
&\qquad W^j(x) \cdot \left(\Partial{V^i(x_p)}{x^j}\cdot\Partial{}{x^i}\right) +W^i(x) \cdot \left(V^j(x_p)\cdot \Partial{^2}{x^j\partial x^i}\right)\\
& = V^i(x) \cdot \left(\Partial{W^j(x_p)}{x^i}\cdot\Partial{}{x^j}\right)- W^j(x) \cdot \left(\Partial{V^i(x_p)}{x^j}\cdot\Partial{}{x^i}\right)
\end{align*}
$$

notice that the indices $i, j $ are summed over, so it's okay to change the latter dummy indices in both terms so we can collect them.
$$
\begin{align*}
[V,W]  & = V^i(x) \cdot \left(\Partial{W^k(x_p)}{x^i}\cdot\Partial{}{x^k}\right)- W^j(x) \cdot \left(\Partial{V^k(x_p)}{x^j}\cdot\Partial{}{x^k}\right)\\
&= \underbrace{\left(V^i(x) \cdot \Partial{W^k(x_p)}{x^i}- W^j(x) \cdot \Partial{V^k(x_p)}{x^j}\right)}_{U^k}\cdot\Partial{}{x^k}\\
\end{align*}
$$

### Left Invariant Vector Fields' commutator

> Theorem : $[\slot,\slot]: \L(G)\times \L(G)\rightarrow \L(G)$ is a Lie algebra. (i.e., $[x,y]$ is left invar.)
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


