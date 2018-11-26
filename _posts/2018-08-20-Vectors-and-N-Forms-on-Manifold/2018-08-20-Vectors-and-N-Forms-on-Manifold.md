---
title: Vectors and N-Forms on Manifold
Edit: 2018-11-24
category: Blog
tags: One-form Topology Vector
keywords: one-form manifold Topology covector dual-space tangent-vector
description: My interpretation on one-forms
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

One form is a concept useful in integration, the integrand is a one-form. To perform integration on Manifold, one-form is critical.

# Curves and Functions

The definitions of curves and functions are as follow. A curve on a manifold is a linear map from interval $[a,b]$ to a set of points. Functions are defined over curves on manifold, *not* over curves in $\R^n$. With the help of local coordinates, curves and functions each have coordinate representations.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-08-20-Vectors-and-N-Forms-on-Manifold/assets/curve-function.png" width="80%" />

# Vectors and Covectors in Euclidean Space

## Vectors

Roughly, a **vector space** is a set of entities such that is closed under linear combinations. Both "arrows" and linear functions satisfy this definition and thus form a vector space. 

Due to this remarkable fact, there exists a subset of vectors called the **basis** in the space, such that any vector in the space can be represented as a linear combination of members of the basis. 

A set of basis is denoted as $\uvec e^i$. A vector is then denoted as $V=\sum V ^ i \uvec e _ i$.

## Covectors

Now consider the set of linear functions defined on $V$ (vectors) that have values in field $K$ (numbers), i.e. $f:V\rightarrow K$. Such linear functions on vector spaces are called **covectors**. They are also called **linear functionals**. They apparently form a vector space $V^*$, since: 

- $(f _ 1+f _ 2)(V) = f _ 1(V) + f _ 2(V)$ where the R.H.S. is addition of two scalars in the field $K$. 
- $(kf)(V) = kf(V)$, again where the R.H.S. is multiplication of two scalars in the field $K$.

The vector space $V^*$ of linear functionals over $V$ is said to be **dual** to the vector space.

A set of basis of the dual space are dual vectors as well, which acts on a vector and give a real number. An element of a set of basis is denoted as $\d x ^ i \in \R$. A covector is denoted as $\form \omega=\omega _ i \d x ^ i$. 

> This suspiciously looking name of the co-basis is carefully chosen for later elaboration, now you can either see it as a derivative $\d$ or simply an abbreviation of "dual", the real reason for doing this is in section [`Covectors on Manifold`](#covectors-on-manifold)).
>

The basis' action on vector is denoted as $\d x^i (V)$. 

## Action of Covectors on Vectors

 1. Suppose the basis for the vector space $V$ is denoted as $(\uvec x _ 1,\uvec x _ 2, \uvec x _ 3)$, where $\uvec x _ i$ is a unit vector in the positive $x _ i$ direction. Suppose a basis for the dual space $\omega$ is denoted as $(\d x ^ 1,\d x ^ 2,\d x ^ 3)$. From the definition, a basis of a dual space is itself a dual vector, which acts on a vector, gives a real number, i.e., $\d x ^ i(V)\in \R$.

 2. Since covectors are linear functionals, $\d x ^ i(V)$ can be seen as act on bases of vector $V$.
    $$
    \d x ^ i(V) =\d x ^ i (V ^ 1\uvec x _ 1+V ^ 2\uvec x _ 2+V ^ 3\uvec x _ 3)= V ^ 1\d x ^ i (\uvec x _ 1)+V ^ 2\d x ^ i (\uvec x _  2)+V ^ 3\d x ^ i (\uvec x _  3)\in \R
    $$

 3. Define $\d x ^ i (\uvec x _  j)\dfdas \delta ^ i _ j$. We have 

    $$
    \d x ^ i(V) =V ^ j\d x ^ i (\uvec x _ j) = V ^ j \delta ^ i _j = V^i
    $$

 4. The entire action of $\omega=\omega _ i\d x^i $ on vector $V=V^i \uvec x _ i$ is then

    $$
    \omega (V) =\omega_i \d x ^ i (V) = \omega _i V ^ i 
    $$






## Musical Isomorphism

If a vector space is finite dimensional, so is its dual space. In this case, these two linear spaces have the same dimension. And two linear space of the same dimension are isomorphic (see [here](https://en.wikipedia.org/wiki/Vector _ space#Linear _ maps _ and _ matrices)).

This isomorphism is fairly simple: just swap the basis and nothing is changed, $V\leftrightarrow V^*,\, \uvec x _  i \leftrightarrow \d x ^ i$. This isomorphism is called the **musical isomorphism**. A discussion of origin of this name can be found [here](https://mathoverflow.net/questions/69074/the-origin-of-the-musical-isomorphisms).

This isomorphism is denoted as 

$$
\begin{align}
\sharp : \form \omega \rightarrow  \omega^\sharp =  W&=\sum(\omega _ \mu \delta ^{\mu\nu})\uvec x _ \nu ,\\
\flat : V \rightarrow V^\flat = \gamma &= \sum(V^\mu \delta _ {\mu\nu})\d x ^ \mu ,
\end{align}
$$

where $\sharp$ is pronounced "sharp", and $\flat$ "flat". For $\sharp$ raises the index of components, and $\flat$ lowers the index.

> ***Remark:***
>
> - For vector spaces with finite bases the dual spaces are not very exotic; they are essentially the same as the original spaces. **There are some infinite dimensional vector spaces that have dual spaces that are different in nature from the original space**.
> - For example, Dirac-bras $ \bra{v} $ and -kets $ \ket{v} $ are dual vectors, the contravariant vector $x^\mu$ and covariant vectors $x _ \mu$ are dual to each other. The isomorphisms are both just transpose.
>

## Inner Product and Dot Product

The **inner product** $\inner{\;}{\;}$ is defined as

$$
\inner{\omega}{V}=\omega(V) = \omega_i V^i \in\R \label{innerproduct},
$$

Note that the inner product is defined between a vector and a dual vector, not between two vectors. 

However, inner product looks suspiciously like dot product. A natural insight is that the **dot product** of two vectors is a real number, and thus one can "identify" a covector as a vector, inner product as dot product. 

$$
\omega(V)=\omega _ i \d x ^ i (V^j\uvec x _  j)=\omega _ i V ^ i=W\cdot V\in \R
$$

## Gradient and Total Derivative as Duals

It's high time we addressed the weird choice of the name $\d x^i$. We first need a theorem

> In Euclidean space, for any vector $V$ there is a non-empty set of functions such that $\set{f \mid \nabla f = V}$.
>
> **Proof**: Take $f=\sum V^ix^i$. This function belongs to the set $\set{f \mid \nabla f = V}$.

Therefore the gradient of a function $f$ is a vector, denoted as $\vec\nabla f$. Its dual vector is no other than the total derivative of the function $\d f$. The only transition you need is to admit that $\d x^\mu$ can act on a basis vector, 
$$
\d x^\mu (\uvec x_\nu) = \delta_\nu^\mu. \notag
$$

You can check that they fit in the above definition.

$$
 \begin{align}
 \d\, f &= \Partial{f}{x ^ \mu} \,\d x ^ \mu\notag\\
 \updownarrow\phantom{f}&\phantom{\,} \text{ dual }\phantom{\,=}\updownarrow \label{df-nablaf}\\
 \vec\nabla f &=\Partial{f}{x _ \mu}\,\uvec x _ \mu\notag
 \end{align}
$$

Moreover, the action of $\d f$ on a vector $V$ gives the derivative along the direction of that vector, which is a real number.

$$
\begin{align}
 \d f(V)&=\Partial{f}{x ^ \mu}\d x ^ \mu(V)\notag\\
 &=\Partial{f}{x ^ \mu}\d x ^ \mu(V^\nu \uvec x _ \nu)\notag\\
 &=\Partial{f}{x ^ \mu}V^\nu \d x ^ \mu(\uvec x _ \nu)\notag\\
 &=\Partial{f}{x ^ \mu}V^\nu \delta ^ \mu _ \nu\label{df-nablaf-vec-1}\\
 &=\Partial{f}{x ^ \mu}V^\mu \notag\\
 &=V\cdot \vec \nabla f \label{df-nablaf-vec-2}\\
 &\dfdas\nabla _ {V}f=\lim _ {h\rightarrow0}\frac{f(\vec x + hV)-f(\vec x)}{h}\in\R \label{directionalderivative}
 \end{align}
$$


# Vectors on Manifolds

We all know what vector is in Euclidean space, a **vector** is formally defined as an element of a **vector space**, i.e. a set that is closed under finite vector addition and scalar multiplication.

Though on a manifold, things are a little different. There are three equivalent ways of defining vectors. To put them vaguely,

1. Vector can be represented by an arrow and can be seen as a tuple of numbers;
2. Vector is a (derivation) operator;
3. Vector is an equivalent class of curves (functions).

These definitions are equivalent to each other ([proof](https://maths-people.anu.edu.au/~andrews/DG/DG _ chap4.pdf)). So after this chapter we will make no distinction over these three definitions.

## Vector is an arrow

When I think about vector on a manifold, I have the picture of some arrow tangent to the "surface" of manifold. 

Since in general there is no way to define a "straight arrow" connecting two points. Vectors can only be "tangent vectors". In other words, vectors cannot live on the manifold itself, but the collection of tangent spaces over the entire manifold, called the **tangent bundle**. That way, the vector is a kept at a geometrical view. This is a generalization of the notion of a bound vector in a Euclidean space. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-08-20-Vectors-and-N-Forms-on-Manifold/assets/drawing-tangent-vector.JPG" width="80%">

But this requires embedding the manifold in some higher dimensional space, which is not very convenient, since Differential Geometry aims at investigating the space (or maybe space-time) without jumping out of it. Obviously, once the vector is in an ambient space, it can be represented by a tuple of numbers. This naïve picture is fairly intuitive and is mainly brought up as an heuristic way to introduce the next concept.

## Vector is a (differential) operator

*After I have finished writing this section, I stumbled on* [[A. Mishchenko and A. Fomenko's book](https://archive.org/details/MishchenkoFomenkoACourseOfDifferentialGeometryAndTopology)] *and they really excelled at introducing the vectors in a natural way. You should check it out.*

**The word "tangent" cries for taking derivatives**. Besides, the naïve vector-as-arrow picture lacks necessary algebraic tools to perform calculations with.

Still, the problem is that vectors do not live on the manifold. This forbids us defining "what is vector" using vocabularies from manifold, only allowing us to tell "what is in one-to-one correspondence with vector". So what can we identify with vector? The answer is a (differential) operator. 

>  Let's start with a concrete example: a curved surface being the manifold in focus embed in $\R^3$. We are going to use this manifold in the context of $3$-d geometry as a tool to gain some intuition. 
>
>  <img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-08-20-Vectors-and-N-Forms-on-Manifold/assets/drawing-tangent-vector-as-operator.png" width="90%">
>
>  First we are going to see the surface in $ \R^3 $ as $\vec r(x,y,z) = Const.$ On this surface we can have different local coordinates $(u,v)$ (left) or $(w,s)$ (right). For a curve $\Gamma$ on the surface, we can have its coordinates in $xyz$ as $\vec r(t)=(x(t),y(t),z(t))$, or local coordinates as $\vec r(t) = (u(t),v(t))$ or $\vec r(t) = (w(t),s(t))$. 
>
>  The tangent vector $X$ at $p=\vec r(t _ 0)=(u _ 0,v _ 0)=(w _ 0,s _ 0)$ has a very simple definition in $\R^3 $ as $\vec X = \D{\vec r(t)}{t}$. Using the chain rule, 
>  $$
>  \begin{align}
>  \vec X &= \D{\vec r(t)}{t} \notag \\
>  &=\left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\ v=v _ 0}} \left.\D{u(t)}{t}\right\vert _ {t=t _ 0}+ \left.\Partial{\vec r(u,v)}{v}\right\vert  _ {\substack{u=u _ 0\\v=v _ 0}}\left.\D{v(t)}{t}\right\vert _ {t=t _ 0} \notag \\
>  &=\dot u(t _ 0)\ \left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\v=v _ 0}} +\dot v(t _ 0)\ \left.\Partial{\vec r(u,v)}{v}\right\vert _ {\substack{u=u _ 0\\v=v _ 0}}
>  \label{vectorToOperator}
>  \end{align}
>  $$
>
>  The expression is now of the form $a \Partial{\vec r}{u}+b \Partial{\vec r}{v}$, with $\Partial{\vec r}{u}$ being an actual $3$-vector.
>
>  Next we will see that the term $\Partial{\vec r}{u}$ is independent of choice of curves. If we take the curve $\Gamma$ as $\cases{ u =u(t)\\ v =2 }$ in the left figure (or $w=3$ in the right), $\Eqn{vectorToOperator}$ becomes
>
>  $$
>  \begin{align}
>  \vec X &= \D{\vec r(t)}{t} \notag \\
>  &=\left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\v=v _ 0}} \left.\D{u(t)}{t}\right\vert _ {t=t _ 0}+0 \notag\\
>  &=\dot u (t _ 0)\ \left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\v=v _ 0}} 
>  \label{operator _ basis}
>  \end{align}
>  $$
>
>  notice for example,  $ \Gamma: \cases{ u=k\cdot t\\ v=2} , \vec X =k\left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\ v=v _ 0}} $ or $ \Gamma^\prime: \cases{u=\tan t\\ v=2} , \vec X =\left.\tan(t _ 0)\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0\\ v=v _ 0}}$. 
>
>  This means if we take a parametrized curve along $v=2$, the tangent vector at point $p$ will always be some number times $ \left.\Partial{\vec r(u,v)}{u}\right\vert _ {\substack{u=u _ 0 \\ v=v _ 0}} $ . Thus $\Partial{\vec r}{u}$ is indeed a basis vector independent of curves.

By far, $\Eqn{vectorToOperator}$ means any operator has a component form using differential operators. $\Eqn{operator _ basis}$ means the partial differential operators act like unit vectors or bases of the space of operators. There is nothing we don't already know about differential operators. 

What the above example provides us is a way to assign a differential operator for each vector, which is simply a map: $V\rightarrow \op{v} =V\cdot\nabla$.

> **Theorem:** The directional derivative of a function defined on the manifold $f(t)$ along the vector $V$ (i.e. tangent vector at $t _ 0$ along the curve $\Gamma(t)$) is the differential operator $\op{v}$ acting on $f$.
> $$
> \begin{align}
> \op{v}(f)&\dfdas\nabla _ {V}f(t)\notag\\
> &=\lim _ {t\rightarrow 0}{\frac{f(\gamma(t))-f(\gamma(0))}{t}}\notag\\
> &=\lim _ {t\rightarrow 0}{\frac{f(\vec x _ 0+tV)-f(\vec x _ 0)}{t}}\notag\\
> \label{vector-as-directional-derivative}
> \end{align}
> $$
>
> proof:
>
> $$
> \begin{align*}
> \op v (f) &=\left.\D{}{t}f(\Gamma(t))\right\vert _ {\substack{t=t _ 0,\\\text{along }\vec{v}}}\\
> &=\left.\D{}{t}f(x^1(t),\cdots,x^n(t))\right\vert _ {\substack{t=t _ 0,\\\text{along }\vec{v}}}\\
> &=\sum _ {i=1}^{n}{\dot{x }^i(t _ 0)\Partial{f}{x_i}}\\
> \text{notice that } &V =(\dot x^1(t),\cdots,\dot x^n(t)),\vec \nabla f =(\Partial{f}{x_1},\cdots,\Partial{f}{x_n}) \\
> &=\vec \nabla f \cdot V\\
> &=\nabla _ {V} f
> \end{align*}
> $$
>

## Vector is an equivalent class of curves

From above we already know that one can find more than one curve to obtain the same the differential operator. If we make a collection of all the curves correspond to the same vector, we can identify a vector with an equivalent class if curves. 

Here it goes from [Nakahara](http://stringworld.ru/files/Nakahara _ M. _ Geometry _ topology _ and _ physics _ 2nd _ ed..pdf):

> To be more mathematical, we introduce an equivalence class of curves in $\mani M$. If two curves $c _ 1(t)$ and $c _ 2(t)$ satisfy
>
> 1. $c _ 1(0) = c _ 2(0) = p$
> 2. $ \left. \frac{\d x ^ \mu(c _ 1(t))}{\d t} \right\rvert _ {t=0} =\left.\frac{\d x ^ \mu(c _ 2(t))}{\d t}\right\rvert _ {t=0}$
>
> then $c _ 1(t)$ and $c _ 2(t)$ yield the same differential operator $X$ at $p$, in which case we deﬁne $c _ 1(t) \sim c _ 2(t)$. Clearly $ \sim $ is an equivalence relation and deﬁnes the equivalence classes. We identify the tangent vector $X$ with the equivalence class of curves
> $$
>  [c(t)] = \left\lbrace \tilde{c}(t) \mid \tilde{c}(0)=c(0) \text{ and } \left.\frac{\d x ^ \mu (\tilde{c}(t))}{\d t} \right\vert _ {t=0} = \left.\frac{\d x ^ \mu (c(t))}{\d t} \right\vert _ {t=0} \right\rbrace
> $$
> rather than a curve itself.


## Vector field

We can assign a vector, say $V$, to each point in the space $X$. This is equivalent to functions of the form $f:X\rightarrow V=(V,\R,+,*)$; i.e., functions which map every point of the space $X$ into the vector space $V$. A vector field can be seen as arrows sprinkled on a manifold as shown in the left. Or it defines a map from a point to a curve on manifold as shown in the right. 

>  A point follows the direction of vector field moves at a "velocity" of the magnitude of the vector, tracing out a curve on the manifold.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-08-20-Vectors-and-N-Forms-on-Manifold/assets/vector-curve.png" width="80%"/>



The Lorentz attractor can also be seen as a complicated manifold sprinkled with "velocity vectors." (image from [Wikipedia](https://en.wikipedia.org/wiki/File:A _ Trajectory _ Through _ Phase _ Space _ in _ a _ Lorenz _ Attractor.gif).)

<img src="https://upload.wikimedia.org/wikipedia/commons/1/13/A_Trajectory_Through_Phase_Space_in_a_Lorenz_Attractor.gif">



#  One-forms

## Covector Revisited

A **one-form**, or a **covector**, **dual vector**, is an element of a **dual vector space**.

A dual vector space is all linear functions that maps a vector to $\R^1​$. In another word, 

> A dual vector act on a vector gives a real number.
>
> A dual vector is a linear, real-valued function of vectors.

## Covectors on Manifold

Having defined vectors on manifold, now we are ready to see what is forms the dual of vectors. and eventually, we are going to see that these covectors are nothing but one-forms.

Notice that the tangent vector act on a function gives the "directional derivative" of that function along the direction of the vector, rewriting $\Eqn{vector-as-directional-derivative}$ with special attention paid to the LHS:

$$
\op{v}(f)\equiv \nabla _ {V}f(t)\in \R.
$$

Remember, vectors and covectors are dual to each other. If one seek the covector of $V$, he can be equally satisfied asking the question: if the vector $V$ is treated as a *covector*, what would be the corresponding *vector*? The LHS is the definition of inner product of a one form and a vector in $\Eqn{innerproduct}$. 

Simply by playing with definitions, we obtain a natural **definition of covectors** on manifold. This is written as

$$
\form f(V)\dfdas\hat v(f) = \nabla _ V f(t)\in \R.
$$

The next steps would be 

1. To prove the $f$ in the above definition form a vector space, i.e., they themselves are vectors. 

   This can be verified as following:

   $$
   \begin{align*}
   (a f+b g)(V)&=a f(V)+b g(V)\\
   &=a\nabla _ Vf+b\nabla _ V g\\
   &=\nabla _ V(a f+b g)
   \end{align*}
   $$

2. To find the basis of this vector space. 

   This has been already done in [`Connect Covectors and Vectors with Isomorphism`](#connect-covectors-and-vectors-with-isomorphism). 

   Using the identity,

   $$
   \nabla _ {V} f =\sum _ {i=1}^{n}{\left.\D{x ^ i}{t}\right\vert _ {t=t _ 0}\Partial{f}{x^i}} \label{directional-derivative}
   $$

   Notice the following identities

   $$
   \begin{cases}V =\sum\dot x^i(t)\Partial{}{x^i},\\
   d f = \sum \Partial{f}{x^i}\d x ^ i\\
   \vec \nabla f =(\Partial{f}{x^1},\cdots,\Partial{f}{x^n})\end{cases} \notag
   $$

   Now let's pretend we don't know the expression of $V$, instead, we are going to try to make up the components of $V$ from the expression by isolating the expression of $f$. The red texts are the components.

   $$
   \begin{align*}
   V(f) &= \sum _ {i=1}^{n}{ {\red \left.\D{x ^ i}{t}\right\vert _ {t=t _ 0}}\Partial{f}{x^i}}\\
   &=\left(\sum _ {i=1}^{n}{ {\red \dot{x} ^ i(t _ 0)}\Partial{}{x^i}}\right) (f)\\
   \end{align*}
   $$

   Following the same procedure, we try to isolate the $V​$. This is more complicated than the above, by first multiplying the basis of $V​$ to isolate it, and then introduce the basis for one form $f​$, namely $\uvec e^i​$ to maintain the equality. 

   $$
   \begin{align}
   f(V)&= \sum _ {i=1}^{n}{ \left.\D{x ^ i}{t}\right\vert _ {t=t _ 0}{\blue\Partial{f}{x^i}}} \notag\\
   &=\sum _ {i=1}^{n}{\blue\Partial{f}{x^i}} \left.\D{x ^ i}{t}\right\vert _ {t=t _ 0}\notag\\
   &=\sum _ {i=1}^{n}\left({\blue\Partial{f}{x^i}} \uvec {\mathbf e}^i \right)\cdot \left(\dot x ^ i (t _ 0)\Partial{}{x^i}\right) \label{basis-of-oneform}
   \end{align}
   $$

   The basis of one form $\form f$ is itself a one form and thus can take $V$ as an input, written as

   $$
   \begin{align*}
   &=\sum _ {i=1}^{n}{\blue\Partial{f}{x^i}} {\uvec{\bf e}}^i \left(\dot x ^ i (t _ 0)\Partial{}{x^i}\right)\\
   &=\sum _ {i=1}^{n}{\blue\Partial{f}{x^i}} {\uvec {\bf e}}^i (V)\\
   &=\left(\sum _ {i=1}^{n}{\blue\Partial{f}{x^i}} {\uvec {\bf e}}^i\right) (V)
   \end{align*}
   $$

   Now the one form $\form f$ is identified as 

   $$
   \form f = \sum _ {i=1}^n\Partial{f}{x^i} {\uvec {\bf e}}^i \notag
   $$

   where $\uvec e$ is a hungry operator on vectors. Now the job is to find the exact expression of $\uvec e$. In $\Eqn{basis-of-oneform}$, the basis of one-form was introduced to cancel out the effect of operator $\Partial{}{x^i}$. **Putting the context of vectors and covectors aside from now on**, just to balance the equation appeared in $\Eqn{basis-of-oneform}$ the product of operator $\uvec e _ i$ and operator $\Partial{}{x^i}$ in the most conventional sense should be the identity operator. That is to say,

   $$
   \begin{align*}
   f &\equiv \uvec{e}^i\Partial{}{x^i}f \\
   &=\uvec{e}^i\Partial{f}{x^i} &
   \end{align*}
   $$

   The answer self-evident, 

   $$
   \uvec e^i =\int \d x^i, \label{basis-one-form}
   $$

   so that,

   $$
   \begin{align*}
   f &\equiv \uvec{e}^i\Partial{}{x^i}f \\
   &=\int \d x^i\Partial{f}{x^i} \\
   &=f
   \end{align*}
   $$


















By the above deduction, we finally arrive at the conclusion that

$$
\form f = \sum _ {i=1}^n\Partial{f}{x^i}\int \d x^i\\
$$

Well, that is one boring result. Turns out that this "one form" can be completely written in the form of integration. 

Still, the expression deserves more investigation. Leaving the context of vectors and covectors aside, the expression $\Eqn{directional-derivative}$ as function's derivative show that if two functions $f$ and $g$ have the same differential at $t=t _ 0$, 

$$
\d f=\sum \Partial{f}{x^i}\d x^i=\d g \notag
$$

they will yield the same result,

$$
\begin{align*}
\nabla _ {V} f -\nabla _ {V} g &=\lim _ {t\rightarrow 0}{\frac{f(\vec x _ 0+tV)-f(\vec x _ 0)}{t}}-\lim _ {t\rightarrow 0}{\frac{g(\vec x _ 0+tV)-g(\vec x _ 0)}{t}}\\
&=\left.\D{}{t}f(x^1(t),\cdots,x^n(t))\right\vert _ {\substack{t=t _ 0,\\\text{along }\vec{v}}}-\left.\D{}{t}g(x^1(t),\cdots,x^n(t))\right\vert _ {\substack{t=t _ 0,\\\text{along }\vec{v}}}\\
&=\D{(f-g)}{t}\\
&=0
\end{align*}
$$

In other words, $\form f$ is actually an equivalent class of functions $f$, such that a set of functions $\set{f\mid \d f=\d f _ 0}$, can now be represented as

$$
\d f = \sum _ {i=1}^n\Partial{f}{x^i} \d x^i
$$

## The Puzzle of $\frac{\partial (dx^\mu )}{\partial x^\nu}$

Now we have made out what vectors and covectors are:

 - Vectors are (differential) operators. They are entities of the form 

   $$
   V =\sum a^i\Partial{}{x^i}
   $$

 - Similarly, covectors are entities of the form

   $$
   \form \omega =\sum a _ i\d x^i
   $$



















So far so good. 

> The problem rises when you read *"A one-form is 'a thing you plug vectors into': you feed it a vector and it spits out a number which depends linearly on the input."* You are happy to do some exercises to enhance your understanding of this new concept of covectors. You are smart enough to only use basis of aforementioned vectors and covectors. That gives you
>
> $$
> \d x^i(\Partial{}{x^j}) =??? \notag
> $$
>
> Well, that is not clear. You thought maybe if reversing the roles of vector and covector (since they are dual to each other), the result will make more sense. You arrive at
>
> $$
> \Partial{(\d x^i)}{x^j}=??? \notag
> $$
>
> That is something you have never seen in calculus, yet it doesn't look entirely wrong. 
>
> Then you turned to a text book for answer, [[Sean Carroll](https://arxiv.org/pdf/gr-qc/9712019.pdf)] for example. In most (if not all) text books, the equation reads
>
> $$
> \d x^i(\Partial{}{x^j}) =\Partial{(\d x^i)}{x^j}=\delta _ j^i \notag
> $$
>
> That can't be right! You know very clear that $\Partial{x^i}{x^j}=\delta _ j^i$ and $\Partial{(\d x^i)}{x^j}\neq\Partial{x^i}{x^j}$. 
>
> A quick google search tells you that these operators [**are merely "notations"**](https://math.stackexchange.com/questions/1478544/basis-one-form-and-basis-vector-confusion). Another [answer](https://math.stackexchange.com/a/2318102) went so far as to give the explanation that $\d f$ should be
>
> $$
> \frac{df}{d} = \frac{\partial{f}}{\partial{x}}\frac{dx}{d} + \frac{\partial{f}}{\partial{y}}\frac{dy}{d}... \notag
> $$
>
> just to cancel out the $\Partial{}{x}​$.

That bugged me a long time as well. However, if I start from $\Eqn{basis-one-form}$, I know that the basis of "canonical one-form" should be $\int \d x$ rather than $\d x$. We only used $\d x$ to rule out the redundant one forms to establish a one-to-one correspondence. There should be no puzzle anymore, since in some sense, $\d x$ is indeed a notation. And the expression $\frac{d\phi}{d}$ do resemble $\int \d x$ if you think of $\d $ and $\int$ as inverse operations. These two explanations each being only half of the story. Only by combining them can one get a solid understanding of the basis of covectors. 

## Redefined Vector and One-Forms

At the end of last section, vectors were generalized as mathematical objects with the form $X=X ^ \mu\Partial{}{x ^ \mu}$. Similarly, the corresponding one-form can be generalized as $\form X= X _ \mu \d x ^ \mu$. 

This definition will immediate cause a problem: it's no longer guaranteed that a one-form is a total derivative of some function. $x\d y$ is a perfect one-form by this definition, but it is not a total derivative of a function.

This property is called exactness. Which we will investigate later.

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
>    
>     $$
>     \vec u \wedge V =\vec u \wedge a\vec u=a(\vec u \otimes \vec u - \vec u \otimes \vec u)=0 \notag
>     $$
>
>     If $\vec w$ is coplanar with $\vec u$ and $V$, meaning $\vec w = a \vec u + b V$, (“collapsed box”, not maximally linear independent), then
>
>     $$
>     \vec w \wedge \vec u \wedge V = a\vec u  \wedge \vec u \wedge V+bV\wedge \vec u \wedge V = 0 \notag
>     $$
>
> 2. **Analogue to cross product as a indicator of orientation**: If $n\gt 3$, there are infinitely many directions perpendicular to the two vectors, so you can't think of the orientation as a vector (like the cross product in three dimensions). Instead, you may think of the orientation as a *circle* in the plane of the two given vectors $\vec u$ and $V$, with a direction attached to it in one of the two possible ways: $\circlearrowleft$ or $\circlearrowright$.
>
> 3. **Analogue to cross product as a way to compute "area of parallelogram"**: For two vectors $\vec u=(a,b,c)$ and $V=(d,e,f)$, We can see that the nonzero entries of wedge product are basically the same as for the cross product. 
>     $$
>     \begin{align}
>     \vec{u} \wedge \vec{v}
>     &=(u _ 1,u _ 2,u _ 3)\wedge(v _ 1,v _ 2,v _ 3)\notag\\
>     &= \begin{pmatrix}
>      0        & \red u _ 1v _ 2 − u _ 2v _ 1  & \red u _ 1v _ 3 − u _ 3v _ 1\\
>      \blue −u _ 1v _ 2 + u _ 2v _ 1 & 0        & \red u _ 2v _ 3 − u _ 3v _ 2\\
>      \blue −u _ 1v _ 3 + u _ 3v _ 1 & \blue −u _ 2v _ 3 + u _ 3v _ 2 & 0        
>     \end{pmatrix}\notag\\
>     &= (u _ 1 v _ 2 - u _ 2 v _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2) + (u _ 3 v _ 1 - u _ 1 v _ 3) (\uvec{e} _ 3 \wedge \uvec{e} _ 1) + (u _ 2 v _ 3 - u _ 3 v _ 2) (\uvec{e} _ 2 \wedge \uvec{e} _ 3) \label{wedgetensorvector}\\
>          \notag\\
>     \vec{u} \times \vec{v}
>     &=(u _ 1, u _ 2, u _ 3) \times (v _ 1, v _ 2, v _ 3) \notag\\
>     &= {\red(u _ 2v _ 3 − u _ 3v _ 2)}\uvec i + {\red(−u _ 1v _ 3 + u _ 3v _ 1)}\uvec j + {\red(u _ 1v _ 2 − u _ 2v _ 1)}\uvec k\notag\\
>          \end{align}
>     $$
>
>     > **Note:**
>     >
>     > - The wedge product is a tensor, not just a matrix. It's better to flatten the matrix as a (column or row) vector with 9 bases with 3 redundant bases and 3 null bases as shown in $\Eqn{wedgetensorvector}$.
>     >
>     > - This matrix is anti-symmetry matrix of odd dimension and thus has a zero determinant.
>     >
>
>     However, this result is not the area of this two vectors. $\vec u \wedgeV$ is a bivector, it's norm $A^2=\norm{\vec u\wedge V}^2\substack{\small\text{numerically}\newline\huge {=}}(\vec u \times V)^2$ is the area of the parallelogram.
>
> 4. **Generalization as a direct way to calculate $n$-dimensional area, (specially, $3$-dimensional area being the volume)**: the $n$-dimensional area is defined as a $n$ wedge product of $n$-dimensional vectors. For $n=3$, $ \vec{u} \wedge \vec{v} \wedge \vec{w} = (u _ 1 v _ 2 w _ 3 + u _ 2 v _ 3 w _ 1 + u _ 3 v _ 1 w _ 2 - u _ 1 v _ 3 w _ 2 - u _ 2 v _ 1 w _ 3 - u _ 3 v _ 2 w _ 1) (\uvec{e} _ 1 \wedge \uvec{e} _ 2 \wedge \uvec{e} _ 3) $. Still the volume ($3$-dimensional area) $V^2=\norm{\vec{u} \wedge \vec{v} \wedge \vec{w} }$.
>
>     There is more to it. While $\vec{u} \wedge \vec{v} \wedge \vec{w}$ is a simple construction of three vectors, it is also a wedge product of vector and yet a wedge product $\vec{u} \wedge (\vec{v} \wedge \vec{w})$. The volume of the parallelepiped ($3$-dimensional area) is now the span of a vector and an parallelogram ($2$-dimensional area). Similarly, a $(n+m)$-dimensional area can be spanned by a $n$-dimensional area and $m$-dimensional area.
>

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
