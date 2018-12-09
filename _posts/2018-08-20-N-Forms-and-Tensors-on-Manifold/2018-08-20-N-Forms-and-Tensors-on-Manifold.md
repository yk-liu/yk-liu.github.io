---
title: N-Forms and Tensors on Manifold
edit: 2018-11-26
categories: Topology
tags: One-form N-Forms Tensor Topology 
keywords: one-form wedge-product dual-space tensor-product
description: My interpretation on N-forms and tensors
status: Writing
rss: false
---

$$
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
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
\notag
$$

# N-Forms

## Wedge Product

A two-form is can be seen as a "product" of two one-forms.

### Wedge Product of General Vectors

The cross product of vectors $U \times V$ is a very useful operation in $3$ dimensional geometry. It determines the area of the **parallelogram** containing these vectors and the plane containing it. A **wedge product** is the analogue used to determine a high dimensional parallelograms.

The wedge (楔) product (楔积) $\wedge$ is a special kind of tensor product (although we have't defined it). 

$$
V^{\mu _ 1} \wedge V^{\mu _ 2} \wedge. . .\wedge V^{\mu _ r} = \sum _ {P\in \mathbb S _ r} \operatorname{sgn}(P) V^{\mu _ {P(1)}} \otimes V^{\mu _ {P(2)}}\otimes \cdots\otimes V^{\mu  _ {P(r)}} \label{wedgeDef}
$$

For example, 

$$
\begin{align}
U \wedge V &= U \otimes V - V \otimes U\\
U \wedge V  \wedge W &= U \otimes V  \otimes W + W \otimes U \otimes V  + V  \otimes W \otimes U \notag \\
&- U \otimes W \otimes V  - W \otimes V  \otimes U - V \otimes U \otimes W \label{wedgeExample}
\end{align}
$$

[[John](https://www.av8n.com/physics/area-volume.pdf)] There is a **norm** for a wedge product (seen as a bi-vector, tri-vector, or $n$-vector) defined as 
$$
\begin{align}
\norm{A \wedge B}^2&\dfdas(A \wedge B)\cdot(B \wedge A)\notag\\
&=-(A \wedge B)^2
\end{align}
$$

> ***CONNECTIONS TO GEOMETRIC ENTITIES***:
>
> 1. **Analogue to cross product as a test of collinearity**: The wedge product gives a simple way to test for "**coplanarity**" or linear (in)dependence of vectors: if $U$ and $V$ are collinear, meaning $U = a V$, by anti-symmetry of wedge product,  
>    $$
>    U \wedge V =U \wedge aU=a(U \otimes U - U \otimes U)=0 \notag
>    $$
>    If $W$ is coplanar with $U$ and $V$, meaning $W = a U + b V$, (“collapsed box”, not maximally linear independent), then
>    $$
>    W \wedge U \wedge V = aU  \wedge U \wedge V+bV\wedge U \wedge V = 0 \notag
>    $$
>
> 2. **Analogue to cross product as a indicator of orientation**: If $n\gt 3$, there are infinitely many directions perpendicular to the two vectors, so you can't think of the orientation as a vector (like the cross product in three dimensions). Instead, you may think of the orientation as a *circle* in the plane of the two given vectors $U$ and $V$, with a direction attached to it in one of the two possible ways: $\circlearrowleft$ or $\circlearrowright$. This orientation is 
>
> 3. **Analogue to cross product as a way to compute "area of parallelogram"**: For two vectors $U=(a,b,c)$ and $V=(d,e,f)$, We can see that the nonzero entries of wedge product are basically the same as for the cross product. 
>    $$
>    \begin{align}
>    \vec{u} \wedge \vec{v}
>    &=(u _ 1,u _ 2,u _ 3)\wedge(v _ 1,v _ 2,v _ 3)\notag\\
>    &=(u _ 1,u _ 2,u _ 3)\otimes(v _ 1,v _ 2,v _ 3)-(u _ 1,u _ 2,u _ 3)\otimes(v _ 1,v _ 2,v _ 3) \notag\\
>    &= \begin{pmatrix}
>     0        & \red u _ 1v _ 2 − u _ 2v _ 1  & \red u _ 1v _ 3 − u _ 3v _ 1\\
>     \blue −u _ 1v _ 2 + u _ 2v _ 1 & 0        & \red u _ 2v _ 3 − u _ 3v _ 2\\
>     \blue −u _ 1v _ 3 + u _ 3v _ 1 & \blue −u _ 2v _ 3 + u _ 3v _ 2 & 0        
>    \end{pmatrix}\notag\\
>    &= (u _ 1 v _ 2 - u _ 2 v _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2) + (u _ 3 v _ 1 - u _ 1 v _ 3) (\uvec{e} _ 3 \wedge \uvec{e} _ 1) + (u _ 2 v _ 3 - u _ 3 v _ 2) (\uvec{e} _ 2 \wedge \uvec{e} _ 3) \label{wedgetensorvector}\\
>         \notag\\
>    \vec{u} \times \vec{v}
>    &=(u _ 1, u _ 2, u _ 3) \times (v _ 1, v _ 2, v _ 3) \notag\\
>    &= {\red(u _ 2v _ 3 − u _ 3v _ 2)}\uvec i + {\red(−u _ 1v _ 3 + u _ 3v _ 1)}\uvec j + {\red(u _ 1v _ 2 − u _ 2v _ 1)}\uvec k\notag\\
>         \end{align}
>    $$
>
>    > **Note:**
>    >
>    > - The wedge product is a tensor, not just a matrix. It's better to flatten the matrix as a (column or row) vector with 9 bases with 3 redundant bases and 3 null bases as shown in $\Eqn{wedgetensorvector}$.
>    > - This matrix is anti-symmetry matrix of odd dimension and thus has a zero determinant.
>
>    However, this result is not the area of this two vectors. $U \wedgeV$ is a bivector, it's norm $A^2=\norm{U\wedge V}^2\substack{\small\text{numerically}\newline\huge {=}}(U \times V)^2$ is the area of the parallelogram.
>
> 4. **Generalization as a direct way to calculate $n$-dimensional area, (specially, $3$-dimensional area being the volume)**: the $n$-dimensional area is defined as a $n$ wedge product of $n$-dimensional vectors. For $n=3$, $ \vec{u} \wedge \vec{v} \wedge \vec{w} = (u _ 1 v _ 2 w _ 3 + u _ 2 v _ 3 w _ 1 + u _ 3 v _ 1 w _ 2 - u _ 1 v _ 3 w _ 2 - u _ 2 v _ 1 w _ 3 - u _ 3 v _ 2 w _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2 \wedge \uvec{e} _ 3) $. Still the volume ($3$-dimensional area) $V^2=\norm{\vec{u} \wedge \vec{v} \wedge \vec{w} }$.
>
>    There is more to it. While $\vec{u} \wedge \vec{v} \wedge \vec{w}$ is a simple construction of three vectors, it is also a wedge product of vector and yet a wedge product $\vec{u} \wedge (\vec{v} \wedge \vec{w})$. The volume of the parallelepiped ($3$-dimensional area) is now the span of a vector and an parallelogram ($2$-dimensional area). Similarly, a $(n+m)$-dimensional area can be spanned by a $n$-dimensional area and $m​$-dimensional area.

### Wedge Product of One-Forms

Naturally, a 2-form is of the form $X=X _ {\mu\nu}\d x ^ \mu\d x^\nu​$, e.g., $\e^x\d x\d y+2x^2\d y \d z+ (y-x)\d x\d z​$. One-forms can be viewed as vectors, so wedge product can apply.

This can be seen as a tensor product of two one-forms.

$$
\begin{align}
(3\d x + \d y) ∧ (\e^x\d x + 2\d y) &= 3\e^x\d x ∧ \d x + 6\d x ∧ \d y + \e^x \d y ∧ \d x + 2\d y ∧ \d y\\
&= (6 − \e^x)\d x ∧ \d y
\end{align}
$$

## Exterior Derivative

Another way to see a two-form is that it's a second derivative of something. So take the "derivative" of a $1$-form (first derivative) should result in a $2$-form. This procedure is called a **exterior derivative**. This operation is denoted using again the symbol $\d$.

$$
\begin{align*}
\d (\omega) &= \d (\omega_\mu \d x ^ \mu)\\
&=(\d \omega _ \mu )\wedge\d x ^ \mu + \omega_\mu\d( \d x ^ \mu)\\
\xrightarrow[\d( \d x _ \mu)=0]{\text{by def.}}&=(\d \omega _ \mu )\wedge\d x ^ \mu\\
&=\Partial{\omega_\mu}{x ^ \nu}\d x ^ \nu \wedge\d x ^ \mu 
\end{align*}
$$

For example, 

$$
\d(F \d x+G\d y +H\d z) = (\Partial{G}{x} −\Partial{F}{y})\d x\wedge \d y + (\Partial{H}{y} −\Partial{G}{z})\d y \wedge \d z + (\Partial{F}{z} − \Partial{H}{x})\d z \wedge \d x
$$

This coincides with the definition of **curl**.

$$
\vec{\nabla} \times V = (Hy − Gz)\uvec i + (Gx − Fy)\uvec k + (Fz − Hx)\uvec j
$$

Thus the exterior derivative of a $p$-form is a $(p+1)$-form.

A $2$-form is an expression built using wedge products of pairs of $1$-forms. 

The real significance of $2$-forms will come later when we do surface integrals. A $2$-form will be an expression that can be integrated over a surface in the same way that a $1$-form can be integrated over a curve.

# Tensors

## Exterior derivative

The exterior derivative can be applied to vectors as well. The formula reads
$$
\begin{align*}
 \d(V)&=\d( V^\mu \Partial{}{x^\mu})\\
 &=
 \end{align*}
$$
