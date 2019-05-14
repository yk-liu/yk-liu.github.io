---
title: Fiber Bundles
categories: Topology
edit: 2019-01-16
status: Paused
tags: Fiber Fiber-bundles Topology Berry's-Phase
keywords: 
description: Fiber bundle is introduced with intuitive examples of pasta and pancakes, Berry phase and Calabi-Yau space. Structure group is introduced as a natural consequence of transition functions.
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
\newcommand{\id}{\mathrm{I}}
\newcommand{\blue}{\color{blue}}
\newcommand{\red}{\color{red}}
\newcommand{\norm}[1]{\left\|{#1}\right\|}
\newcommand{\set}[1]{\left\lbrace{#1}\right\rbrace}
\newcommand{\sgn}{\operatorname{sgn}}
\newcommand{\Z}{\mathbb{Z}}
\notag
$$

# Fiber Bundles

This section follows [[**Bohm**, A. et al](https://www.springer.com/us/book/9783540000310)] and [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)].

## Intuition of Fiber Bundles

Generally speaking, a fiber bundle is a topological space where there are extra structures. This structure is summarized as the topological space locally looks like the direct product of two subspaces - a typical fiber and a base space. 

A good example of a fiber bundle is a cylinder. I think this is the most intuitive way of explaining the name. A bundle of fibers is called a fiber bundle, like a handful of pasta. However, a fiber need not be an actual "fiber", it could also be a higher dimensional manifold, like a piece of pancake or a potato chip.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/cylinder-food-bundles.png' width="60%" alt="trivial fiber bundle: a cylinder">

A non-trivial example of braiding is the braiding of strands.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/4-Strand-Braiding.png' width="35%" alt="non-trivial fiber bundle: a braiding">

Take a bunch of pasta for example. A fiber bundle is just like a bunch of pasta. Each piece of pasta is a fiber. All the pasta put together becomes the entire topological space which we call a fiber bundle or a total space. That pasta can be twisted and bent, but each piece of pasta is distinguishable and looks alike. And at each point of the total space (the entire bunch of pasta), it looks like a direct product of a base space and a fiber. This means two things. 

1. **This higher dimensional total space can be reduced to lower dimensional spaces.** We can ignore the additional fiber sometimes to have a good "approximation" when the effects of fibers are not strong, like when the phase of  state vector can be ignored.
2. **A lower dimensional space can be mapped to a higher dimensional space.** An extra structure can always help us understand the total space better. Also, problems considered in a higher dimensional space can sometimes give simpler expression, like in the case of Calabi-Yau space.

> Examples of fiber bundles includes
>
> - Hilbert space in Quantum Mechanics. 
>   In Quantum Mechanics, phases are usually ignored in solutions to the Schrödinger equation. Not until Berry made the discovery of the Berry phase did the complex phase was regarded seriously, and that leads directly to topological insulators as well as quantum computations. To maintain what we have already had for quantum mechanics, we can view the complex phases as strands stemming from each point of the Hilbert space. Originally, the state vector traces out a circle during a cyclic evolution. Now when we look closer, there is an additional structure to each point of the Hilbert space, namely the phase. We found out that during a cyclic evolution, the state vector traces out a spiral. In other words, the state vectors $\ket{\psi}$ are really an equivalent classes $\set{\ket{\psi} \mid \ket{\psi}=\e^{\i \varphi} \ket{\psi _ 0} }$. 
>
> <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/Phase-lift.png' width="40%" alt="a phase lift from Hilbert space">
>
> - [Calabi-Yau space](https://www.mat.univie.ac.at/~westra/calabiyau3.pdf), picture adopted from [code](https://mathematica.stackexchange.com/questions/61590/problem-with-old-code-for-a-calabi-yau-manifold/61595). A common saying is that each point of space is a Calabi-Yau space. Usually, the extra $6$ dimensional are overlooked and we are fine in our daily lives. But once we look closely enough, space reveals its additional structure.
>
> <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/calabi-yau.png' width="40%" alt='Calabi-Yau space looks like assign to each point a complex structure'>
>
> - A mathematical example of a trivial and a non-trivial example: the surface of a cylinder and a Mobius band can both be considered as fiber bundles.
>
> <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/Mobius-strip.png' width="45%" alt="cylinder and a Mobius band">

## Basic Definition

Formally, a (differentiable) fiber bundle is a triple $(E,\pi,M)$ consists of the following elements:

1. A differentiable manifold $E$ called the **total space.**
1. A differentiable manifold $M$ called the **base space**.
1. A differentiable manifold $F$ called the **fiber** (or **typical fiber**).
1. A surjection $\pi : E\rightarrow M$ called the **projection**. The inverse image of a point $p\in M$, $\pi^{-1}(p)$ is called the fiber $F_p\simeq F$ at point $p$.

The relationships between these entities are represented by the following diagram. Notice that the base space is not a subset of the total space. It is an **independent** manifold "outside" of the total space. The same is true for the fiber.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/fiber-bundle.png' alt="Fiber bundle" width="30%">

> In many textbooks a fiber bundle is defined as a quintuple $(E,\pi,M,G,F)$. I think it's better to start defining as little as possible, so I chose to define it as a triple and add $G$ and transition functions later.

## Additional Structures of Fiber Bundles: Transition Functions *etc*.

An important insight of fiber bundle is the existence of local trivializations. Namely in a small enough neighborhood of the total space, it is always possible to find a way to "decompose" the total space to the direct product of a neighborhood of base space and a typical fiber. 





## Interpretation of the Transition Functions and Structure Group

> **Short reminder of the word "Topology"**:
>
> Mathematically, a topology is defined as a family of subsets $\tau$ of a set $X$. The pair $(\tau,X)$ is called a topology. This definition is evidently related to the connectedness of the set $X$. Elements belong to the same subset are connected, otherwise they are separated. From the connectedness all topological properties are defined. 
>
> For a manifold, the topology is also represented as how the charts are glued together. Different gluing choices shows different "twisting". For example, different gluing of triangles can form different topologies like below, image adopted from Wikipedia.
>
> <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/gluing.png' width="70%" alt="Different gluing of triangles form different topology">

Recall that the topological aspect of a manifold is represented as how the charts are glued together. Thus the topological aspect of a fiber bundle is best represented by the transition functions. 

In the following diagram, the red dots on the left are "glued" together, the red lines on the right are "glued" together.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/Transition-function.png' width="75%" alt="Transition function indicates how the fibers are glued">

The transition function is denoted as $G_{\alpha,\beta}$

$$
G_{\alpha,\beta}(x)\dfdas\Phi_\alpha\circ\Phi_\beta^{-1}(x): F_\alpha\rightarrow F_\beta,\quad \forall x \in U_\alpha \cap U_\beta
$$

Since the fibers $F_\alpha$ and $F_\beta$ are diffeomorphic to typical fiber $F$, $G_{\alpha,\beta}$ is a map from $F$ to $F $ itself.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/Galphabetamap.png' width="40%" alt="G_alpha,beta map">

The transition function actually forms a group under composition

$$
\begin{align*}
\id &=G_{\alpha,\alpha} & \text{Identity}\\
G_{\alpha,\beta}^{-1}&=G_{\beta,\alpha} & \text{Inverse}\\
G_{\alpha,\beta}\circ G_{\beta,\gamma}&=G_{\alpha,\beta} & \text{Closure}\\
(G_{\alpha,\beta}\circ G_{\beta,\gamma})\circ G_{\gamma,\delta}&=G_{\alpha,\beta}\circ (G_{\beta,\gamma}\circ G_{\gamma,\delta}) & \text{Associativity}
\end{align*}
$$

This group is called the structure group $G$ of the bundle $F$. We call the action $G_{\alpha,\beta}(x)F_\alpha=F_\beta$  as "$G$ act on $F$ on the left". 

# Principal Fiber Bundle

There is a special kind of bundle called the principal bundle, where all the fibers are isomorphic to the structure group $G$. 

A piece of fiber is essentially a topological space, and you can add a group structure to the space such that group properties (identity, inverse, closure, and associativity) are endowed. If the group structure is the same as structure group, we will call this fiber bundle a principal fiber bundle.

>  Is it possible to make every fiber bundle a principal fiber bundle? If not, how can we be sure that it is not possible?

# Connections on Fiber Bundle

This section follows [Peter Szekeres](https://www.cambridge.org/core/books/course-in-modern-mathematical-physics/E899DB30C574E2F4D7C861B3097F9813).

## Linear Connections

There is no natural way of comparing tangent vectors $V_p$ and $V_q$ at $p$ and $q$, for if they had identical components in one coordinate system this will not generally be true in a different coordinate chart covering the two points.

Consider the coordinate transformation:
