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

# Triangulation

Homology, however, is just a natural way of defining Euler characteristics on topological spaces. This section follows closely [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)].

## Triangulation of Objects

Triangulation is again no stranger for anyone who ever took part in [IYPT](http://iypt.org)(International Young Physicists' Tournament), [CUPT](http://adsabs.harvard.edu/abs/2013APS..MARF38013L)(China Undergraduate Physics Tournament), or any PTs, and had some experience with [COMSOL Multiphysics® software](https://www.comsol.com/comsol-multiphysics). The following is a triangulation, or a "meshing" as is called in the software, of a spring, from [Nishant Nath](https://nishantnath.wordpress.com/2012/06/21/comsol-tutorials-meshing/).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/COMSOL(R)mesh.png" width="100%">

It's also very commonly seen at 3D modeling (image from [freepik](https://www.freepik.com/blog/10-free-low-poly-animal-vector-images/)), see also [here](https://poly.google.com/view/46bXrRt8pFF).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/LowPolyBear.png" width="30%">

It's self-evident that this technique is very useful as it converts a smooth object to a "discrete" one, while maintaining its most important traits so that you can still recognize it's a bear. Acute readers might have known where we are heading: we are going to calculate the Euler Characteristic of smooth objects (topological spaces) by triangulating. 

Similar techniques can be adopted to topology spaces. We can use "triangles" to mesh out any oddly shaped topological space, turning it into a "polyhedron". From this polyhedron, we can calculate the Euler characteristic of the space, telling us how many "holes" are in this topological space. This gives us a way to classify topology spaces according to its "holes". This is an important aspect of a topological space as in the famous example of topology - a cup and a doughnut is topological equivalent. (image from [Wikipedia](https://en.wikipedia.org/wiki/Topology))

<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Mug_and_Torus_morph.gif">

## Simplexes

Simplexes are the generalization of triangles and tetrahedrons to lower or higher dimensions. A $0$-simplex, denoted as $\spl{p_0}$ is a point, a $1$-simplex $\spl{p_0p_1}$ is a line, a $3$-simplex $\spl{p_0p_1p_2}$ is a triangle with its interior, a $4$-simplex a solid tetrahedron. A $n$-simplex $\sigma_n$ is denoted as $\sigma_n=\spl{ p_0,p_1,\cdots,p_n}$, with $\set{p_i}$ is a set of $n$ geometrically independent points,

$$
\sigma_r=\set{x\in\R^N \mid x=\sum_{i=0}^n c_ip_i, c_i\ge0, \sum_{i=0}^n c_i=0},\quad N\gt n.
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
K=\{& p_0,p_1,p_2,p_3,\spl{p_0,p_1},\spl{p_0,p_2},\spl{p_0,p_3},
\spl{p_1,p_2},\spl{p_1,p_3},\spl{p_2,p_3},\spl{p_1,p_2,p_3}\}
\end{align*}
$$

If every simplex in the set is regarded as a subset of $\R^n$, the simplicial complex is called a **polyhedron** $\abs {K}$.

## Triangulation of Topological Space

If there is a homeomorphism $f:\abs{K}\rightarrow X$, topological space is said to be **triangulable** and the pair $(K,f)​$ is called a **triangulation**. 

# Homology Group

From polyhedrons we are going to construct three groups. By combining these groups we will be able to find a topological invariant called homology group. This section follows closely [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)].

## Oriented Simplexes

The notation of a simplex as $\spl{p_1,p_2,\cdots,p_n}$ is actually insufficient. It also helps defining the boundary of simplexes.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/triangles.png">

These two triangles cannot be bought to overlap without flipping, neither can these two tetrahedrons without mirroring. Thus for every simplex we need to define an "orientation", characterized by the arrangement of the points.

$$
(p_{i_0},p_{i_1},\cdots,p_{i_n})=\sgn (P)(p_0,p_1,\cdots,p_n)
$$

where 

$$
P=\begin{pmatrix}
  0   & 1   & \cdots & n   \\
  i_0 & i_1 & \cdots & i_n
  \end{pmatrix}
$$

## Boundary Operator

The boundary of a complex is of particular interest to us. \[why...\]\[need elaboration on Euler Characteristic\].

The boundary operator $\partial_r$ acts on a $r$-simplex gives its boundary. The $0$-simplex is defined as has no boundary, denoted as $\partial_0p_0=0$. 

Utilizing the orientated simplexes, higher dimensional simplexes can have well defined boundaries.

$$
\begin{align*}
\partial_r\sigma_r&=\sum_{i=0}^{r}(-1)^i(p_0,p_1,\cdots,p_{i-1},p_{i+1},\cdots,p_r)\\
&\dfdas\sum_{i=0}^{r}(-1)^i(p_0,p_1,\cdots,\hat{p_{i}},\cdots,p_r)\\
\end{align*}
$$

Using boundary operator we can build a chain complex:

$$
\require{mathtools}
0\substack{i\\\hookrightarrow}C_r\xrightarrow{\partial_r}C_{r-1}\xrightarrow{\partial_r}C_{r-2}\xrightarrow{\partial_r} \cdots\xrightarrow{\partial_2}C_{1}\xrightarrow{\partial_1}0
$$


## Chains

Using simplexes from a polyhedron, we can build chains.

The simplest example is building chains from points.



## Cycles and Boundaries







## Homology Group









[to be continued]







 



