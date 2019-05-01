---
title: |
  Introduction to Topological Quantum Computation: Braiding Anyons
categories: Topological-quantum-computation
tags: Anyon-Braiding Topological-quantum-computation
keywords: Braiding Anyon Fermion Boson
status: Writing
edit: 2018-04-19
description: >-
  This is a series of posts on topological quantum computations. The aim of this
  series is to work my way to understanding the diagrams of "strands" widely
  used in the field. This post describes braiding anyons.
comments:
  - author:
      type: full
      displayName: sheqi
      url: 'https://github.com/sheqi'
      picture: 'https://avatars3.githubusercontent.com/u/8046255?v=4&s=73'
    content: Super cool posts !
    date: 2019-04-14T14:53:32.307Z
  - author:
      type: github
      displayName: yk-liu
      url: 'https://github.com/yk-liu'
      picture: 'https://avatars1.githubusercontent.com/u/31454695?v=4&s=73'
    content: '&#x1F604; Thanks!'
    date: 2019-04-14T15:48:36.733Z

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
\newcommand{\vac}{1\!\!\!\mathsf{\phantom{I}I}}
\newcommand{\la}{\mathfrak}
\notag
$$

# Anyons

## Fermions and Bosons

Fermions and Bosons are familiar concepts in statistics. Statistics means that more than one particle is present in the system. When exchanged, Bosonic system's wavefunction remains unchanged while Fermionic system's wavefunction gains an additional minus sign. The above results are the solutions of the equation $\lambda^2=1$. Because obviously, exchange two particles twice are equivalent to no exchange.

## Anyons

When we consider particles on $2+1$ dimension, we find that things are quite different. 

Twice exchange of two particles is equivalent to circling one particle around another. When space is $3$-dimensional, the path can shrink to a single point as is shown below. That gives the equation $\lambda^2=1$. 

While on $2$-dimensional space, the light-blue path cannot shrink to the dark-blue path since they are topologically inequivalent. That means $\lambda^2\neq1$. Such encircling can result in a complex phase factor or even a unitary matrix. The former case it's called Abelian anyons, while the latter called non-Abelian anyons.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/Loop-on-Lattice.png" alt="Loop shrink on 3d and 2d-Lattice" width="50%">

## Anyons as Quasi-particles

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/FluxTubes.png" alt="Loop shrink on 3d and 2d-Lattice" width="50%">

A feasible realization of such anyons is to use quasi-particles on $2$D lattice, by either introducing defects or use flux tubes. The braiding is therefore realized by the motion of the various order parameter defects (vortices, domain walls, etc.) or the flux tubes. The following gif (first and last frame last for $1.5$ second) shows that two lower zero modes are braided due to flux tubes' movement.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/ZeroModes.gif" alt="Zero modes moving on a 2d lattice" width="30%">

Such braiding can also be realized on a $1$D nanowire as long as there is a T-junction as in[^1][^2]. The process is like trying make a [three-point turn](https://en.wikipedia.org/wiki/Three-point_turn)(<img src = "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Three-point_turn.svg/266px-Three-point_turn.svg.pngon" alt="three-point-turn" width="7%">) on a narrow street using a T-intersection. 

<figure>
<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/T-junction.png" alt="Braiding on a T-junction nanowire" width="80%">
<figcaption>Braiding on a T-junction nanowire. Two anyons on the nanowire is mapped to the head and tail of the car. When the car is truned around, the two anyons are swaped, or braided.</figcaption>
</figure>
## A Note on the Lattice

To make the braiding topological rather than a simple permutation, the lattice need to have a non-trivial topological characteristic. In my understanding, such connection is made by Witten’s work which connected Chern Simons theory with the knot and link invariants of Jones and Kauffman (from[^3] in Section II.A.1).

# Fusion Rules and Braiding Rules

Here I will ignore how anyons can be realized on a particular system whether experimentally or in a toy model. That would be discussed in later posts. This post will focus on how these anyons can be manipulated and give desired results as a useful topological quantum computer. Anyons in our model permits the following manipulations.
1. Anyons can be created or annihilated in pairwise fashion. (Initialization and measurement)
2. Anyons can be fused to form other types of anyons. (manipulation and measurement)
3. Anyons can be exchanged adiabatically. (manipulation)

To define an anyon model, one first specifies how many distinct anyons there are. For completeness, this list must include a trivial label, $\vac$, corresponding to the vacuum with no anyons. The anyon model is then spanned by some number of particles

$$
M=\set{\vac,a,b,c,\cdots},\quad \text{$a,b,c,\cdots\,$ are distinct particles}
$$

As charges they must satisfy conservation rules.

## Fusion rules

When fused, there could be several possible outcomes, denoted as

$$
a\times b = \sum N_{ab}^c c
$$

For example, $\sigma\times \sigma = \vac + \psi$ means that two $\sigma$ anyons can be fused together, the result is either a $\psi$ particle, **or** (not **and**) a $\vac$ vacuum. Notice that $N_{ab}^c$ is not necessarily $1$, for two particles might fuse into more particles, for example, $\alpha \times \beta = 2\theta + 3\gamma$. That equation means an $\alpha$ anyon can fuse with a $\beta$ anyon, the result is either two $\theta$ anyons, <u>or</u> 3 $\gamma$ anyons. The result is **NOT**  two $\theta$ anyons, <u>and</u> 3 $\gamma$ anyons. 

The "or" statement is the part of the foundation of quantum computation.



## Braiding and Fusion Diagrams

To maintain consistency with Pachos' book[^4], evolution starts from the top.

{% comment %}

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/Braiding2plus1.png" alt="Braiding scheme" width="40%">

{% endcomment %}

To provide a more intuitive understanding of such braiding, A $\scriptsize\boxed{\substack{\nwarrow\,\,\, \nearrow \newline \diagup \newline \diagup\,\,\,  \diagdown }  }$ diagram represents a clockwise exchange, while a $\scriptsize\boxed{\substack{\nwarrow\,\,\,  \nearrow \newline \diagdown \newline \diagup\,\,\,  \diagdown }  }$ represents a counter-clockwise exchange.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/fusion-diagrams.png" alt="Braiding and fusion diagram examples" width="70%">

Two particles can also meet together or stem from vacuum (particle can be it's own anti-particle) like real particles, commonly denoted as $1$. However, diagrams like in (e) are not considered just yet.

# Braiding as Quantum Computation

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/braiding-QC.png" alt="Braiding as quantum computer" width="20%">



# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---
[^1]: Alicea, J., Oreg, Y., Refael, G., Von Oppen, F., & Fisher, M. P. (2011). Non-Abelian statistics and topological quantum information processing in 1D wire networks. *Nature Physics*, *7*(5), 412.
[^2]: Kitaev, A. Y. (2001). Unpaired Majorana fermions in quantum wires. *Physics-Uspekhi*, *44*(10S), 131.
[^3]: Nayak, C., Simon, S. H., Stern, A., Freedman, M., & Sarma, S. D. (2008). Non-Abelian anyons and topological quantum computation. *Reviews of Modern Physics*, *80*(3), 1083.
[^4]: Pachos, J. K. (2012). *Introduction to topological quantum computation*. Cambridge University Press.