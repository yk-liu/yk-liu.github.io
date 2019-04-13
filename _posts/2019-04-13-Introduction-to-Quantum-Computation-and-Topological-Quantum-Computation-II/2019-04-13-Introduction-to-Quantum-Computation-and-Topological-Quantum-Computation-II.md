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

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-04-11-Introduction-to-Quantum-Computation-and-Topological-Quantum-Computation-II/assets/Loop-on-Lattice.png" alt="Loop on Lattice" width="80%"> 

# Braiding DIagrams