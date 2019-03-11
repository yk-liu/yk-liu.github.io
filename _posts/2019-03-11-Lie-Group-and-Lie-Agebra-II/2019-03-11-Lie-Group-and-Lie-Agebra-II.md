---
title: >
   Lie Group and Lie Algebra II: Differential Manifold
categories: Lie-group Topology
tags: Pullback Pushforward Lie-group Lie-algebra
keywords: Pull-back Push-forward algebra left-invariant-vector-field
status: Writing
edit: 2019-03-11
description: In this post Lie groups are regarded as a differential manifold and one-parameter subgroups are introduced. This is the second of a series posts start from Lie group and Lie algebra, where I try to understand "infinitesimal operators" and "generators" used by physicists from a mathematical standpoint.
---

$$
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\field}{\mathscr}
\newcommand{\Tspace}[1]{T\! {#1}}
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
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
\newcommand{\norm}[1]{\left\vert{#1}\right\vert}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\slot}{\,\cdot\,}
\newcommand{\lact}{\triangleright}
\newcommand{\ract}{\triangleleft}
\newcommand{\id}{1\!\!\!\mathsf{\phantom{I}I}}
\notag
$$

A nice thing about a manifold is that it can be treated as a usual Euclidean space locally. Most importantly, calculus structures can be introduced on a manifold, and all the related theorems will hold. Lie groups are named after Norwegian mathematician Sophus Lie, who wanted to have an elegant solution to ODEs. 

> Galois inspired Lie. If the discrete invariance group of an algebraic equation could be exploited to generate algorithms to solve the algebraic equation “by radicals,” might it be possible that the continuous invariance group of a differential equation could be exploited to solve the differential equation “by quadratures”? ... But what is the group that leaves the solutions of a differential equation invariant — or maps solutions into solutions? It turns out to be none other than the trivial constant that can be added to any indefinite integral. The additive constant is an element in a translation group. **(from Robert Gilmore)**

In this section, the ***Fundamental Theorem of Ordinary Differential Equations***  is used extensively. The theorem basically states that for any vector field over a smooth manifold, there **exists** a **unique** curve on a neighborhood of each point.

# From Lie Groups to Coordinates

Consider a Lie group $G$ with coordinates introduced in some neighborhood $N _ 0$ of the identity $e$. Thus any element $g\in N _ 0$ has a coordinate in $\R^n$ such that:

$$
g\rightarrow \left( g^1,g^2,\cdots, g^n\right).
$$

For convenience, the coordinate of identity $e$ is set to be the origin $(0,0,\cdots,0)$ without loss of generality. 

Inside this neighborhood $N _ 0$,  we can always find a subset $N^\prime$ that preserves the structure of Lie group. 

# Left-Invariant Vector Fields and Brackets

Remember that vectors, as well as vector fields, can be pushed forward. In analogy with **constant vector fields**, **left (or right)-invariant vector fields** are introduced. Later this left-invariant vector field will be mapped to $T_e G$ and will be shown to be a Lie algebra.

A left invariant vector field $X$ is called left invariant if for any $g\in G$,

$$
{L _ g}_* X = X.
$$

Alternatively, one can write this as a point wise vector equation:

$$
{L _ g}_* (X _ h)\stackrel{\text{by def.}}{=}({L _ g}^* X) _ {gh}= X _ {gh} \label{pointwise-left-invar.}
$$

$\Eqn{pointwise-left-invar.}​$ tells us that for any two points on the manifold $h​$ and $gh​$, the vectors are related by a simple "translation". Which means if the manifold is chosen to be Euclidean space, the left invariant vector field would be constant.

For future reference, some of properties of left invariant vector fields are listed here with some explanations: $\forall g \in G​$, $\forall f \in C^\infty(G)​$:

$$
\small\begin{align}
&\text{$f(t)$'s direc. deriv. along ${L _ g}_*X _ h$ }& ({L _ g}_*X _ h)f &= X _ {gh} f & \text{$f(t)$'s direc. deriv. along $X _ {gh}$ }
\\
&\text{$f(L_g(t))=f(g\cdot t)$'s direc. deriv. along $X_h$} & X _ h (f\circ L _ g)&= (Xf )_{gh} & \small\text{$f(t)$'s tangent V.F. at $g\cdot h$}
\\
&\text{$f(g\cdot t)$'s tangent V.F.} &X(f\circ L _ g)&={L_g}_*(Xf) & \small\text{$f(t)$'s tangent V.F., left translated} \label{left-invar.-property3}\\
&\text{$f(t)$'s tangent vector field at $gh$} & [Xf](gh) & \!\stackrel{\tiny\text{by def.}}{=}([Xf]\circ L_g) h & \text{function $[Xf]\!\circ\! L_g$ eval. at $h$} \label{left-invar.-property4}
\end{align}
$$

##  Bracket of Left-Invariant Vector Fields

This section follows [[**Bohm**, A. et al](https://www.springer.com/us/book/9783540000310)].

If we have two vector fields $V=V^i(x)\Partial{}{x^i}$ and $W=W^j(x)\Partial{}{x^j}$, we first define the composite of vectors $V \circ W$ as their actions on function $f(x)​$ , notice that

$$
W _ p(f) =W^j(x _ p)\Partial{f}{x^j} \in \R
$$

can be seen as a function $W(f): M\rightarrow \R,  p \mapsto W^j(x _ p)\Partial{f}{x^j}$. Thus we can apply another vector filed to this function as:

$$
\begin{align*}
\Big[V\circ W \Big](f) &= V\Big(W(f)\Big)\\
&=V^i(x) \cdot \Partial{}{x^i}\bigg(W^j(x _ p)\Partial{f}{x^j}\bigg)\\
\end{align*}
$$

Notice that both $W^j(x _ p)​$ and $\Partial{f(x)}{x^j}​$ are merely functions $M\rightarrow \R​$, thus the Leibnitz rule applies,

$$
\begin{align*}
\Big[V\circ W \Big](f) &=V^i(x) \cdot \Partial{}{x^i}\bigg(W^j(x _ p)\Partial{f}{x^j}\bigg)\\
&=V^i(x) \cdot \left(\Partial{W^j(x _ p)}{x^i}\cdot\Partial{f}{x^j}\right) +V^i(x) \cdot \left(W^j(x _ p)\cdot \Partial{\Partial{f}{x^j}}{x^i}\right)
\end{align*}
$$

notice from basic calculus

$$
\Partial{}{x^i}(\Partial{f}{x^j}) = \Partial{^2}{x^i\partial{x^j}} f = \Partial{}{x^j}(\Partial{f}{x^i})
$$

Write that in operator form, we have

$$
V\circ W  =V^i(x) \cdot \left(\Partial{W^j(x _ p)}{x^i}\cdot\Partial{}{x^j}\right) +V^i(x) \cdot \left(W^j(x _ p)\cdot \Partial{^2}{x^i\partial x^j}\right)
$$

Now we can define the **commutator**:

$$
\begin{align*}
[V,W] &=V \circ W - W\circ V\\
&=V^i(x) \cdot \left(\Partial{W^j(x _ p)}{x^i}\cdot\Partial{}{x^j}\right) +V^i(x) \cdot \left(W^j(x _ p)\cdot \Partial{^2}{x^i\partial x^j}\right) - \\ 
&\qquad W^j(x) \cdot \left(\Partial{V^i(x _ p)}{x^j}\cdot\Partial{}{x^i}\right) +W^i(x) \cdot \left(V^j(x _ p)\cdot \Partial{^2}{x^j\partial x^i}\right)\\
& = V^i(x) \cdot \left(\Partial{W^j(x _ p)}{x^i}\cdot\Partial{}{x^j}\right)- W^j(x) \cdot \left(\Partial{V^i(x _ p)}{x^j}\cdot\Partial{}{x^i}\right)
\end{align*}
$$

notice that the indices $i, j ​$ are summed over, so it's okay to change the latter dummy indices in both terms so we can collect them.

$$
\begin{align*}
[V,W]  & = V^i(x) \cdot \left(\Partial{W^k(x _ p)}{x^i}\cdot\Partial{}{x^k}\right)- W^j(x) \cdot \left(\Partial{V^k(x _ p)}{x^j}\cdot\Partial{}{x^k}\right)\\
&= \underbrace{\left(V^i(x) \cdot \Partial{W^k(x _ p)}{x^i}- W^j(x) \cdot \Partial{V^k(x _ p)}{x^j}\right)} _ {U^k}\cdot\Partial{}{x^k}\\
\end{align*}
$$

## Four Properties of Brackets

1. Closedness: (see Nakahara (5.112))
   
   $$
   \begin{align}
   (L_g)_*([X,Y])_a& = [(L_g)_*X,(L_g)_*Y] = [X,Y]_{ag}
    \label{bracketclosedness}
    \end{align}
   $$

2. Bilinearity:
   
   $$
   \begin{align}
   			[X, c_1 Y_1 + c_2 Y_2 ] & = X^{\mu} \frac{ \partial}{ \partial x^{\mu} } ( c_1 Y_1 + c_2 Y_2)^{\nu} - ( c_1 Y_1 + c_2 Y_2)^{\mu}  \frac{ \partial X^{\nu} }{ \partial x^{\mu} } = \\ \notag
   			& = c_1 \left( X^{\mu} \frac{ \partial Y_1^{\nu} }{ \partial x^{\mu}  } - Y_1^{\mu} \frac{ \partial X^{\nu }}{ \partial x^{\mu }} \right) + c_2 \left( X^{\mu} \frac{ \partial Y_2^{\nu} }{  \partial x^{\mu} } - Y_2^{\mu} \frac{ \partial X^{\nu }}{ \partial x^{\mu} } \right) = c_1 [ X,Y_1] + c_2[ X,Y_2]  \\ \notag
   			[c_1 X_1 + c_2 X_2, Y ] & = (c_1 X_1 + c_2 X_2)^{\mu} \frac{ \partial Y^{\nu}}{ \partial x^{\mu} } - Y^{\mu} \frac{ \partial }{ \partial x^{\mu} }( c_1 X_1 + c_2 X_2)^{\nu} = \\ \notag
   			& = c_1 \left( X_1^{\mu} \frac{ \partial Y^{\nu}}{ \partial x^{\mu} } - Y^{\mu} \frac{ \partial X_1^{\nu}}{ \partial x^{\mu }} \right) + c_2 \left( X_2^{\mu} \frac{ \partial Y^{\nu }}{ \partial x^{\mu }} - Y^{\mu} \frac{ \partial X_2^{\nu }}{ \partial x^{\mu}} \right) = c_1 [X_1, Y] + c_2 [ X_2, Y ] 
               \label{bracketbilinearity}
   			\end{align}
   $$

3. Anti-symmetry:
   
   $$
   [Y,X] = Y^{\mu} \frac{ \partial X^{\nu}}{ \partial x^{\mu} } - X^{\mu} \frac{ \partial Y^{\nu }}{ \partial x^{\mu }} = - \left( X^{\mu} \frac{ \partial Y^{\nu }}{ \partial x^{\mu} } - Y^{\mu} \frac{ \partial X^{\nu}}{ \partial x^{\mu }} \right) = - [ X,Y] \label{bracketantisymmertry}
   $$

4. Jacobi Identity:
   
   $$
   \small\begin{align}
   [[X,Y],Z] 
   & = [X,Y]^{\mu} \frac{ \partial Z^{\nu}}{ \partial x^{\mu }} - Z^{\mu} \frac{ \partial}{ \partial x^{\mu}} [X,Y]^{\nu} \\ \notag
   &= (X^a \partial_a Y^{\mu} - Y^a \partial_a X^{\mu} ) \partial_{\mu}Z^{\nu} - Z^{\mu} ( \partial_{\mu}X^a \partial_a Y^{\nu} + X^a \partial^2_{\mu a} Y^{\nu} - \partial_{\mu} Y^a\partial_a X^{\nu} - Y^a \partial^2_{\mu a} X^{\nu} ) \\ \notag
   &= X^a \partial_a Y^{\mu} \partial_{\mu} Z^{\nu} - Y^a \partial_a X^{\mu} \partial_{\mu} Z^{\nu} - Z^{\mu} \partial_{\mu} X^a \partial_a Y^{\nu} -Z^{\mu}X^a \partial^2_{\mu a} Y^{\nu} + Z^{\mu} \partial_{\mu} Y^a \partial_a X^{\nu} + Z^{\mu} Y^a \partial^2_{\mu a} X^{\nu} 
   \\ \notag
   &\text{Likewise,} \\ \notag
   [[Z,X],Y]^{\nu} &= Z^a \partial_a X^{\mu} \partial_{\mu} Y^{\nu} - X^a \partial_a Z^{\mu} \partial_{\mu} Y^{\nu} - Y^{\mu} \partial_{\mu} Z^a \partial_a X^{\nu} - Y^{\mu} Z^a \partial^2_{\mu a} X^{\nu} + Y^{\mu} \partial_{\mu} X^a \partial_a Z^{\nu} + Y^{\mu} X^a \partial^2_{\mu a} Z^{\nu} \\ \notag
   [[Y,Z],X]^{\nu} &= Y^a \partial_a Z^{\mu} \partial_{\mu} X^{\nu} - Z^a \partial_a Y^{\mu} \partial_{\mu} X^{\nu} - X^{\mu} \partial_{\mu} Y^a \partial_a Z^{\nu} - X^{\mu} Y^a \partial^2_{\mu a} Z^{\nu} + X^{\mu} \partial_{\mu} Z^a \partial_a Y^{\nu} + X^{\mu} Z^a \partial^2_{\mu a} Y^{\nu}\\
   &\text{All the $18$ terms cancel.} \notag
   \label{bracketjacobi}
   \end{align}
   $$
   

# Left-Invariant Vector Fields and Integral Curves

If for a curve $\Gamma: \R\rightarrow G, \,t\mapsto\gamma(t)$, and a vector field $X$, $\forall t\in \R, \D{\gamma(t)}{t}=X_{\gamma(t)}$, then $\Gamma$ is said to be a integral curve of vector field $X$. **Later this curve will be shown to be isomorphic to $(\R ,+)​$, and exponential map will be defined using this property.**

First, any left-invariant vector fields on a Lie group are complete. 

> Proof:
>
> 1. **There exists a *maximum* integral curve $\gamma_e:\R\rightarrow G$**. From the Fundamental Theorem of ODEs, there exists a integral curve $\gamma_e$ passing through identity $e$. This curve is defined at least for some interval $(-\varepsilon,\varepsilon), \, \varepsilon>0$. We need to extend the interval to $\R$.