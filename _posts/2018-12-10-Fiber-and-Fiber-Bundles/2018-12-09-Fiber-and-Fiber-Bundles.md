---

title: Fiber and Fiber Bundles
categories: Topology
edit: 2018-12-15
status: Writing
tags: Fiber Fiber-bundles 
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

The Hamiltonian is written as

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

Its eigenvalues and eigenvectors are

$$
\lambda=\pm\mu B_0\\
\ket{n_+(t)}=
\begin{pmatrix}\cos\frac{\varphi}{2}\\ \e^{\i\theta}\sin\frac{\varphi}{2}\end{pmatrix}\\
\ket{n_-(t)}=
\begin{pmatrix}-\sin\frac{\varphi}{2}\\ \e^{\i\theta}\cos\frac{\varphi}{2}\end{pmatrix}
$$

The time-dependent Schrödinger equation gives

$$
H(t)\ket{\psi(t)}=\i\Partial{}{t}\ket{\psi(t)}
$$

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Phase-lift.png' width="50%">

# Intuition on Fiber and Fiber Bundles

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/pasta.png' width="20%">

A fiber bundle is just like a bunch of pasta. Each pasta is a fiber. All the pasta put together becomes the entire topological space which we call a fiber bundle. 

Generally speaking, a fiber bundle is a topological space where there are extra structures. This structure is summarized as the topological space locally looks like the direct product of two subspaces - a typical fiber and a base space.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/fiber-bundle.png' width="30%">

Formally, a (differentiable) fiber bundle is a quintuple $(E,\pi,M,F,G)$ consists of the following elements:

1. A differentiable manifold $E$ called the **total space.**
1. A differentiable manifold $M$ called the **base space**.
1. A differentiable manifold $E$ called the **fiber** (or **typical fiber**).
1. A surjection $\pi : E\rightarrow M$ called the **projection**. The inverse image of a point $p\in M$, $\pi^{-1}(p)$ is called the fiber $F_p\simeq F$ at point $p$.
1. A **structure group** $G$ which is a Lie group acts on $F$ on the left.
1. A set of open coverings $\set{U _ i}$ of $M$ called the **local trivialization**
1. A **transition function** 


Examples of fiber bundles are 

- Hilbert space in Quantum Mechanics. 

   In Quantum Mechanics, phase are ignored in solutions to the Schrödinger equation. In other words, the state vectors $\ket{\psi}$ are really an equivalent classes $\set{\ket{\psi} \mid \ket{\psi}=\e^{\i \varphi} \ket{\psi _ 0} }$. 

   <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Phase-lift.png' width="30%">

- [Calabi-Yau space](https://www.mat.univie.ac.at/~westra/calabiyau3.pdf), picture adopted from [code](https://mathematica.stackexchange.com/questions/61590/problem-with-old-code-for-a-calabi-yau-manifold/61595).

  <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/calabi-yau.png' width="60%">

- A cylinder and a Mobius band can both be considered as fiber bundles.

   <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/Mobius-strip.png' width="60%">

