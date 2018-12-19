---
title: Fiber and Fiber Bundles
categories: Topology
edit: 2018-12-15
status: Writing
tags: Fiber Fiber-bundles Topology Berry's-Phase
keywords: 
description: My study notes on Fiber bundles for Berry Phase. 
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

# Berry's Phase

Berry's phase is the main reason why I am studying connections, curvatures, etc. First I am going to review a simple example where Berry's phase can be easily computed, and I am going to point out how the concept of connections and curvatures arise from this physical system.

The system is a spin $\frac 12$ in a adiabatically rotating magnetic field,

$$
\vec B(t) = B_0 (\sin\varphi\cos\theta,\sin \varphi \sin \theta,\cos\varphi).
$$

where the parameters were chosen as $\vec R(t)=(B_0,\theta,\phi)$. The Hamiltonian is written as

$$
H(t)=\mu\vec B(t)\cdot \vec\sigma
$$

Use Pauli matrices, Hamiltonian is expressed as

$$
H(t)=\mu B_0
     \begin{pmatrix}
     \cos\varphi               &  \e^{-\i\theta}\sin\varphi \\
     \e^{\i\theta}\sin\varphi  &  \cos\varphi
     \end{pmatrix}.
$$

Its eigenvalues and eigenvectors of time-independent Schrödinger's equation are

$$
E_\pm=\pm\mu B_0\\
\ket{n_+(t)}=
\begin{pmatrix}\cos\frac{\varphi}{2}\\ \e^{\i\theta}\sin\frac{\varphi}{2}\end{pmatrix}\\
\ket{n_-(t)}=
\begin{pmatrix}-\sin\frac{\varphi}{2}\\ \e^{\i\theta}\cos\frac{\varphi}{2}\end{pmatrix}
$$

The time-dependent Schrödinger's equation gives ($\hbar=1$)

$$
H(t)\ket{\psi(t)}=\i\Partial{}{t}\ket{\psi(t)}
$$

From the Adiabatic approximation, we have the state stays on the same energy level

$$
-\i\Partial{}{t}\ket{\psi(t)}=E_\pm \ket{\psi(t)}
$$

And the state vector of time-evolution is allowed to have an extra phase factor $\phi(t)$ compared to the time-independent state vector

$$
\ket{\psi(t)}=\e^{\i\phi}\ket{n(t)}
$$

Substitute that into the Schrödinger equation, we have

$$
\i(\dot\phi -E)\ket{n(t)}=-\Partial{}{t}\ket{n(t)}. \label{totalphase}
$$

We already know that an time-evolution can have a dynamic phase factor

> The time-dependent Schrödinger equation
> 
> $$
> -\i\Partial{}{t}\ket{\psi(t)}=E(t)\ket{\psi(t)}
> $$
>
> has the simple formal solution
> 
> $$
> \ket{\psi(t)}=\e^{\i\int_0^t E(t^\prime)\d t^\prime}\ket{\psi(t)}
> $$
> 
> where dynamic phase factor arises naturally.

So to remove the dynamic phase factor, we still has the extra phase factor

$$
\gamma(t)=\phi(t)-\int_0^tE_n(t^\prime)\d t^\prime
$$

which satisfies the equation

$$
\dot \gamma (t)=\dot\phi(t)-E(t)
$$

Substitute into the $\Eqn{totalphase}$ that gives

$$
\i \D{\gamma(t)}{t}\ket{n(t)}=-\Partial{}{t}\ket{n(t)}
$$

notice that the $\D{\gamma(t)}{t}$ is a number, thus we can multiply $\bra{n(t)}$ on both side

$$
\begin{align*}
\bra{n(t)}\i\D{\gamma(t)}{t}\ket{n(t)}&=-\braket{n}{\dot{n}}\\
\D{\gamma(t)}{t}&=-i\braket{n}{\dot{n}}
\end{align*}
$$

From that we have the solution of $\gamma(T)$, using

$$
\begin{align*}
\gamma(T)&=\int_0^T\D{}{t}\gamma(t) \d t \\
&=\int_{0}^{T}-i\bra{n}\nabla_{\vec R} \D{\vec R(t)}{t}\ket{n}\d t\\
&=\int_{R(0)}^{R(T)}-i\bra{n}\nabla_{\vec R}\ket{n}\d \vec R\\
\end{align*}
$$

Put the expression of $\ket{n}$ and $R(t)=(B_0,\omega t,\varphi)$, we have

$$
\begin{align*}
\gamma(C)&=\oint \bra{n_\pm}\nabla_R\ket{n_\pm} B_0 \sin\varphi (\d \theta\, \uvec \theta)\\
&=\oint_{\theta\in[0,2\pi]} (1\mp\cos\varphi) \d \theta \\
&=i\pi(1\mp\cos\varphi)
\end{align*}
$$

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Phase-lift.png' width="50%">

# Fiber Bundles

This section follows [[**Bohm**, A. et al](https://www.springer.com/us/book/9783540000310)] and [[Nakahara](http://stringworld.ru/files/Nakahara_M._Geometry_topology_and_physics_2nd_ed..pdf)].

## Intuition of Fiber Bundles

Generally speaking, a fiber bundle is a topological space where there are extra structures. This structure is summarized as the topological space locally looks like the direct product of two subspaces - a typical fiber and a base space. 

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/pasta.png' width="20%" alt="a bunch of pasta">

A fiber bundle is just like a bunch of pasta. Each piece of pasta is a fiber. All the pasta put together becomes the entire topological space which we call a fiber bundle or a total space. Those pasta can be twisted and bent, but each piece of  pasta is distinguishable and looks alike. And at each point of the total space (the entire bunch of pasta), it looks like direct product of a base space and a fiber. This means two things. 

1. This higher dimensional total space can be reduced to lower dimensional spaces. AN extra structure can always help us understand the total space better.
2. We can construct higher dimensional non-trivial spaces from simple lower dimensional spaces. Putting our problems in a higher dimensional space can sometimes give us simpler expression.

## Basic Definition

Formally, a (differentiable) fiber bundle is a triple $(E,\pi,M)$ consists of the following elements:

1. A differentiable manifold $E$ called the **total space.**
1. A differentiable manifold $M$ called the **base space**.
1. A differentiable manifold $F$ called the **fiber** (or **typical fiber**).
1. A surjection $\pi : E\rightarrow M$ called the **projection**. The inverse image of a point $p\in M$, $\pi^{-1}(p)$ is called the fiber $F_p\simeq F$ at point $p$.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/fiber-bundle.png' width="30%">

> In many textbooks a fiber bundle is defined as a quintuple $(E,\pi,M,G,F)$. I think it's better to start defining as little as possible, so I chose to define it as a triple and add $G$ and transition functions later.

> Examples of fiber bundles includes
>
> - Hilbert space in Quantum Mechanics. 
>
>   In Quantum Mechanics, phase are ignored in solutions to the Schrödinger equation. In other words, the state vectors $\ket{\psi}$ are really an equivalent classes $\set{\ket{\psi} \mid \ket{\psi}=\e^{\i \varphi} \ket{\psi _ 0} }$. 
>
>   <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Phase-lift.png' width="40%" alt="a phase lift from Hilbert space">
>
> - [Calabi-Yau space](https://www.mat.univie.ac.at/~westra/calabiyau3.pdf), picture adopted from [code](https://mathematica.stackexchange.com/questions/61590/problem-with-old-code-for-a-calabi-yau-manifold/61595).
>
>   <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/calabi-yau.png' width="40%" alt='Calabi-Yau space looks like assign to each point a complex structure'>
>
> - A cylinder and a Mobius band can both be considered as fiber bundles.
>
>   <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Mobius-strip.png' width="40%" alt="cylinder and a Mobius band">

## Transition Functions

Recall that the topological aspect of a manifold is represented as how the charts are glued together. The topological aspect of a fiber bundle is best represented by the transition functions. In the following diagram, the red dots on the left are "glued" together, the red lines on the right are "glued" together.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Transition-function.png' width="75%" alt="Transition function indicates how the fibers are glued">

The transition function is denoted as $G_{\alpha,\beta}$

$$
G_{\alpha,\beta}(x)\dfdas\Phi_\alpha\circ\Phi_\beta^{-1}(x): F_\alpha\rightarrow F_\beta,\quad \forall x \in U_\alpha \cap U_\beta
$$

Since the fibers $F_\alpha$ and $F_\beta$ are diffeomorphic to typical fiber $F$, $G_{\alpha,\beta}$ is a map from $F$ to $F $ itself.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Galphabetamap.png' width="40%" alt="G_alpha,beta map">

The transition function actually forms a group under composition
$$
\begin{align*}
\id &=G_{\alpha,\alpha} & \text{Identity}\\
G_{\alpha,\beta}^{-1}&=G_{\beta,\alpha} & \text{Inverse}\\
G_{\alpha,\beta}\circ G_{\beta,\gamma}&=G_{\alpha,\beta} & \text{Closure}\\
(G_{\alpha,\beta}\circ G_{\beta,\gamma})\circ G_{\gamma,\delta}&=G_{\alpha,\beta}\circ (G_{\beta,\gamma}\circ G_{\gamma,\delta}) & \text{Associativity}
\end{align*}
$$

This group is called the structure group $G$ of the bundle $F$. We call the action $G_{\alpha,\beta}(x)F_\alpha=F_\beta$  as "$G$ act on $F​$ on the left". 




