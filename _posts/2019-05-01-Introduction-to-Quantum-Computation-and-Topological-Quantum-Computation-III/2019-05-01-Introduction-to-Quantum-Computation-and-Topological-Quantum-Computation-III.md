---
title: |
  Introduction to Topological Quantum Computation: Side notes on simulations
categories: Topological-quantum-computation
tags: Topological-quantum-computation pitfall Classical-simulation-of-Quantum-computers
keywords: Braiding Anyon Fermion Boson
status: Writing
edit: 2018-05-01
description: >-
  This is a series of posts on topological quantum computations. The aim of this series is to work my way to understanding the diagrams of "strands" widely used in the field. This post started as introducing a pitfall of using Stern-Gerlach experiment as quantum computers, and end with a discussion on simulations of QC and TQC using classical computers.
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

This post contains debates inside my mind, after failing to write it concisely in plain paragraphs, I decided to write this post in the form of three characters, ***Smarty***, ***`Dummy`*** and ***<a>Sassy</a>***discussing. Some of the cited materials are selected to prove a point, but may contain more information than the speaker intended or conveyed.

# A Novice's Pitfall

---

***Smarty***: Quantum computing is quite complicated and can be hard to understand. If I make use of electrons in a Stern-Gerlach experiment as qubits and gates. like this:
<img src='./assets/incorrect-implementation-of-TQC.png' alt="an incorrect implementation of TQC" width="60%">
Then it will be very intuitive for me and the reader! 

---

***`Dummy`***: Then why hasn't anyone done so? This is perfect for heuristic educations as well as actual commercial/ experimental setups. Yet I looked up on the internet, but no one seemed to have made such construction. The only paper I found is about an implementation using Mach Zehnder Interferometer[^1] (see table 3. about how each gate is implemented).

---

 ***<a>Sassy</a>***: Hmm... while you guys are making your diagram, I am wondering how this computer works. You know, when you draw some diagram like that, you give an input, and an output is generated. How is that anything "quantum"? I mean, I could easily write any quantum circuit down and know the answer, without even running the actual machine.

---

***`Dummy`***: And wait! The above CNOT gate does not flip the second spin with respect to the first spin's orientation. 

---

***Smarty***: Of course! You guys are right! A CU gate ([controlled gate](https://en.wikipedia.org/wiki/Quantum_logic_gate#Controlled_(cX_cY_cZ)_gates)) is meant for creating entanglement. The above CNOT gate does not create any entanglement. 

---

***`Dummy`***: And fixing that would solve ***Sassy***'s problem. An entangled state can create superposition and thus cause uncertainty. You will then get a different result for each measurement, like in Glover's Algorithm, where you get the matching result with **<u>almost</u>** 100% chance. But you are still **not** 100% sure **that is it**.

---

***Smarty***: Ok, that's easy. I'll just measure the total spin of two spins. That should create a maximally-entangled state. Let me try something...

---

***<a>Sassy</a>***: But you guys haven't answered my question yet. Even if you came up with something like that, this circuit is still predictable, and thus deterministic. * writes on the note *

<img src='./assets/notes-on-modified-but-still-incorrect-implementation-of-TQC.png' alt="notes on modified-but-still-wrong implementation of TQC" width="80%">

---

***Smarty***: Okay, I seem to get stuck on this one. 

---

***`Dummy`***: Yeah, you are... see if you implement the above "circuit", if that's one, you will end up with a matrix (call that $\Sigma_Z$):
$$
  \Sigma_Z=\begin{pmatrix}
  1 &&&\\
  & \tfrac{1}{2} & \tfrac{1}{2} & \\
  & \tfrac{1}{2} & \tfrac{1}{2} & \\
  &&& 1
  \end{pmatrix}.
$$
 But  $\Sigma_Z$ is  not even an unitary matrix! 

---

***Smarty***: Oh I know! The apparatuses used in Stern-Gerlach is in fact apparatuses for **measurement**. A measurement is in no way represented by a **unitary** matrix. Thus my attempt to build a quantum computer using Stern-Gerlach experiment is bound to fail! That's why no one has done that before!

---

***`Dummy`***: Wow! Can't believe how we missed that! 

---

# A Merit in Failure

---

***<a>Sassy</a>***: But I am still wondering, even if you are working with a ***true*** quantum computer, like that [bluemix](https://quantumexperience.ng.bluemix.net/) in IBM, or other pioneer sites like [quantumplayground](http://www.quantumplayground.net/#/home), when you draw a circuit, the outcome is still pretty clear to me. I can look at any circuit and tell you what the outcome would be. You wouldn't need any quantum computers to do that. You just need a well-trained quantum programmer!

---

***Smarty***: ***<a>Sassy</a>***'s got a point. A program or a "code" should be deterministic, when you read a code, the steps should be clear, and ideally, can be carried out by "human computers". And IBM and other big companies are even providing "**coding languages**" for quantum computers, like [Qiskit](https://qiskit.org/) and [Q#](https://docs.microsoft.com/en-us/quantum/language/). And many [more languages](https://quantumcomputing.stackexchange.com/questions/12/are-there-emulators-for-quantum-computers)!

> As a rule-of-thumb, if a human could manually describe or imagine how something ought to operate, that imagining can be implemented on a Turing machine. Quantum computers fall into this category. (from [SE](https://quantumcomputing.stackexchange.com/questions/1/can-a-turing-machine-simulate-a-quantum-computer))

How is that possible?

---

***`Dummy`***: I agree with you guys. Remember quantum computers are just about solving evolutionary equations? You can even get your desired output by simply multiplying the matrices! You don't even need a code to do that!

---

***Smarty***: ***`Dummy`*** and ***<a>Sassy</a>*** inspired me. I looked up the internet and found out that in principle, you can do that. For $n$-qubits' simulation, the unitary matrix of a quantum gate would be $2^n\times 2^n$, which is a ***HUGE*** number. 

> - $n=30$ you will need at least $2^{33}=8GB$ of RAM. A publicly-accessible laptop is capable of doing it, but an old computer may not have a sufficient amount of RAM.
>
> - $n=40$ you will need at least $2^{43}=8TB$ of RAM. This is definitely out of reach for publicly-accessible things, you will need access to a computing server.
>
> - $n=50$ you will need at least $2^{53}=8PB$ of RAM. Some top-tier super-computers "only" have $2.8PB$ of RAM.
>
>   (from [SE](https://quantumcomputing.stackexchange.com/questions/5005/why-it-is-hard-to-simulate-a-quantum-device-by-a-classical-devices))

So our way of simulating a quantum computer will not work.

---

***`Dummy`***: So ***that***'s why people are saying quantum computers are efficient! I guess I didn't fully understand the meaning and implications that statement of `yk-liu`'s first post about "quantum computers are exponentially faster than classical computers".

---

# Simulation of TQC

---

***<a>Sassy</a>***: But what about topological quantum computers (TQC)? Like in many papers, the TQC is implemented by chemical potentials, domain walls or defects in topological insulators. A braiding is a (slow) change of the environment. That does not require those memories!

And if you read Chapter 4.3. Clifford Operators. in paper[^2], you will see that this is true!

---

***Smarty***: This could even mean [quantum supremacy](https://en.wikipedia.org/wiki/Quantum_supremacy)! All you need then, is a specially tailored computer that runs *ab-initio*  calculations really fast, and you run the calculations on that "simulation", and you will have quantum supremacy! You can factorize any prime number, as large as you want! RSA encryption is obsolete!

---

***<a>Sassy</a>***: Yey! There is even a code on GitHub called [QTop](https://github.com/jacobmarks/QTop). The claim: 

> QTop allows for the simulation of topologies with arbitrary code depth, qudit dimension, and error models. Currently, QTop features Kitaev quantum double models, as well as color codes in 3-regular planar tilings.

---

***`Dummy`***: Guys, that's quite a rosy picture, but I would like to ask one more time. Why hasn't anyone done that yet?

---

To be continued.




# Acknowledgement

This series is made possible by Dr. Emil Prodan's kind mentorship.

---
[^1]: ASarkar, Angik, T. K. Bhattacharyya, and Ajay Patwardhan. "Quantum Logic Processor: A Mach Zehnder Interferometer based Approach." *arXiv preprint cond-mat/0603695* (2006).
[^2]: Bloomquist, Wade, and Zhenghan Wang. "On topological quantum computing with mapping class group representations." *Journal of Physics A: Mathematical and Theoretical* 52.1 (2018): 015301.