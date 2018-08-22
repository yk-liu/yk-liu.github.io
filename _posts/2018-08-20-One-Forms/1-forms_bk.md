---
title: One forms
---



## One-forms

$$
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
%\renewcommand{\vec}{\mathbf}
\newcommand{\bra}[1]{\left\lrangle{#1}\right| }
\newcommand{\ket}[1]{\left| {#1}\right\rangle}
\newcommand{\braket}[2]{\left\lrangle {#1} \; \middle|\;{#2} \right\rangle }
\newcommand{\mani}{\mathcal}
\newcommand{\field}{\mathscr}
\newcommand{\Tspace}[1]{T\! {#1}}
\newcommand{\d}{\mathrm{d}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{: =}
\newcommand{\Eqn}[1]{\text{(Eqn. }\ref{#1}\text{)}}
\newcommand{\dual}{\tilde}
\newcommand{\vard}{\mathfrak d}
\newcommand{\vare}{\mathfrak e}
\newcommand{\e}{\mathrm e}
\newcommand{\i}{\mathrm i}
$$

### curves and functions

The definitions of curves and functions are as follow. A curve on a manifold is a linear map from $[a,b]$ to a set of points. Functions are defined over curves on manifold, *not* over curves in $\R^n$. With the help of local coordinates, curves and functions each have coordinate representations.

![curve and function def](/assets/curve-function.png)



### General Vectors and Covectors

#### Vectors

Roughly, a **vector space** is a set of entities such that is closed under linear combinations. Both "arrow heads" and linear functions satisfy this definition and thus form a vector space. Due to this remarkable fact, there exists a subset of vectors called the **basis** in the space, such that any vector in the space can be represented as a linear combination of members of the basis. 

Formally the vector space is a set of four things, $(V,k,+,*)$ where $V$ is the set of vectors, $K$ is the **field** of scalars involved in creating multiples of vectors, $+$ is the function involved in adding two vectors and $*$ is the binary function involved in multiplying a vector by a scalar.

#### Covectors

Now consider the set of linear functions defined on $V$ that have values in $K$, i.e. $f:V\rightarrow K$. Such linear functions on vector spaces are called **linear functionals**. They apparently form a vector space as well. 

- $(f_1+f_2)(V) = f_1(V) + f_2(V)$ where the R.H.S. is addition of two scalars in the field K. 
- $(kf)(V) = kf(V)$, again where the R.H.S. is multiplication of two scalars in the field K.

The vector space of linear functionals over V is said to be **dual** to the vector space involving V. 

> ***Remark:***
>
> - For vector spaces with finite bases the dual spaces are not very exotic; they are essentially the same as the original spaces. There some infinite dimensional vector spaces that have dual spaces that are different in nature from the original space.
> - If the original space is a finite dimensional, vectors can be sent to covectors through a isomorphism (in coordinates, via transpose).
> - The isomorphism can be written as a definition of map 
>
> $$
> \form v \rightarrow \vec v : \vec v \cdot \vec x =\inner{\form v }{\vec x} 
> \label{1formvec}
> $$
>
> - With a Euclidean vector space, it comes with a dot product $(x, y) → x·y$, which can be used to describe 1-forms in terms of vector fields (or equivalently, to identify cotangent vectors and tangent vectors):  Specifically, for every 1-form ω there is a unique vector field $\scr F : \R^n\rightarrow\R^n$ such that $ω_x(v) \dfdas F(x) · v$ for all  $x, v \in \R^n$. [[Tao](http://www.math.ucla.edu/~tao/preprints/forms.pdf)] 
> 

#### Example of Covectors

Differential forms are the dual spaces to the spaces of vector fields over Euclidean spaces. At each point in the space $X$ there is a vector, say $\vec v$. This is equivalent to functions of the form $f:X\rightarrow V=(V,\R,+,*)$; i.e., functions which map every point of the space $X$ into the vector space $V$.

Here we see how to construct the **covector space** of $V$

1. Suppose the basis for the vector space $V$ is denoted as say $(\uvec e_1,\uvec e_2, \uvec e_3)$, where $\uvec e_i$ is a unit vector in the positive $x_i$ direction. Suppose a basis for the dual space $\dual V$ is denoted as $(\d x_1,\d x_2,\d x_3)$. 

2. From the definition, a basis of a dual space is itself a dual vector, which acts on a vector, gives a real number.

   Writing that down as $\d x_i(\vec v)\in \R$.

3. Due to linearity of the vectors and covectors, $\d x_i(\vec v)$ can be seen as act on basis of vector

    $$
    \d x_i(\vec v) =\d x_i (v_1\uvec e_1+v_2\uvec e_2+v_3\uvec e_3)= v_1\d x_i (\uvec e_1)+v_2\d x_i (\uvec e_2)+v_3\d x_i (\uvec e_3)\in \R
    $$

4. Define $\d x_i (\uvec e_j)\dfdas \delta_{i,j}$. Other choices can always seen as a linear transformation of this simple definition.

5. A covector $\dual {\vec v}$ can be written in components $\dual{\vec v}=\dual v^\mu\d x_\mu$, and can be mapped to a vector $\vec{\dual v}=\dual v^\mu \uvec e_\mu$.

6. A covector $\dual {\vec v}(\vec v)=\dual v^i \d x_i (v^i\uvec e_i)=\dual v^i v_i=\vec{\dual v }\cdot\vec v\in \R$

A vector field is a function over a region of three dimensional space that gives at each point a vector. For a point P=(x,y,z) let the vector be v(P) = vx(P)ix+vy(P)iy+vz(P)iz. The corresponding dual entity is a function over the region of three dimensional space which gives a linear functional at each point; i.e., w(P) = wx(P)dx+wy(P)dy+wz(P)dz. This is called a 1-form, a special case of a differential form. Thus a 1-form is a field of linear functionals.

#### Inner Product and Dot Product

The **inner product** $\inner{\;}{\;}$ is defined as
$$
\inner{\dual a}{\vec b}=\dual{\vec a}(\vec b)\in\R
$$
Note that the inner product is defined between a vector and a dual vector and not between two vectors or two dual vectors. 

A natural insight is that the **dot product** of two vectors is a real number, and thus a covector can be "identified" as a vector, a inner product as dot product.

### Vectors on a manifold

A **vector** is formally defined as an element of a **vector space**, i.e. a set that is closed under finite vector addition and scalar multiplication.

On a manifold, **vector** is defined to be a **tangent vector** to a curve in $\mani M$. Since the directional derivative of a curve in $\R^n$ is easily defined as

$$
\begin{align}
X(0)&=\left.\D{f(c(t))}{t}\right|_{t=0}\notag\\
&=\left.\D{((f \circ \varphi^{-1})(\varphi\circ c )(t))}{t}\right|_{t=0}\notag\\
&=\left.\D{(f \circ \varphi^{-1})(\vec x )}{t}\right|_{t=0}\notag\\
&=\left.\D{((f \circ \varphi^{-1})(x_1(t),x_2(t),\cdots))}{t}\right|_{t=0}\notag\\
&=\left.\Partial{(f \circ \varphi^{-1})}{x^\mu}\D{x^\mu(t)}{t}\right|_{t=0}\notag\\
&=\left.\Partial{(\_ \circ \varphi^{-1})}{x^\mu}\D{x^\mu(t)}{t}\right|_{t=0} f\notag\\
&=\D{x^\mu(t)}{t} \left.\Partial{(\_ \circ \varphi^{-1})}{x^\mu}\right|_{t=0} f\notag\\
&\dfdas  X^\mu \left.\Partial{(\_ \circ \varphi^{-1})}{x^\mu}[f]\right|_{t=0} \label{vec-component}\\
&\dfdas \left.X[f]\right|_{t=0} \label{vec-def}
\end{align}
$$

Now a vector is a operator act on a function, defined by a curve $c$ and a function $f$ in terms of the directional derivative along the curve. 

The vector has a decomposition $\Eqn{vec-component}$. The $\{\uvec{e}^\mu\} \dfdas \Partial{(\_ \circ \varphi^{-1})}{x^\mu} $ is taken as **coordinate basis** which is a operator, $X^\mu$ are naturally called the **components** of $X$ with respect to $\uvec{e}^\mu$. 

Reverse the order of definition, a vector can be defined as mathematical objects with the form $X={v_p}^\mu\Partial{}{x^\mu}$, where ${v_p}^\mu=\D{x^\mu}{t}|_p$ is the "coordinate velocity". To make the statement more abstract, 

> A tangent vector at a point of a manifold is a linear map that satisfies the Leibniz rule.

Note the existence of a vector is independent of the coordinate or function. Like shown below, the "red arrow" tangent to the manifold depend solely on the curve and the point.

![vector](assets/vector.png)

> ***Remark*** : 
>
> 1. Evidently, due to linearity of derivatives, a vector is a linear map $X(\alpha f+\beta g) = \alpha X(f) + \beta X(g) $.
> 2. Tangent vector lives on a completely different space, i.e. tangent space. It is *not* the limit of two point on the smooth manifold moving near to each other along a curve, which is still on the manifold. 
> 3. The map from vector (well defined) *in* $\R^n$ to vector *of* a manifold is done via the difference of map $\varphi$, not the map itself.

### Vector field

A vector field can be seen as arrows sprinkled on a manifold as shown in the left. Or it defines a map from a point to a curve on manifold as shown in the right. 

>  A point follows the direction of vector field moves at a "velocity" of the magnitude of the vector, tracing out a curve on the manifold.

![vector-curve](assets/vector-curve.png)

### One-form

#### General Definition

A **one-form**, or a **covector**, **dual vector**, is just a element of a **dual vector space**.

A dual vector space is just all linear functions that maps a vector to $\R^1$. In another word, 

> A dual vector act on a vector gives a real number.
>
> A dual vector is a linear, real-valued function of vectors.

A dual vector is again an operator that acts on vectors, which are also operators. Notice that **linear functions** naturally form a vector space, so a dual vector space is indeed a vector space, and originally has nothing to do with "vectors" or "arrows".

#### One Form on Manifold

The 1-form of a vector (which is a tangent vector, a kind of "directional derivative") on manifold, should send "directional derivative" to a number. Or if this one-form can be mapped to a vector $\Eqn{1formvec}$, it should give a real number. Recall that a vector is defined as $X\dfdas X^\mu\uvec e_\mu=\D{x^\mu}{t} \Partial{}{x^\mu}$, and vector 's action on a function $f$ is defined as $X[f]\dfdas \D{x^\mu}{t} \Partial{f}{x^\mu}$. 

The "dual" of directional derivative is the total derivative $\d ​$ denoted as a vector as $\vard​$. Being a vector, $\vard​$ can have it's component form of $\vard = \vard^\mu \uvec \vare_\mu​$, with $\uvec{\vare}​$ a operator, $\vard^\mu​$ a real number seen as a coefficient of linear combination. Write down the component form of this map,
$$
\begin{align*}
\inner{\vard}{X}&=\vard (\D{x^\mu}{t} \Partial{}{x^\mu})\\
&=\vard_\nu\uvec{d}^\nu (\D{x^\mu}{t} \Partial{}{x^\mu})\\
\xrightarrow{\text{linearity}}&=\left(\vard_\nu \D{x^\mu}{t}\right)\uvec{d}^\nu ( \Partial{}{x^\mu})\\
\xrightarrow[\text{to dot product}]{\text{action is mapped}} &=\left(\vard^\nu \D{x^\mu}{t}\right)\left(\uvec{d}^\nu \cdot\Partial{}{x^\mu}\right)\\
\end{align*}
$$

it's obvious that the map $\uvec{d}^\nu ( \Partial{}{x^\mu})=\uvec{d}^\nu\cdot \Partial{}{x^\mu}$ should be a real number. The most simple choice of basis is just $\uvec d ^\nu=x^\mu$ 
$$
\begin{align*}
\inner{X[f]}{d}=\D{x^\mu}{t} \Partial{}{x^\mu}(\d f )
\end{align*}
$$


such



The operation of applying the one-form to a vector omega^1(v) is called tensor contraction.






