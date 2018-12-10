---
title: N-Forms and Tensors on Manifold
edit: 2018-11-26
categories: Topology
tags: One-form N-Forms Tensor Topology 
keywords: one-form wedge-product dual-space tensor-product
description: We are going to generalize the concept of vectors and one-forms to tensors and differential forms.
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

In this post Einstein summation rule is used. We are going to generalize the concept of vectors and one-forms to tensors and differential forms (or $N$-forms).

# Tensors

Tensor is direct generalization to the concept of vector and one-form. A vector takes in a one-from and spits out a number. A one-form takes in a vector and spits out a number. A tensor takes in several vectors and one-forms and spits out a number. A tensor is written as 

$$
T=T^{\mu_1\cdots\mu_q}_{\phantom{\mu_1\cdots\mu_q}\nu_1\cdots\nu_r} \Partial{}{x^{\mu_1}}\cdots \Partial{}{x^{\mu_q}} \d x^{\nu_1} \cdots \d x^{\nu_r},
$$

where there are $q$ slots for one-forms and $r$ slots for vectors, such that

$$
\begin{align*}
T(\omega_1,\cdots,\omega_q; V_1,\cdots,V_r) 
& = T^{\mu_1\cdots\mu_q}_{\phantom{\mu_1\cdots\mu_q}\nu_1\cdots\nu_r} \left(\Partial{}{x^{\mu_1}}\cdots \Partial{}{x^{\mu_q}} \, \d x^{\nu_1} \cdots \d x^{\nu_r}\right)(\omega_1,\cdots,\omega_q; V_1,\cdots,V_r)\\
&=T^{\mu_1\cdots\mu_q}_{\phantom{\mu_1\cdots\mu_q}\nu_1\cdots\nu_r}  \Partial{\omega_1}{x^{\mu_1}} \cdots \Partial{\omega_q}{x^{\mu_q}} \, \d x^{\nu_1}(V_1) \cdots \d x^{\nu_r}(V_r)\\
& = T^{\mu_1\cdots\mu_q}_{\phantom{\mu_1\cdots\mu_q}\nu_1\cdots\nu_r} \lbrace\omega_1\rbrace_{\mu_1} \cdots \lbrace\omega_q\rbrace_{\mu_q} \lbrace V_1\rbrace^{\nu_1} \cdots \lbrace V_1\rbrace^{\nu_r}.
\end{align*}
$$

Such tensors are called of type $(q,r)$. $T_{(1,1)},\, T_{(2,0)},\,T_{(0,2)}$ can be written as matrices, while it takes a third dimension to write tensors like $T_{(3,0)}$ in the similar fashion. Below is a diagram from [Wikipeida](https://en.wikipedia.org/wiki/OLAP_cube), showing an example of some kind of $3$-d matrix.

<img src="https://upload.wikimedia.org/wikipedia/commons/4/46/OLAP_drill_up%26down.png" width=80%>

# Wedge Product

One way to generalize one-forms to differential forms (or $N$-forms) is to take products of one-forms. A two-form is can be seen as a "product" of two one-forms. A $N$-form is then a series of product of one-forms. This product is called a wedge product. We will first see how wedge product works in the context of vectors.

## Wedge Product of General Vectors

The cross product of vectors $U \times V$ is a very useful operation in $3$ dimensional geometry. It determines the area of the **parallelogram** containing these vectors and the plane containing it. A **wedge product** is the analogue used to determine a high dimensional parallelograms.

The wedge (楔) product (楔积) $\wedge$ is a special kind of tensor product. 

$$
V^{\mu _ 1} \wedge V^{\mu _ 2} \wedge\cdots\wedge V^{\mu _ r} = \sum _ {P\in \mathbb S _ r} \operatorname{sgn}(P) V^{\mu _ {P(1)}} \otimes V^{\mu _ {P(2)}}\otimes \cdots\otimes V^{\mu  _ {P(r)}} \label{wedgeDef}
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
>
>    $$
>    U \wedge V =U \wedge aU=a(U \otimes U - U \otimes U)=0 \notag
>    $$
>
>    If $W$ is coplanar with $U$ and $V$, meaning $W = a U + b V$, (“collapsed box”, not maximally linear independent), then
>
>    $$
>    W \wedge U \wedge V = aU  \wedge U \wedge V+bV\wedge U \wedge V = 0 \notag
>    $$
>
> 2. **Analogue to cross product as a indicator of orientation**: If $n\gt 3$, there are infinitely many directions perpendicular to the two vectors, so you can't think of the orientation as a vector (like the cross product in three dimensions). Instead, you may think of the orientation as a *circle* in the plane of the two given vectors $U$ and $V$, with a direction attached to it in one of the two possible ways: $\circlearrowleft$ or $\circlearrowright$. This orientation is 
>
> 3. **Analogue to cross product as a way to compute "area of parallelogram"**: For two vectors $U=(a,b,c)$ and $V=(d,e,f)$, We can see that the nonzero entries of wedge product are basically the same as for the cross product. 
>
>    $$
>    \begin{align}
>    \vec{u} \wedge \vec{v}
>    &=(u _ 1,u _ 2,u _ 3)\wedge(v _ 1,v _ 2,v _ 3)\notag\\
>    &=(u _ 1,u _ 2,u _ 3)\otimes(v _ 1,v _ 2,v _ 3)-(u _ 1,u _ 2,u _ 3)\otimes(v _ 1,v _ 2,v _ 3) \notag\\
>    &\substack{\text{the basis is different}\newline\neq} \begin{pmatrix}
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
>    > - The wedge product is a tensor, **not a matrix**. The wedge product of two dimension $3$ vectors has a dimension of $3$, not $9$ $\Eqn{wedgetensorvector}$. 
>    > - This matrix is anti-symmetry matrix of odd dimension and thus has a zero determinant.
>
>    However, this result is not the area of this two vectors. $U \wedge V$ is a bivector, it's norm $A^2=\norm{U\wedge V}^2\substack{\small\text{numerically}\newline\huge {=}}(U \times V)^2$ is the area of the parallelogram.
>
> 4. **Generalization as a direct way to calculate $n$-dimensional area, (specially, $3$-dimensional area being the volume)**: the $n$-dimensional area is defined as a $n$ wedge product of $n$-dimensional vectors. For $n=3$, 
>     $$
>     \vec{u} \wedge \vec{v} \wedge \vec{w} = (u _ 1 v _ 2 w _ 3 + u _ 2 v _ 3 w _ 1 + u _ 3 v _ 1 w _ 2 - u _ 1 v _ 3 w _ 2 - u _ 2 v _ 1 w _ 3 - u _ 3 v _ 2 w _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2 \wedge \uvec{e} _ 3) 
>     $$
>
>     Again we obtain the volume ($3$-dimensional area) $V^2=\norm{\vec{u} \wedge \vec{v} \wedge \vec{w} }$. 
>
>     There is more to it. While $\vec{u} \wedge \vec{v} \wedge \vec{w}$ is a simple construction of three vectors, it is also a wedge product of vector and yet a wedge product $\vec{u} \wedge (\vec{v} \wedge \vec{w}).$ The volume of the parallelepiped ($3$-dimensional area) is now the span of a vector and an parallelogram ($2$-dimensional area). Similarly, a $(n+m)$-dimensional area can be spanned by a $n$-dimensional area and $m$-dimensional area.
>

## Wedge Product of One-Forms

Naturally, a 2-form is of the form $X=X _ {\mu\nu}\d x ^ \mu\d x^\nu$, e.g., $\e^x\d x\d y+2x^2\d y \d z+ (y-x)\d x\d z$. One-forms can be viewed as vectors, so wedge product can apply.

This can be seen as a tensor product of several one-forms.

$$
\omega^{\mu _ 1} \wedge \omega^{\mu _ 2} \wedge\cdots\wedge \omega^{\mu _ r} = \sum _ {P\in \mathbb S _ r} \operatorname{sgn}(P) \omega^{\mu _ {P(1)}} \otimes \omega^{\mu _ {P(2)}}\otimes \cdots\otimes \omega^{\mu  _ {P(r)}}
$$

for example,

$$
\begin{align}
(3\d x + \d y) ∧ (\e^x\d x + 2\d y) &= 3\e^x\d x ∧ \d x + 6\d x ∧ \d y + \e^x \d y ∧ \d x + 2\d y ∧ \d y\\
&= (6 − \e^x)\d x ∧ \d y
\end{align}
$$

# Exterior Derivative

## Exterior Derivative in Vector Analysis



## Exterior Derivative of One-Forms

Another way to see a two-form is that it's a second derivative of something. Take the "derivative" of a $1$-form (first derivative) should result in a $2$-form. This operation is called a **exterior derivative** $\d$.

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



