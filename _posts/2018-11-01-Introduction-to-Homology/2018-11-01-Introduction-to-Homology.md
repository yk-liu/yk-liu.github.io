---
title: Introduction to Homology
Edit: 2018-11-05
category: Blog
tags: homology Topology Euler-Characteristic
keywords: simplex complex triangulation cycle boundary chain
description: My study notes on homology, as a preparation for Cohomology and to K-theory.
mathjax: true
---

$$
\newcommand{\spl}[1]{\langle{#1}\rangle}
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
\newcommand{\abs}[1]{\left\vert{#1}\right\vert}
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
\newcommand{\sgn}{\operatorname{sgn}}
\notag
$$



# Funny Name

I struggled a little for all the terms in Topology meaning "equivalence" (with their even messier Chinese translations:  homomorphism (同态), homeomorphism (同胚), isomorphism (同构), homology (同调), homotopy (同伦), isotopy (同痕). Zexian Cao wrote an [article](http://www.wuli.ac.cn/fileup/PDF/2014-43-08-010.pdf) in Chinese discussing these strange names, and here's a explanation of homology from [Wiktionary](https://en.wiktionary.org/wiki/homology). They are not satisfactory as far as I am concerned. I might write an article as soon as I have understood these concepts. 

# Euler Characteristic

This section follows [[Armstrong](https://www.springer.com/gb/book/9780387908397)].

## The Counterexample

Euler characteristic is actually a topological invariant. Many of Chinese students encounter this concept around primary school or middle school, as a interesting exercise to develop a sense of space. Nevertheless, it's probably the most famous topological invariant. The law is somethings stated as Euler's rule, it states:

>Let $V, E,F$ denote respectively the numbers of vertices (corners), edges and faces of a polyhedron, then
>
>$$
>V-E+F=2
>$$
>

Most of the students will draw a few polyhedrons, a cube or a tetrahedron, count these numbers can get the number $2$ and call it a day. But that is only part of the story. If you really try to break the rules, you can come up with at least two more types of "polyhedrons" to prove your teacher wrong.

|            Name            |                            Image                             | Vertices $V$ | Edges $E$ | Faces $F$ | Euler characteristic: $V-E+F$ |
| :------------------------: | :----------------------------------------------------------: | ------------ | --------- | --------- | ----------------------------- |
|        Tetrahedron         | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/tetrahedron.png) | 4            | 6         | 4         | 2                             |
|            Cube            | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/Cube.png) | 8            | 12        | 6         | 2                             |
|  Cube with a hole (wrong)  | ![](https://raw.github.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/wrongCubeWithHole.png) | 16           | 24        | 10        | 2                             |
| Cube with a hole (correct) | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/CubeWithHole.png) | 16           | 32        | 16        | 0                             |
|        Hollow cube         | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/hollowCube.png) | 16           | 24        | 12        | 4                             |

Notice that a polyhedron's faces must be simple connected (any two vertices must be connected by an edge), so the correct cube with a hole needs a few extra lines.

You can see that by continuously deforming a cube, to tetrahedron, [Octahedron](https://en.wikipedia.org/wiki/Octahedron), [Dodecahedron](https://en.wikipedia.org/wiki/Dodecahedron), [Icosahedron](https://en.wikipedia.org/wiki/Icosahedron), you end up with the same number. Once you poke a hole on the polyhedron, the number changes immediately. You can keep deformingly continuously until the next hole, the number will remain unchanged. This is the very definition of a **topological invariant**.

Any quantity We say that this number characterizes the space, hence the name.

## Insights of the counterexample

Why is a cube with a hole different with other polyhedrons and how can we characterize it without using Euler Characteristic? 

One way to see it is that it has a hole in it. But a hole is a concept from daily life, which a typical mathematician might ask unhumorously for clarification. One way to see it is that there exist some loops, as is shown below, that will not cut the **surface** of this polyhedron in to halves. This partly explain the motivation of defining chains and boundaries later.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/CutCubeWithHole.png" width=80%>



# Triangulation

Homology, however, is just a natural way of defining Euler characteristics on topological spaces. On a side note, it's not the only topological invariant as a "hole-indicator". The fundamental group and higher homotopy groups will also help to define "holes" on a manifold. This section follows closely [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)].

## Triangulation of Objects

Triangulation is again no stranger for anyone who ever took part in [IYPT](http://iypt.org)(International Young Physicists' Tournament), [CUPT](http://adsabs.harvard.edu/abs/2013APS..MARF38013L)(China Undergraduate Physics Tournament), or any PTs, and had some experience with [COMSOL Multiphysics® software](https://www.comsol.com/comsol-multiphysics). The following is a triangulation, or a "meshing" as is called in the software, of a spring, from [Nishant Nath](https://nishantnath.wordpress.com/2012/06/21/comsol-tutorials-meshing/).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/COMSOL(R)mesh.png" width="100%">

It's also very commonly seen at 3D modeling and Art (image from [freepik](https://www.freepik.com/blog/10-free-low-poly-animal-vector-images/)), see also [here](https://poly.google.com/view/46bXrRt8pFF).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/LowPolyBear.png" width="30%">

It's self-evident that this technique is very useful as it converts a smooth object to a "discrete" one, while maintaining its most important traits so that you can still recognize it's a bear. Acute readers might have known where we are heading: we are going to calculate the Euler Characteristic of smooth objects (topological spaces) by triangulating. 

Indeed, similar techniques can be adopted to topology spaces. We can use "triangles" to mesh out any oddly shaped topological space, turning it into a "polyhedron". From this polyhedron, we can calculate the Euler characteristic of the space, telling us how many "holes" are in this topological space. This gives us a way to classify topology spaces according to its "holes". This is an important aspect of a topological space as in the famous example of topology - a cup and a doughnut is topological equivalent. (image from [Wikipedia](https://en.wikipedia.org/wiki/Topology))

<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Mug_and_Torus_morph.gif">

## Simplexes

Simplexes are the generalization of triangles and tetrahedrons to lower or higher dimensions. A $0$-simplex, denoted as $\spl{p _ 0}$ is a point, a $1$-simplex $\spl{p _ 0p _ 1}$ is a line, a $3$-simplex $\spl{p _ 0p _ 1p _ 2}$ is a triangle with its interior, a $4$-simplex a solid tetrahedron. A $n$-simplex $\sigma _ n$ is denoted as $\sigma _ n=\spl{ p _ 0,p _ 1,\cdots,p _ n}$, with $\set{p _ i}$ is a set of $n$ geometrically independent points,

$$
\sigma _ r=\set{x\in\R^N \mid x=\sum _ {i=0}^n c _ ip _ i, c _ i\ge0, \sum _ {i=0}^n c _ i=0},\quad N\gt n.
$$

Informally, a $n$-simplex is the solid polyhedron constructed by $n+1$ points that of the highest dimension. 

A simplex can have generalized "faces". These are named $k$-faces. For instance, a $3$-simplex can have $0$-faces (vertices), $1$-faces (lines), $2$-faces (faces) and $3$-faces (the simplex itself). Since simplex is "simple", the number of $k$-faces of a $n$-simplex is given by $\binom{k+1}{n+1}=\frac{(k+1)!}{(n+1)!(n-k)!} $.

## Simplicial Complexes and Polyhedrons

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/intersection.png" width="30%">

From simplexes, simplicial complexes can be constructed. Simplicial complexes are again generalizations of polyhedrons in higher or lower dimensions.

A simplicial complex $K$ is a set of simplexes glued together, such that

1. Any face of a simplex of $K$ is part of $K$. 
2. Any non-empty intersection of two simplexes belongs to $K$.

This definition is quite intuitive. By requirement 1., a simplicial complex has a well defined boundary (surface). All bodies must be covered by a surface. For example, an interior of a cube is not a simplicial complex. By requirement 2., simplexes in a simplicial complex are not allowed to freely pass through each other. By "not passing though", we mean all the points generated by the intersection must be included. For example, the left is not a simplicial complex for the intersection is not counted. While the right is a lawful simplicial complex. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/intersectionExample.png" width="30%">

Formally, the simplicial complex $K$ is defined as a set of simplexes.

The dimension of $K$, denoted as $\dim K$ is defined as the largest dimension of simplexes in $K$. This means that although a complex can be in a high dimensional space, for example a triangle embedded in a $4$-dimensional space, the dimension of the complex itself is unchanged, $3$ as in the example.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/complex.png" width="30%">

The set of the above object is

$$
\begin{align*}
K=\{& p _ 0,p _ 1,p _ 2,p _ 3,\spl{p _ 0,p _ 1},\spl{p _ 0,p _ 2},\spl{p _ 0,p _ 3},
\spl{p _ 1,p _ 2},\spl{p _ 1,p _ 3},\spl{p _ 2,p _ 3},\spl{p _ 1,p _ 2,p _ 3}\}
\end{align*}
$$

If every simplex in the set is regarded as a subset of $\R^n$, the simplicial complex is called a **polyhedron** $\abs {K}$.

## Triangulation of Topological Space

If there is a homeomorphism $f:\abs{K}\rightarrow X$, topological space is said to be **triangulable** and the pair $(K,f)​$ is called a **triangulation**. 

# Homology Group - Elements

From polyhedrons we are going to construct three groups. By combining these groups we will be able to find a topological invariant called homology group. This section follows [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)] and  [[Armstrong](https://www.springer.com/gb/book/9780387908397)].

## Oriented Simplexes

The notation of a simplex as $\spl{p _ 1,p _ 2,\cdots,p _ n}$ is actually insufficient.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png" width="50%">

These two triangles cannot be brought to overlap without flipping, neither can these two tetrahedrons without mirroring. Thus for every simplex we need to define an "orientation", characterized by the arrangement of the points.  It also helps defining the boundary of simplexes.

$$
(p _ {i _ 0},p _ {i _ 1},\cdots,p _ {i _ n})=\sgn (P)(p _ 0,p _ 1,\cdots,p _ n)
$$

where 

$$
P=\begin{pmatrix}
  0   & 1   & \cdots & n   \\
  i _ 0 & i _ 1 & \cdots & i _ n
  \end{pmatrix}
$$

## Boundary Operator

The boundary of a complex is of particular interest to us. If we want to somehow calculate the Euler Characteristic, the notions of faces, edges and points are very helpful. They are conveniently the boundaries of bodies, faces and edges respectively.

The boundary operator $\partial _ r$ acts on an $r$-simplex gives its boundary. The $0$-simplex is defined as has no boundary, denoted as $\partial _ 0p _ 0=0$. 

Utilizing the orientated simplexes, higher dimensional simplexes can have well defined boundaries.

$$
\begin{align*}
\partial _ r\sigma _ r&=\sum _ {i=0}^{r}(-1)^i(p _ 0,p _ 1,\cdots,p _ {i-1},p _ {i+1},\cdots,p _ r)\\
&\dfdas\sum _ {i=0}^{r}(-1)^i(p _ 0,p _ 1,\cdots,\hat{p _ {i}},\cdots,p _ r)\\
\end{align*}
$$

> Geometrical examples:
>
> A cube's boundary is it's surface. This surface have no boundary. (Think like this: the surface is equivalent to the surface of a sphere, which is "enclosed", "whole".) **Similarly, all boundaries have no boundary.** Proof see [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)] `Lemma 3.3`.

## Interlude: Free Abelian Group

An **Abelian group** is a group whose multiplication is communicative. We then call the group operation "**addition**", the **identity** naturally denoted as $0$. 

> Example:
>
> ​    Integers and addition form a Abelian group.

If every element of an Abelian group $A$ can be written as sum of *integer multiples* of elements from a subset $\set{G_i}$ of the group $A$. (See a simple definition of a general group generator [here](http://mathworld.wolfram.com/GroupGenerators.html).) $A$ is said to be **generated** by $\set{G_i}$, and elements of $\set{G_i}$ are called **generators**. If $\set{G_i}$ is also finite, $A$ is said to be **finitely generated** by $\set{G_i}$.

> Example:
>
> - $\Z$ is finitely generated by $\set{1}$ or $\set{-1}$.
> - The cycle group $\set{R,2R}$ ($R$ stands for a $180$-degree rotation) is generated by $\set{R}$. 
> - $\Z\oplus\Z=\set{(m,n)\mid m,n\in Z}$ is finitely generated by $\set{(1,0),\, (0,1)}$ or $\set{(1,0),\,(2,3)}$.

 If $\set{G_i}$ is finite, and elements from $\set{G_i}$ are further linear independent, $A$ is called a **free Abelian group**.

>Example:
>
>- The cycle group $\set{R,2R}$ generated by $\set{R}$ is **not** a free Abelian group, for $R$ is not linear independent. By definition, $R$ is linear independent if $nR=0 \iff n=0$. But for $n=2$, $2R=\text{identity}=0$. 
>- $\Z\oplus\Z$ is free Abelian group, for it can be generated by $\set{(1,0),\, (0,1)}$, though elements from $\set{(1,0),\,(2,3)}$ are not linear independent.

## Chains

Using simplexes from a polyhedron, we can build chains. Like the name suggests, chains are just integer multiples of some oriented $r$-simplexes. 

Formally, an **$r$-chain** is an element of **$r$-chain group**. The **$r$-chain group** is the **free abelian group** generated by *every* oriented $r$-simplexes of a simplicial complex $K$. A **$r$-chain** of **$r$-chain group** is of the form:
$$
\sum_{i=1}^{I} n_i\sigma_{r,i},\quad n_i\in\Z
$$
The $r$-chain group of simplicial complex $K$ is denoted as $C_r(K)$. We allow $r$ to be greater than $\dim(K)$, by setting all such $C_r$s to be $\set{0}$.

> **Chain Complex**
>
> Using boundary operator we can build a chain complex:
> $$
> 0\substack{i\\\hookrightarrow}C _ n\xrightarrow{\partial _ n}C _ {n-1}\xrightarrow{\partial _ {n-1}}C _ {n-2}\xrightarrow{\partial _ {n-2}} \cdots\xrightarrow{\partial _ 2}C _ {1}\xrightarrow{\partial _ 1}C_0\xrightarrow{\partial _ 0}0
> $$
> Where $\substack{i\\\hookrightarrow}$ denotes the inclusion map. Given a subset $B$ of a set $A$, the injection $f:B\rightarrow A$ defined by $f(b)=b$ for all $b \in B$ is called the inclusion map. That is to say:
> $$
> i:0 \rightarrow 0 \in C_n
> $$
>
> > Insisting on putting $0$ on the left side seems to me purely an aesthetic choice. This chain complex is commonly seen in k-theories.

## Cycles

An $r$-cycle is a chain with no boundary. We can also say that an $r$-cycle $c$ is the kernel of $\partial_r$:
$$
\partial_r c = 0
$$

All $r$-cycles forms $r$-cycle group.

## Boundaries

An $r$-boundary is an $r$-chain such that it is the boundary of a $(r+1)$-chain. We can also say that an $r$-boundary $b$ is the image of $\partial_{r+1}$:
$$
b =\partial_{r+1} c
$$
A





# Homology Group









[to be continued]







 



