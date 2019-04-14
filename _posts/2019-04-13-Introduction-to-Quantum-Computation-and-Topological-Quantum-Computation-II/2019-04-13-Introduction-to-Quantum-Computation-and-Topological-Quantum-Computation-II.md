---
title: >
   Introduction to Topological Quantum Computation: Braiding Anyons
categories: Quantum-computation Topology-quantum-computation
tags: Quantum-computation Topological-quantum-computation
keywords: Braiding Anyon Qubit Moore's-Law
status: Writing
description: This is a series of posts on topological quantum computations. The aim of this series is to work my way to understanding the diagrams of "strands" widely used in the field. This post describes TQC as braiding anyons.
---

$$
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\K}{\mathbb{K}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\op}{\hat}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
\newcommand{\Eqn}[1]{\text{(Eqn. }\ref{#1}\text{)}}
\newcommand{\vard}{\mathfrak{d}}
\newcommand{\vare}{\mathfrak{e}}
\newcommand{\e}{\mathrm{e}}
\newcommand{\i}{\mathrm{i}}
\newcommand{\norm}[1]{\left\vert{#1}\right\vert}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\comm}[2]{\left[ #1 , \, #2 \right]}
\newcommand{\slot}{\,\cdot\,}
\newcommand{\lact}{\triangleright}
\newcommand{\ract}{\triangleleft}
\newcommand{\id}{1\!\!\!\mathsf{\phantom{I}I}}
\newcommand{\la}{\mathfrak}
\notag
$$

# Anyons

## Fermions and Bosons

Fermions and Bosons are familiar concepts in statistics. Statistics means that more than one particle is present in the system. When exchanged, Boson system's wavefunction remains unchanged while Fermion system's wavefunction gains an additional  minus sign. The above results are the solutions of the equation $\lambda^2=1$. Because obviously, exchange two particles twice is the equivalent to no exchange.

## Anyons

When we consider particles on $2+1$ dimension, we find that things are quite different. 

Twice exchange of two particles is equivalent to circling one particle around another. When the space is $3$-dimensional, the path can shrink to a single point as is shown below. That gives the equation $\lambda^2=1​$. 

While on $2$-dimensional space, the light-blue path cannot shrink to the dark-blue path since they are topologically inequivalent. That means $\lambda^2\neq1$. Such encircling can result in a complex phase factor or even a unitary matrix. The former case it's called Abelian anyons, while the latter called non-Abelian anyons.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/Loop-on-Lattice.png" alt="Loop shrink on 3d and 2d-Lattice" width="60%">

## Anyons as Quasi-particles

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/FluxTubes.png" alt="Loop shrink on 3d and 2d-Lattice" width="70%">

A feasible realization of such anyons is to use quasi-particles on $2$D lattice, by either introducing defects or use flux tubes. The braiding is therefore realized by the motion of the various order parameter defects (vortices, domain walls, etc.) or the flux tubes.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/ZeroModes.gif" alt="Zero modes moving on a 2d lattice" width="70%">

Such braiding can also be realized on a $1​$D nanowire as long as there is a T-junction as in[^1][^2].

# Braiding Diagrams

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/Braiding2plus1.png" alt="Braiding scheme" width="70%">

To provide a more intuitive understanding of such braiding, 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/BraidingdiagramExample1.png" alt="Braiding diagram example 1" width="70%">

# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---
[^1]: Alicea, J., Oreg, Y., Refael, G., Von Oppen, F., & Fisher, M. P. (2011). Non-Abelian statistics and topological quantum information processing in 1D wire networks. *Nature Physics*, *7*(5), 412.
[^2]: Kitaev, A. Y. (2001). Unpaired Majorana fermions in quantum wires. *Physics-Uspekhi*, *44*(10S), 131.