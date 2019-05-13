---
title: |
  Introduction to Topological Quantum Computation:  Anyons Model
categories: Topological-quantum-computation
tags: Anyon-Braiding Topological-quantum-computation
keywords: Braiding Anyon Fermion Boson
status: Writing
edit: 2018-05-11
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
\newcommand{\anti}{\overline}
\notag
$$

# Properties of Anyons

## Fermions and Bosons

Fermions and Bosons are familiar concepts in statistics. Statistics means that more than one particle is present in the system. When exchanged, Bosonic system's wavefunction remains unchanged while Fermionic system's wavefunction gains an additional minus sign. The above results are the solutions of the equation $\lambda^2=1$. Because obviously, exchange two particles twice are equivalent to no exchange.

## Anyons' Statistical Property

When we consider particles on $2+1$ dimension, we find that things are quite different. 

Twice exchange of two particles is equivalent to circling one particle around another. When space is $3$-dimensional, the path can shrink to a single point as is shown below. That gives the equation $\lambda^2=1$, which is the case of Fermions and Bosons. While on $2$-dimensional space, the light-blue path cannot shrink to the dark-blue path since they are topologically inequivalent. That means $\lambda^2\neq1$. Such encircling can result in a complex phase factor[^7] rather than simply $\pm 1$.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Loop-on-Lattice.png" alt="Loop shrink on 3d and 2d-Lattice" width="50%">

## A Note on the Lattice

To make the braiding topological rather than a simple permutation, the lattice need to have a non-trivial topological characteristic. In my understanding, such connection is made by Witten’s work which connected Chern Simons theory with the knot and link invariants of Jones and Kauffman (from[^3] in Section II.A.1).

#  General Settings of Anyons Braiding

From now on, the existence of anyons are assumed, experimental detail of anyons ignored. This post will focus on how these anyons can be manipulated and give desired results as a useful topological quantum computer. Anyons in our model permits the following manipulations.

1. Anyons can be created or annihilated in pairwise fashion. (Initialization and measurement)
2. Anyons can be fused to form other types of anyons. (manipulation and measurement)
3. Anyons can be exchanged adiabatically. (manipulation)

In short, anyons are just like a "real world particle" such as electrons and positrons that can undergo creation, annihilation, and are free to move around each other. 

> Anyons do not decay, but the reverse process of fusion, called "fission" can be thought as decay of anyons.

## Properties of Anyons

To define an anyon model, the types of anyons must be listed. Anyons are characterized by there **topological charges**, sometimes this charge is simply called the label. There will always be a trivial particle called the vacuum, labeled as $\vac$. Notice that $\vac$ does not necessarily correspond to actual vacuum (as in "vacuum without anyons"). $\vac$ can represent a trivial particle such as a boson which is topologically trivial. 

The anyon model is denoted by a set of particles as
$$
M=\set{\vac,a,b,c,\cdots},\quad \text{$a,b,c,\cdots\,$ are distinct particles}.
$$
Sometimes the antiparticle of particle $a$ will be denoted as $\anti a$.

## Fusion Channels

Two anyons can fuse together, just like particles in a collider can violently collide and shatter into other particles, and possible results can arise. For example, two protons might collide to two $K^+$ particles, or two $\pi^+$ particles, denoted as $pp\rightarrow K^+K^+$, $pp\rightarrow \pi^+\pi^+$ respectively, along with many other possibilities. In high energy physics, a particular result is called a decay channel. To find out about a fusion channel, you can go to [PDG](http://pdg.lbl.gov) (thanks [Yifei](yf-liu.github.io) for teaching me that).

<figure>
<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Higgs.png" alt="Higgs boson decays to four muons" width="40%">
    <figcaption>
    Simulated data of two protons at 14 TeV "fused" to (eventually and mainly) four muons. The tracks of the other products of the collision are shown by lines and the energy deposited in the detector is shown in blue. Image creator: Lucas Taylor. (The famous Higgs boson is produced as an intermidiate product. For the orginal picture and description, see <a href="https://cds.cern.ch/record/39444">image source</a>.) </figcaption>
</figure>


Two anyons can also gently fuse together to give birth to new particle(s). Like in the case of LHC, there could be several possible outcomes for two fused particles. denoted as

$$
a\times b = \sum N_{ab}^c c.
$$

such that

$$
a\times b = b \times a \quad \text{and}\quad a \times \vac = a
$$

Adopting the term "decay channel" in high energy physics, a particular result of fusion is called a "fusion channel". 


### Interpretation of Fusion Equations

For example, $\sigma\times \sigma = \vac + \psi$ means that two $\sigma$ anyons can be fused together, the result is either a $\psi$ particle, **or** (not **and**) a $\vac$ vacuum. 

Notice that $N_{ab}^c$ is not necessarily $1$. Like in for two particles might fuse into more particles, for example, $\alpha \times \beta = 2\theta + 3\gamma$. 

> $\alpha \times \beta = 2\theta + 3\gamma$ means an $\alpha$ anyon can fuse with a $\beta$ anyon, the result is either two $\theta$ anyons, <u>or</u> 3 $\gamma$ anyons. The result is **NOT** two $\theta$ anyons, <u>and</u> 3 $\gamma$ anyons. 
>
> The notation of $\otimes$ and $\oplus$ is sometimes used to make such distinction, as is in [^6]. To make my life easier, I am going to stick to $\times$ and $+$. Just bear it in mind that $\times$ means fusion, not "times"; $+$ is a notation to list possible channels, not "plus".

We can think of fusion as a measurement in the sense that 

1. Fusion channels are mutually exclusive in the sense that you can only fuse to either one of the channel. There is no superposition in the expression $\sigma\times \sigma=\vac+\psi$. 
2. Repeated fusions of the same two anyons do not necessarily result in an anyon of the same type: the resulting anyons may be of several different types each with certain probabilities (determined by the theory). (See Sec. 2.2 of [^6])

## Braiding Rules

Below is a schematic diagram of three anyons (quasiparticles) braided on a $2$D lattice. To maintain consistency with Pachos' book[^4], evolution starts from the top.[^5] 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/braiding-animation.gif" alt="Braiding animation" width="70%">

A more abstract and simpler diagram is often used as below. A $\scriptsize\boxed{\substack{\diagdown\,\,\, \diagup \newline \diagup \newline \swarrow\,\,\,  \searrow }  }$ diagram represents a counter-clockwise exchange, while a $\scriptsize\boxed{\substack{\diagdown\,\,\,  \diagup \newline \diagdown \newline \swarrow\,\,\,  \searrow }  }$ represents a counter-clockwise exchange. When two lines meet together, two particles are fused together. The height indicates the order of fusion like in (a), $a$ and $b$ are fused first. Sometimes fusion are omitted to emphasize on the braiding, as is in (c). Since an antiparticle travelling forwards in time is indistinguishable from the corresponding particle travelling backwards in time, diagram as (e) is possible. However, I am not going to concern such situation in the near future.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/fusion-diagrams.png" alt="Braiding and fusion diagram examples" width="85%">

# Algebraic Relations Between Diagrams

## The Anyonic Hilbert Space

As you will see in the following sections, in $R$-matrices, the fusion states $\ket{ab;c}$ are just like actual wavefunctions of anyons: when exchanged, an additional phase factor arises. Such wavefunction of a quasiparticle is normally denoted as $\ket a \rightarrow \e ^{\imath \pi/n}\ket a$. While in $F$-matrices, such interpretation will be problematic. Of course you can see fusion states $\ket{ab;c}$ merely a fancy way to show an wavefunction of a quasiparticle $c$, whose phase factor is determined by it's origin, as $\e ^{\imath\varphi}\ket c=\ket{ab;c}$. But we further demand that the state $\ket{(a(bc);ae;d}$ and state $\ket{a(bc);af;d}$ are orthogonal, and there is a unitary transformation between two sets of basis $\set{\ket{a(bc);a\_;d}}$ and $\set{\ket{(ab)c;\_c;d}}$. Such requirement would force us to accommodate a tortured definition of such fusion state from quantum mechanics. 

The question remains unanswered. What are the states written as $\ket{ab;c}$, or even more fancily denoted as $\ket{\substack{a \quad b\newline \diagdown\diagup\newline \ \!\mid \newline c}}$? Are these states merely wavefunctions in quantum mechanics? The answer is no. But the answer to what exactly are these states are complicated.

Simulation-wise, $R$-matrices are easy to understand as extra phase, just as is in our naïve understanding. $F$-matrices are understood as a measurement as is described in [^8] along with detailed description toy models where various anyons are supported. (Reading [^8] is strong recommended.)

Theoretically speaking, such state is descried by [TQFT](https://en.wikipedia.org/wiki/Topological_quantum_field_theory)[^9] or [CFT](https://en.wikipedia.org/wiki/Conformal_field_theory)(in a foot note in[^10]). The reference is abstracted partially below. Pachos' book [^4] mentioned that such states are "a whole family of states of the microscopic system". 

> As already spoiled in the introduction, we want to construct a computer device out  of a topological quantum field theory and anyons. ... As it turns out, it is very convenient to extract  the relevant properties that are shared by all these models and formulate an abstract framework that allows for the most general treatment. ...The assignment ... and the representation... are the essential ingredients of a functor from the extended Teichmüller space of genus g surfaces with n punctures to finite dimensional complex vector spaces... that qualifies as a unitary topological modular functor (UTMF). The data of a UTMF is equivalent to a unitary modular tensor category (UMTC) which one might also call "abstract anyonic system", as it generalizes the notion of a physical system with anyon excitations. (pointing to *Bojko Bakalov and Alexander Kirillov. **Lectures on Tensor Categories and Modular Functors.** 2000.*)[^9]

> Description of fractional quantum Hall liquids the ground states can be described by conformal blocks, which form a basis of the modular functor. Conformal blocks are known to be represented by labeled fusion trees, which we refer to as fusion paths.[^10]

> After all, when the topological model is physically realized, the fusion states have to correspond to certain quantum states of the constituent particles. ... fusion state $\ket{ab;c}$ corresponds to a concrete state of the underlying microscopic system. When this state evolves adiabatically in order to fuse anyonic quasiparticles, the state that corresponds to quasiparticle $c$ results. All the states of the constituent particles along this time evolution that describe different positions of the $a$ and $b$ quasiparticles are equivalent since they correspond to the same fusion state. **As a conclusion the fusion states correspond, in general, to a whole family of states of the microscopic system.**[^4] 

To conclude, I don't have enough knowledge now to give a simple explanation about what these states are (if you do, please leave a comment), but I hope such 



## $F$-Matrices

### Superpositions in Fusion Diagram

To have a better understanding of $F$-matrices, we need to consider creating superposition in fusion diagrams.

As is stated in the last chapter, fusion is much like a measurement. If one two anyons are fused to a certain type of anyon, there will be no superposition between different fusion channels. Much like the total spin of two spin-half particles: once you have measured the total spin, everything is deterministic. The total spin is not in the superposition of both $0$ and $1$, it can only be either. There is no room for probabilities of different outcomes. However,  when there are more than two anyons present in the fusion, the information of intermediate result is not always determinant. Like to total spin of four spin-half particles. If the total spin is $1$, the total spin of the first pair and that of the second pair is in the superposition of two possibilities.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/two-and-three-anyons-fusion.png" alt="two and three anyons fusion" width="70%">

### $F$-Matrices

The fusion is associative, *i.e.*

$$
(a\times b)\times c = a\times (b\times c)
$$

The associativity is captured by the $F$-matrix. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Fmatrix.png" alt="F-matrix" width="50%">

For three anyons, there could be multiple anyons $f$ such that $a\times f=d$. If we list all the possible..

> This is just a different basis in the ***<u>same</u>*** two-dimensional space.[^3]

## $R$-Matrices

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Rmatrix.png" alt="R-matrix" width="40%">



##  Possible confusion explained

According to Pachos[^4], the Hilbert space of anyons is the space of states that corresponds to the fusion **process**. We assign a distinct state to the time evolution of two anyons that fuse to a certain outcome. Usually such a state vector of such anyonic system is represented as $\ket{ab;c}$, which means anyon $a$ and $b$ are fused into anyon $c$. The notation can get significantly more complex, such as $\ket{(ab)c;ec;d}$, which means $a\times b=e$, then $e\times c=d$. 






## Pentagon Equation

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Pentagon.png" alt="Pentagon Equation" width="40%">









### Hexagon equation

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Hexagon.png" alt="Hexagon equation" width="59%" align="bottom"><img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/Hexagon-morph.gif" alt="Hexagon equation" width="39%" align="bottom"> 







# Braiding as Quantum Computation

We need to create a Hilbert space in which quantum gates will act. 



<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-13-Introduction-to-QC-and-TQC-Braiding-Anyons/assets/braiding-QC.png" alt="Braiding as quantum computer" width="20%">



# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---

All rights reserved for this post.

---
[^1]: Alicea, J., Oreg, Y., Refael, G., Von Oppen, F., & Fisher, M. P. (2011). Non-Abelian statistics and topological quantum information processing in 1D wire networks. *Nature Physics*, *7*(5), 412.
[^2]: Kitaev, A. Y. (2001). Unpaired Majorana fermions in quantum wires. *Physics-Uspekhi*, *44*(10S), 131.
[^3]: Nayak, C., Simon, S. H., Stern, A., Freedman, M., & Sarma, S. D. (2008). Non-Abelian anyons and topological quantum computation. *Reviews of Modern Physics*, *80*(3), 1083.
[^4]: Pachos, J. K. (2012). *Introduction to topological quantum computation*. Cambridge University Press.
[^5]: Liu, Y., Liu, Y., & Prodan, E. (2019). Braiding Flux-Tubes in a Topological Lattice Model from Class-D. *arXiv e-prints* *64*(2), p. arXiv:1905.02457.
[^6]: Trebst, S., Troyer, M., Wang, Z., & Ludwig, A. W. (2008). A short introduction to Fibonacci anyon models. *Progress of Theoretical Physics Supplement*, *176*, 384-407.
[^7]: Nayak, C., Simon, S. H., Stern, A., Freedman, M., & Sarma, S. D. (2008). Non-Abelian anyons and topological quantum computation. *Reviews of Modern Physics*, *80*(3), 1083.
[^8]: Roy, A., & DiVincenzo, D. P. (2017). Topological quantum computing. *arXiv preprint arXiv:1701.05052*.
[^9]: Hahn, L. (2019). Topological Quantum Computing. Retrieved from <https://www.mathi.uni-heidelberg.de/~walcher/teaching/sose17/atqft/writeups/Lukas.pdf>

[^10]: Trebst, S., Troyer, M., Wang, Z., & Ludwig, A. W. (2008). A short introduction to Fibonacci anyon models. *Progress of Theoretical Physics Supplement*, *176*, 384-407.



