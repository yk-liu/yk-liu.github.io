---
title: N-Forms and Tensors on Manifold
Edit: 2018-11-26
category: Blog
tags: One-form N-Forms Tensor Topology 
keywords: one-form wedge-product dual-space tensor-product
description: My interpretation on N-forms and tensors
status: Writing
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

# Wedge Product

A two-form is can be seen as a "product" of two one-forms.

## Wedge Product of General Vectors

The cross product of vectors $\vec u \times V$ is a very useful operation in $3$ dimensional geometry. It determines the area of the **parallelogram** containing these vectors and the plane containing it. A **wedge product** is the analogue used to determine a high dimensional parallelograms.

The wedge (楔) product (楔积) $\wedge$ is a special kind of tensor product. 

$$
\vec x^{\mu _ 1} \wedge \vec x^{\mu _ 2} \wedge. . .\wedge \vec x^{\mu _ r} = \sum _ {P\in \mathbb S _ r} \operatorname{sgn}(P) \vec x^{\mu _ {P(1)}} \otimes\vec x^{\mu _ {P(2)}}\otimes \cdots\otimes \vec x^{\mu  _ {P(r)}} \label{wedgeDef}
$$

For example, 

$$
\begin{align}
\vec u \wedge V &= \vec u \otimes V - V \otimes \vec u\\
\vec u \wedge V  \wedge \vec w &= \vec u \otimes V  \otimes \vec w + \vec w \otimes \vec u \otimes V  + V  \otimes \vec w \otimes \vec u \label{wedgeExample} \\
&- \vec u \otimes \vec w \otimes V  - \vec w \otimes V  \otimes \vec u - V \otimes \vec u \otimes \vec w \notag
\end{align}
$$

Given a vector space $V$, a space of wedge product can be constructed as

$$
\wedge ^2 V = \set{ \vec u\wedgeV  {\mid}  \vec u,V \in V  }\\
\wedge ^3 V = \set{ \vec u\wedgeV \wedge \vec w {\mid} \vec u,V,\vec w \in V  }\\
\wedge ^n V = \set{ \vec u _ 1\wedge\vec u _ 2 \wedge\cdots\wedge \vec u _ n {\mid} \vec u _ i\in V ,i=1,2,\cdots,n }
$$

Considering wedge products actually being $n\times n$ antisymmetric tensors can be seen as vectors, it's no wonder that this space is indeed a vector space.

[[John](https://www.av8n.com/physics/area-volume.pdf)] There is a **norm** for a wedge product (seen as a bi-vector, tri-vector, or $n$-vector) defined as 

$$
\begin{align}
\norm{A \wedge B}^2&\dfdas(A \wedge B)\cdot(B \wedge A)\notag\\
&=-(A \wedge B)^2
\end{align}
$$

> ***CONNECTIONS TO GEOMETRIC ENTITIES***:
>
> 1. **Analogue to cross product as a test of collinearity**: The wedge product gives a simple way to test for "**coplanarity**" or linear (in)dependence of vectors: if $\vec u$ and $V$ are collinear, meaning $\vec u = a V$, by anti-symmetry of wedge product,  
>    $$
>    \vec u \wedge V =\vec u \wedge a\vec u=a(\vec u \otimes \vec u - \vec u \otimes \vec u)=0 \notag
>    $$
>    If $\vec w$ is coplanar with $\vec u$ and $V$, meaning $\vec w = a \vec u + b V$, (“collapsed box”, not maximally linear independent), then
>    $$
>    \vec w \wedge \vec u \wedge V = a\vec u  \wedge \vec u \wedge V+bV\wedge \vec u \wedge V = 0 \notag
>    $$
>
> 2. **Analogue to cross product as a indicator of orientation**: If $n\gt 3$, there are infinitely many directions perpendicular to the two vectors, so you can't think of the orientation as a vector (like the cross product in three dimensions). Instead, you may think of the orientation as a *circle* in the plane of the two given vectors $\vec u$ and $V$, with a direction attached to it in one of the two possible ways: $\circlearrowleft$ or $\circlearrowright$.
>
> 3. **Analogue to cross product as a way to compute "area of parallelogram"**: For two vectors $\vec u=(a,b,c)$ and $V=(d,e,f)$, We can see that the nonzero entries of wedge product are basically the same as for the cross product. 
>    $$
>    \begin{align}
>    \vec{u} \wedge \vec{v}
>    &=(u _ 1,u _ 2,u _ 3)\wedge(v _ 1,v _ 2,v _ 3)\notag\\
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
>    However, this result is not the area of this two vectors. $\vec u \wedgeV$ is a bivector, it's norm $A^2=\norm{\vec u\wedge V}^2\substack{\small\text{numerically}\newline\huge {=}}(\vec u \times V)^2$ is the area of the parallelogram.
>
> 4. **Generalization as a direct way to calculate $n$-dimensional area, (specially, $3$-dimensional area being the volume)**: the $n$-dimensional area is defined as a $n$ wedge product of $n$-dimensional vectors. For $n=3$, $ \vec{u} \wedge \vec{v} \wedge \vec{w} = (u _ 1 v _ 2 w _ 3 + u _ 2 v _ 3 w _ 1 + u _ 3 v _ 1 w _ 2 - u _ 1 v _ 3 w _ 2 - u _ 2 v _ 1 w _ 3 - u _ 3 v _ 2 w _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2 \wedge \uvec{e} _ 3) $. Still the volume ($3$-dimensional area) $V^2=\norm{\vec{u} \wedge \vec{v} \wedge \vec{w} }$.
>
>    There is more to it. While $\vec{u} \wedge \vec{v} \wedge \vec{w}$ is a simple construction of three vectors, it is also a wedge product of vector and yet a wedge product $\vec{u} \wedge (\vec{v} \wedge \vec{w})$. The volume of the parallelepiped ($3$-dimensional area) is now the span of a vector and an parallelogram ($2$-dimensional area). Similarly, a $(n+m)$-dimensional area can be spanned by a $n$-dimensional area and $m$-dimensional area.

## Wedge Product of One-Forms

Naturally, like in [[Redefined Vector and one-forms](#Redefined-Vector-and-one-forms)] a 2-form is of the form $X=X _ {\mu\nu}\d x ^ \mu\d x^\nu$, e.g., $\e^x\d x\d y+2x^2\d y \d z+ (y-x)\d x\d z$. One-forms can be viewed as vectors, so wedge product can apply.

This can be seen as a tensor product of two one-forms.

$$
\begin{align}
(3\d x + \d y) ∧ (\e^x\d x + 2\d y) &= 3\e^x\d x ∧ \d x + 6\d x ∧ \d y + \e^x \d y ∧ \d x + 2\d y ∧ \d y\\
&= (6 − \e^x)\d x ∧ \d y
\end{align}
$$

# Exterior Derivative

Another way to see a two-form is that it's a second derivative of something. So take the "derivative" of a $1$-form (first derivative) should result in a $2$-form. This procedure is called a **exterior derivative**. This operation is denoted using again the symbol $\d$.

$$
\begin{align*}
\d (\form X) &= \d (X_\mu \d x ^ \mu)\\
&=(\d x ^ \mu )\wedge\d x ^ \nu + X_\mu\d( \d x ^ \mu)\\
\xrightarrow[\d( \d x _ \mu)=0]{\text{by def.}}&=(\d x ^ \mu )\wedge\d x ^ \nu\\
&=\Partial{X_\mu}{x ^ \nu}\d x ^ \mu \wedge\d x ^ \nu 
\end{align*}
$$

For example, 

$$
\d(F \d x+G\d y +H\d z) = (\Partial{G}{x} −\Partial{F}{y})\d x\wedge \d y + (\Partial{H}{y} −\Partial{G}{z})\d y \wedge \d z + (\Partial{F}{z} − \Partial{H}{x})\d z \wedge \d x
$$

This coincides with the definition of **curl**.

$$
\vec{\nabla} \times \vec X = (Hy − Gz)\uvec i + (Gx − Fy)\uvec k + (Fz − Hx)\uvec j
$$

Thus the exterior derivative of a $p$-form is a $(p+1)$-form.

A $2$-form is an expression built using wedge products of pairs of $1$-forms. 

The real significance of $2$-forms will come later when we do surface integrals. A $2$-form will be an expression that can be integrated over a surface in the same way that a $1$-form can be integrated over a curve.