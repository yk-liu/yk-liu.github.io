---
title: |
  Introduction to Topological Quantum Computation: Crash Course on Knots Theory
categories: Topological-quantum-computation Knot-theory 
tags: Topological-quantum-computation Knot-theory Braiding Jones-Polynomial modular Kauffman-bracket
edit: 2019-05-24
status: Writing
description: This is a series of posts on topological quantum computations. To address the reason why we introduce such "strange-looking" equations to calculate Jones polynomials, we have to know the history of knot theory, and understand how the pioneers came up with their ideas. 
---

$$
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
\newcommand{\Eqn}[1]{\text{Eqn. (}\ref{#1}\text{)}}
\newcommand{\set}[1]{\left\lbrace {#1}\right\rbrace}
\newcommand{\vac}{ {1\!\!1}}
\newcommand{\la}{\mathfrak}
\newcommand{\anti}{\overline}
\newcommand{\Id}{\mathbb I}
\newcommand{\e}{\mathrm{e}}
\newcommand{\xeq}[1]{\substack{\text{#1}\newline =}}
\newcommand{\rc}{\dashv}
\newcommand{\lc}{\vdash}
\newcommand{\int}{\mathbb{ Z}}
\newcommand{\Reals}{\mathbb{R}}
\notag
\require{cancel}
$$

This post mostly follows [^Kauffman-knots].

# Overview of the Strangeness of Knots Theory

Knots are simple and mundane objects everyone knows from their daily life. Tying is easy and untying a knot can be challenging. What is more challenging is to tell if a knot is "the same" as another one, namely the classification of knots. As is shown by the magic tricks in the beginning of Dr. Kauffman's lecture at KITP titled [Revolutions in Knots, Braids and Physics, Louis Kauffman](http://online.kitp.ucsb.edu/online/friends/kauffman/), our intuition can not be trusted. Below is an example of a nasty unknot (Example taken from[^knotbook]).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/unknot-equivalence.png" alt="deformation of unknot" width="80%">

The first thing is the introduction of polynomials to the knots. Since the study of knots and its deformations are clearly in the realm of topology, we seek topological invariance to characterize knots. In other words, we assign an *entity* (not necessarily a *quantity*) to each knot. If two knots are assigned to different entities, then they are not the same. As some might have known, such entities can emerge in the form of a simple number (Chern number), or a group (Homology groups), which are quite straight forward to understand. I mean, topology is about deformation and transformation, and I understand that you can assign a group to a manifold to characterize its symmetry etc. But what does a polynomial - not a polynomial appeared in an equation such as $x^2-2x+1=0$, but a dangling, lonely polynomial $x^2-2x+1$ - has to do with knots?

The second thing, which is even weirder, is that to calculate (some) polynomials, equations looks like doodles are introduced. Such equations are "defined", as is pointed out by a good number of textbooks, which is simply beyond me. First of all, how am I supposed to read the equation? Two crossing arcs is the sum of two different configurations of non-intersecting arcs? Second of all, what does the bracket doing in the equation? Should I interpret the equation as some sort of superposition? Is a knot a quantum state that can be superposed or is it an observable that can be sandwiched by state vectors? What are these state vectors?

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/strange-skein-relation.png" alt="stange-looking skein relations" width="40%">

Such questions haunts me when I was reading Pachos' book of TQC, and other books in TQC doesn't seem to be of much help either. "This is the definition", as is always the case when something is hard to explain. I spent a good half of a day trawling the introductory materials in mathematics departments I could find on Google, and I think I have a good answer to the questions above.

# Naïve Knot Theory

## "Strings" Theory in 1867

In 1860s, Lord Kelvin, like all giants in science, was pondering about a theory that could explain

- The stability of atoms.
- The variety of atoms, as shown by the periodic table of elements.
- The vibrational properties of atoms, as shown by their spectral lines.

One day he saw smoke rings of his physicist friend P.G. Tait[^smoke-rings], and was impressed by their stability, and vibrational properties of the smoke rings. He noticed how knots resembles atoms in many ways. In 1867, He presented a paper to the Royal Society of Edinburgh, in which he wrote:

> Models of knotted and linked vortex atoms were presented to the Society, the infinite variety of which is more than sufficient to explain the allotropies and affinities of all known matter.

Lord Kelvin's envision of atoms as tiny knots vortices of ether (like a knotted smoke ring, which has only been recently realized in lab[^knot-vortex]) is a very insightful discovery, since it's not that far from what we call string theory today, which envisions fundamental particles as vibrating strings.

> **Definition**:
>
> A **knot** is an entangled string with no open ends. A knot consists of a single string. A **link** consists of multiple strings. In this post these two words may be used interchangeably since how many strings are there is rarely our concern. A **strand** is a piece of the link that goes from one <u>undercrossing</u> to another with *only* (zero or more) <u>overcrossings</u> in between. The word "**string**" is reserved as a general pronoun for the mathematical abstraction of a rope.
>
> <img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/knot-link-strand.png" alt="knots links strands and strings" width="60%">
>
> A knot is drawn on a $2$ dimensional paper as a projection of a $3$ dimensional objects. In such projections, a crossing can only be produced from two strands, since we can always move away strands in a crossing with three or more strands. 

So Tait decided to find a "table of knots" and compare to Mendeleev's "table of elements". So he did. He made little progress with the enumeration problem until the start of a happy collaboration with Little and Kirkman. Tait spent 10 years of work on his list of knots and got up to 10 crossings. The work gets increasingly hard as there are more and more "crossings" on a knot. It's hard to tell if two knots are the same. He came up with a crossing index, which is the **minimal** crossings of a knot's planar projection. The crossing index is by definition a knot invariant. If two knots have different crossing number they are not the same.

History from[^ytb-alge-topo],[^ytb-David],[^Conway].

## Reidemeister's Play

The vortex theory of the atom soon disappeared, and physicians lost interests in the mathematical theory of knots, but mathematicians found the knots intrinsically beautiful objects to study and continued develop the theory independent of physical interest.

> Now it's interesting that the circle closes in the last decades for knots theory become very important in physics again due to it connection with QFT and string theory.

In 1920s, Reidemeister started to take a more formal path to tackle the problem of classifying the knots. He came up with the Reidemeister theorem [^Reidemeister-theorem] as a natural abstraction of "untying the knots", stating that two knots are topologically equivalent if and only if their projections may be deformed into each other by a sequence of the three moves shown below.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/three-Reidemeister-moves.png" alt="three Reidemeister moves" width="60%">

This theorem is the foundation of all knot theory. It has become the touchstone for all knot invariants, and has been the philosopher's stone in the conception of many knot invariants. Here is an example of two knots undergoing the Reidemeister moves ([Image source](http://math.oregonstate.edu/~garity/333S13/Notes/04_Section1_3.pdf)).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/amphichiral.png" alt="Reidemeister deformation" width="50%">

Although the Reidemeister theorem is a huge success in telling us how to deform a knot step by step, the theorem itself contains no information of how to simplify a certain knot. Making matters worse, given a diagram of an unknot to be unknotted, it might be necessary to make the diagram more complicated before it can be simplified. We call such a diagram a **hard unknot diagram**. A nice example of this is the Culprit. If you look closely, you’ll find that no simplifying type I or type II Reidemeister moves and no type III moves are available.[^Culprit]

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/Culprit.png" alt="Reidemeister moves complicate the Culprit then simplify it" width="50%">

A natural question arises: "Is the trefoil knotted at all?" Since we cannot exhaust the infinite moves on a knot, we are unable to make the conclusion that the trefoil is knotted simply because *we can't find* a series of Reidemeister moves. For all we know, there might be a way to deform a trefoil to a unknot, we just didn't know yet. Of course a trefoil is knotted, the question is how to ***prove*** it. To prove trefoil is knotted, mathematicians came up with a knot invariant called the tri-colorability.

# Intuitive Knot Invariants: Tri-colorability

The most intuitive knot invariant is tri-colorability [^knotbook], which maps knots into the set $\set{\text{True}, \text{False}}$. 

A knot (or a link) is tri-colorable if each strand can be colored in one of three colors with the following rules:

1. At least two colors are used.
2. At each crossing, either all three colors are present or only one color is present.

Here are tricolorings of a few knots ([Examples source 1](http://web.math.ucsb.edu/~padraic/ucsb_2014_15/ccs_problem_solving_w2015/Tricolorability.pdf), [Example source 2](https://apurvnakade.github.io/courses/2017AlgTop/docs/Knot Colorability.pdf)).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/tricoloring.png" alt="tricoloring knots" width="60%">

You can try it yourself, but you can never tri-color a figure 8 knot. It can be shown that all four strings labeled from $1$ to $4 $ need to be in different colors. Although it might not be easy to show that all tri-colorings of some other knot is illegal, it's very easy to show that **the unknot is not tri-colorable**, while the trefoil is tri-colorable. We found from deforming the tricolored trefoil that tri-colorability is unaffected by a deformation. If we can show that tri-colorability is a knot invariant, we will be able to prove that there are at least two types of knots, one of them is tri-colorable, the other is not. The unknot and the trefoil belongs to different types.

## Proof of Tri-colorability is a Knot Invariant

To prove that tri-colorability is a Knot Invariant, all we need to do is to prove that tri-colorability is unaffected by the three Reidemeister's moves. 

The first Reidemeister's move is the straightening of a twisted string. Since the twisted string self-intersecting, it can only be in one color.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-1-tricolor.png" alt="tri-colorability and the first Reidemeister move" width="40%">

The second Reidemeister's move's tri-coloring has two cases drawn below. Either the two strings are of the same color, which is the trivial case, or the two strings contains all three colors.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-2-tricolor.png" alt="tri-colorability and the second Reidemeister move" width="60%">

The third Reidemeister's move's tri-coloring has three nontrivial cases as is shown below. The trivial case is omitted since all three stings has the same color. The cases are classified by the color ordering of the vertical string as is indicated on the right of each case. Notice that colors at end of each string (circled in black) is un changed. The second scenario of the third Reidemeister's move is merely a $60^\circ$ rotation of the first scenario.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-3-tricolor.png" alt="tri-colorability and the third Reidemeister move" width="45%" >

Thus we have proven that the three Reidemeister's move preserves tri-colorability. In other words, tri-colorability is not affected by continuous deformations or "un-tying of the knots", and hence a knot invariant.

## Consequences if Tri-colorability

Since a trefoil can be tri-colored and a unknot can't, and tricolorability being a knot invariant, we have proven that the trefoil is indeed knotted. Which is the perfect example of how mathematicians go out of their ways to prove things that does not require proving. However, such tri-colorability can be generalized to $N$-colorability.

# Algebraic Knot Invariants 

Remember the figure 8 knot. It cannot be tri-colored, but can be quad-colored. Is quad-colorability a knot invariant? It is also natural to ask if $N$-colorability is a knot invariant. To study $N$-colorability, clearly we cannot rely on drawing colorful diagrams of knots. For we will soon run out of distinguishable colors, and even coloring Reidemeister's moves will become impossible. 

Instead of colors we will use labels such as $1,2,3,\cdots$ on the diagram and replace the coloring rule by a method for combining these labels. Let's see can we deduce from the tri-coloring scheme. We will define $N$-coloring as a map from strands of a knot to the a set of $N$ integers. If we label the strands as $x_1,x_2 ,\cdots$, the map can be written as: $\chi:\set{x_1,x_2,\cdots}\rightarrow\set{1,2,3,\cdots,N}$ 

## Tri-coloring Revisited

We use $\set{1,2,3}$ to denote three colors. Recall the definition of tri-colorability:

> A knot (or a link) is tri-colorable if each strand can be colored in one of three colors with the following rules:
>
> 1. At least two colors are used.
> 2. At each crossing, either all three colors are present or only one color is present.

We can translate the first requirement as there are at least two elements in the set $\set{1,2,3}$. The second requirement can be translated as 

$$
\begin{cases}
a\times a=a, \quad \text{only one color is present} \newline 
a\times b=c, \quad \text{all three colors are present}\newline  
a\times c=b, \quad \text{all three colors are present}
\end{cases}
$$

where $\times$ is read as "cross", as the string of color $a$ crosses string of color $b$. 

A careful inspection on the following diagram reveals that we need to make a further distinction between an over-crossing and an under-crossing, since the two $a\times b$ are in different colors and cannot be the same, as is illustrated below. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/quandle-over-and-under.png" alt="quandle and crossings" width="30%">

Also to spare ourselves from writing redundant equations as "$a$ goes over $b$ does not change color" such as $a\boxed{\text{cross over}} b=a$, we will only make distinction between a left-handed or a right-handed crossing, and leave the upper string unchanged. 

We assign to each string in a knot an arrow in a self-consistent way. If the cross product of the directional vector of the upper string and that lower string is **outward**-perpendicular to the page, we call the crossing right-handed, otherwise it's left-handed. Or you can orient the lower string upward and the direction of the upper string determines it's handedness. We use $a∗b$ to denote that string $a$ is right-handed crossed by $b$; and $a\#  b$ to denoted the other case as in [^Kauffman-knots]. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/quandle-hand.png" alt="quandle and handedness of crossings" width="30%">

We can test out our labeling system in tri-color examples. All the crossing of the trefoil shown below are left-handed, hence

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/quandle-trefoil.png" alt="quandle of trefoil" width="20%">
$$
\begin{array}{}
\enclose{circle}{1}: c\#  a=b,\quad \text{$c$ goes under $a$, turns into $b$.}\\
\enclose{circle}{2}: a\#  b=c,\quad \text{$a$ goes under $b$, turns into $c$.}\\
\enclose{circle}{3}: b\#  c=a,\quad \text{$b$ goes under $c$, turns into $a$.}\\
\end{array}\\
$$

A further look at the trefoil soon reveals that $\#  $ is not associative. The same is true for $*$.

$$
a\# (c\# b) = a\# a = a \\
(a\# c)\# b = b\# b = b
$$

Now let's translate the color rules to label rules using the Reidemeister's Theorem. 

## Obtain the $N$-color Rules

In this section, we are using $N$ colors (labels), denoted as $\set{a,b,c,d,\cdots}$. Although there are only $26$ letters, we imagine that we will never run out of characters, also because $a,b,c$ is always nicer to read than $a_1,a_2,a_3$. Of course once we have generalized to $N$ colorability, we don't have $a\times b=c$ or $a\# b=c$ as in the last section any more, instead we have $a \#   b = x$. To avoid loss of generality, $a\#  b $ is often left un-evaluated as a "color" as a whole.

The first Reidemeister's move is evident. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-1-N-color.png" alt="N-colorability and the first Reidemeister move" width="60%">

We have 
$$
a\# a =a , \quad a* a = a
$$
---

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-2-N-color.png" alt="N-colorability and the second Reidemeister move" width="60%">

The second Reidemeister's move is a little complicated. I used more than three colors to color code it to avoid confusion (since $b\# a\neq a*b$). The Reidemeister's theorem requires that the corresponding ends have the same color.

$$
(b\# a)*a = b \\
(a*b)\# b = b
$$

From these equations, $\#  $ and $*$ looks like inverse operations to each other, which is discussed in detail in Chapter 3 in [^Alge-Knots].

---

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/R-move-3-N-color.png" alt="N-colorability and the third Reidemeister move" width="60%">

In the same manner we can get results form the third Reidemeister's move. We require again that corresponding ends have the same color. The arrows on the diagram were carefully chose to obtain 

From the above diagram, we have

$$
(a\# b)\# c = (a\# c)\#  (b\# c)
$$

and the mirror diagram would give the equation

$$
(a*b)*c = (a*c)*(b*c)
$$

---

Summarizing, we have an algebraic system satisfying these rules (correspond to three Reidemeister's moves respectively):

1. $a*a=a$ and $a\# a=a$ for any $a$
2. $(a * b)\# b = a$ and $(a\# b) * b = a$ for any labels $a$ and $b$.
3.  $(a * b) * c = (a * c) * (b * c)$ and $(a\# b)\# c = (a\# c)\#  (b\# c)$ for any labels $a$, $b$, and $c$. 

## Color Rule as Modular System

### A Linear Color Rule

The upshot is that we could use numbers $\set{1,2,3,\cdots,N}$ to represent $N$ different colors, and feed these numbers in the law of $*$ and $\#  $. Let's suppose that these two operations are liner, that is 

$$
\begin{align*}
a * b &= x^* a + y^* b\\
a \# b &= x^\# a+y^\# b
\end{align*}
$$

Using the three laws it's easy to find out that

$$
\begin{array}{crlrl}
\text{law 1: } & x^* +y^* =1, &x^\# +y^\# = 1\\
\text{law 2: } & x^*x^\# =1, &x^\# x ^* = 1\\
\text{law 3: } & \begin{cases}x^*y^*=y^*x^* \\ y^*(x^*+y^*-1)=0 \end{cases} , &\begin{cases}x^\# y^\# =y^\# x^\#  \\ y^\# (x^\# +y^\# -1)=0 \end{cases}\\
\end{array}
$$

Starting from the law 3. If $y^*=0$ or $y^\# =0$, then we could only use one color since $a*b=a\# b = a$, $\forall a\in \set{1,2,\cdots,N}$. Hence the non-trivial linear color rule would be 

$$
a * b =t a + (1-t) b \\
a \# b = \tfrac{1}{t} a+(1- \tfrac{1}{t}) b
$$

Note that strangely law 3 does not provide much useful information, I think it's partly due to our color law is linear. 

### Why a Linear Color Rule Is Incorrect

To give an example of the aforementioned linear color rule, consider a special kind of color rule such that $a ∗ b = a\# b$, namely set $t=1$. We have 

$$
a * b = a\# b = 2b-a
$$

Put the law into the relationships we obtained in [`Tri-coloring Revisited`](#tri-coloring-revisited), we have

$$
a*b =2a-b = c\\
b*c =2b-c = a\\
c*a= 2c-a = b \label{tri-color-modul}
$$

The above equations lead disastrously to $a=b=c$. This means that our **linear system simply does not work**. Which should have been obvious in the last chapter, but is more evident only after we are working with actual numbers. If we use $\set{1,2,3,\cdots,N}$ to represent the numbers, we would run into the problem as is described below.

$$
\begin{array}{rccccr}
&\color{red}\text{red} & crossing &\color{blue}\text{blue} & gets & \color{orange}\text{orange} \\
\text{instead of :}&1&*&2&=&3\\
\text{we have :}&1&*&2&=&2\times 1-1=0
\\
\end{array}
\\
\begin{array}{rccccr}
& \color{orange}\text{orange}  & crossing &\color{blue}\text{blue} & gets & \color{red}\text{red}\\
\text{instead of :}&3&*&2&=&1\\
\text{we have :}&3&*&2&=&2\times 3-2  = 4
\end{array}
$$

It's obvious that the discrepancy gets worse if we keep going. Color $\color{red}\text{red}$ would go from $1$ to $4$ to $7$ ..., and $\color{orange}\text{orange}$ from $3$ to $0$ to $-3$... Eventually we will go to $\pm \infty$ if we keep updating the numbers. 

### Introduction of Modular System on Tri-colorability

The minimal modification we can make to a linear color rule is making it a modular system. We want $1,4,7,\cdots$ to represent the same color, $3,0,-3,\cdots$ to represent another one. The obvious solution is take the module of $3 $ for $a$, $b$ and $c$. 

In other words, we represent colors using $\int/3\int=\set{1,2,3}$ to represent the numbers, and modify the rules to be 

$$
a * b = a\# b = 2b-a \mod 3
$$

which is hinted by $\Eqn{tri-color-modul}$, if we sum all of them as $3(a+b+c)=0$.

### How Many Colors for Figure 8 Knot?

Recall the definition of  tri-colorability:

> 1. At least two colors are used.
> 2. At each crossing, either all three colors are present or only one color is present.

Now for $N$-colorability, the second law is not strong enough since we require a specific arithmetic rule or an algebra between the colors, namely $a*b=c$, where $c$ is uniquely defined via $2b-a$, **any other** $d$ does not work.

But the first rule needs to change as well. Although we can color the figure 8 knot with only $4$ colors, we actually need $5$ colors as $\int/5\int$ to choose from. You can check the equations for yourself [^Kauffman-knots]. Hence the definition of $N$-colorability is more complicated than "how many colors we need to color a knot". 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/figure-8-knot-coloring.png" alt="figure 8 knot coloring" width="30%">

Unfortunately, this is as far as I intended to write. If you are interested, I strongly recommend reading [^Kauffman-knots], where many useful literature were referenced as Dr. Kauffman vividly describe this fascinating subject. Here is a paragraph from [^Kauffman-knots] showing how vastly the idea of "coloring" is connected to other fields of knot theory:

> The coloring (labelling) rules as we have formalized them can be described as axioms for an algebra associated with the knot. This is called the **quandle**. It has been generalized to the **crystal**, the **interlock algebra**, and
> the **rack**. The quandle is itself a generalization of the fundamental group of the **knot complement**. 

# Polynomials as Knot Invariants

I will keep this chapter as short as possible, since this chapter's purpose is to give a introduction to 

1. How did polynomials got introduced to knot theory, and
2. How this idea "inspired" many other polynomials.

I try to give my reasons for why some of the following definitions are made, but that's purely my speculation. Despite my effort in finding a easy-for-undergrad-to-understand paper, I could only conclude that the textbooks I have seen either took an axiomatic approach as was introduced by Conway, or a very mathematical way all the way from fundamental groups, or "from the abelianization of $\int [\pi_1 (\Reals^3/
K)]$"[^Alex-poly-talk]. If you are interested, you can find out more in the [`Further Reading`](#further-reading) section.

So here is my guess on how Alexander came up with his idea: A knot's property is actually described by the arrangements of two types of crossings (left-hand and right-hand) on the $2$-D plane. So you can basically make a table to characterize a knot diagram.

Since $n$ crossing will divide the plane into $n+2$ regions, you write down the following table

|      | region 1 | ...  | region $n$ |  region $n+1$  | region $n+2$ |
| ---- | -------- | ---- | ---------------- | ---- | ---- |
| crossing 1 |          |      |                  |      |  |
| crossing 2 |          |      |                  |      |  |
| ... |          |      |                  |      |  |
| crossing $n$ |          |      |                  |      |  |

and fill in the relationships between the crossings and regions. For example, region $r_i$ is the upper-right piece of a right-handed crossing $c_k$. You can choose different notations of these regions, but Alexander found out a way to label these crossing (I assume he got the idea from the Seifert Surface) such that the above table can be turned into a $n\times (n+2)$ matrix [^Ap-intro]. 

A good candidate of a knot invariant would be the determinant of the matrix since it evolves all the entries (unlike the trace) and is invariant in unitary transformations. But the matrix is not a square matrix. Alexander further found out that if you remove any two columns representing neighboring regions from the matrix, the determinant is indeed a knot invariant. 

Alexander found out in his paper that the Alexander polynomial can be written in a recursive fashion listed in a chapter titled "Miscellaneous theorems". Conway (whose name you could have heard from [the game of life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)) rediscovered the relationship from another point of view, as the "skein relations" 30 years later [^Conway]. 

The idea of the skein relation is to change the type of one crossing of a diagram and see what effect it has on the polynomial. In the diagram below the polynomials are represented by the bracket or $P()$. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-05-23-Crash-Course-on-Knots-Theory/assets/strange-skein-relation.png" alt="stange-looking skein relations" width="40%">

Conway's idea was "to consider knot invariants not as maps of the set of knots to the set of polynomials (for instance), but as maps from some sort of space of knots, locally characterized by how they behave on knots in 'close proximity'. "[^SE] Starting from a knot-diagram and keep using the skein relations we will eventually arrive at a bunch of unknots. Define the unknot's polynomial as 1, the polynomial of the original diagram can be obtained. 

> In the summer of 1982, Vaughan Jones was presenting a lecture on von Neumann algebras in Geneva. At the end of his talk Didier Hatt-Arnold, a graduate student in the audience, suggested that the relations in his algebraic structures were similar to those in the braid groups. Soon afterwards, Jones worked out how to construct representations of the braid groups into his algebras, but he did not immediately recognize their significance. The following summer, Jones realized that the image of B5 under one of the representations was the projective symplectic group PSp(4, Z3), the finite simple group of order 25 920. Thinking that this might be of some interest, Jones arranged to discuss his representations with Joan Birman\
>
> Jones travelled to New York in May 1984. He and Birman soon showed that this was not just another technique for deriving the Alexander polynomial. One simple test proved that this invariant was new: it could distinguish the left-handed and right-handed trefoils! Jones later established that his polynomial also satisfies a skein relation: 

What we need to know now is that this was a highly complicated history and an accidental discovery. However, such polynomial can be found by defining a new set of skein relations. This new type skein relation fueled the search for more polynomials by choosing different skein relations. Later the HOMFLY polynomial were quick discovered by choosing yet another skein relation. 

However, such skein relation remained largely as a mathematical trick for calculating the corresponding polynomials, without knowing "why this would work". Later Witten realized that the Jone's polynomial is relation to QFT, as according to the path integral formalism, particles may travel freely forward and backwards in time. Thus a particle confined in $2$-dimensional space can have a "knotted" trajectory in $(2+1)$ space-time. The knottedness is related to Chern-Simons theory and it turns out that the amplitude of a trajectory is related to whether the trajectory is knotted or not. This point of view gave birth to the Kauffman bracket, which we should discuss in detail below. For more information, you can read [^Ap-physics] and [^Witten-physics].

Before we do that, I would like to mention that Alexander polynomials can be considered as generalized "quandle". The Alexander polynomial is "an algebraic modular system" according to [^Kauffman-knots] by using the generalized coloring rules
$$
a * b =t a + (1-t) b \\
a \# b = \tfrac{1}{t} a+(1- \tfrac{1}{t}) b
$$

# Jone's Polynomial: Knots and Physics

## discovery of Jone's Polynomial



>  From 9.2 of[^knots-and-links] which took a definitive approach.



(You might ask, are there any other skein relations that gives rise to new polynomials? Yes, the HOMPFLY-polynomial.) 

The theory was complicated, but the simplest way to define the Jones polynomial is a recursive definition due to Louis Kauffman using the Kauffman bracket skein relation.

Let's take a hypothetically route of history: how would the Jone's polynomial be discovered if not by Jone himself?

### Strand and spin

First let's see Pachos: braiding and bands and spins.

### Knots and spin

See Chapter 6 of [^knots-twist], which did not gave explanation of the coefficients.

### How did Kauffman do it?

Instead Kauffman [^Kauffman-knots] did gave a detailed explanation in `8 Knot Amplitudes` of [^Kauffman-knots] on how he obtained such coefficients.

# Further Readings

Time-line of history: Collberg, E. (2017). A brief history of knot theory. *Página consultada a*, *8*.

[Daniel Moskovich](https://mathoverflow.net/users/2051/daniel-moskovich), How to motivate the skein relations?, URL (version: 2010-04-06): https://mathoverflow.net/q/20505

Fun tricks with knots. Plus a history Kauffman's lecture at KITP: [Revolutions in Knots, Braids and Physics, Louis Kauffman](http://online.kitp.ucsb.edu/online/friends/kauffman/).

NJ's brief history of knots: <https://www.youtube.com/watch?v=KYddgeiyLJ8

YouTube Video [Tying Things Together: Knots in Maths, Physics and Biology' - Dr David Skinner](https://www.youtube.com/watch?v=uvsQUANjHB8). factorizing and knot: jones polynomial similarity: 21:36

Witten's talk <https://www.youtube.com/watch?v=cuJY14BYac4>

Knot theory and CHern simons, probably not very useful later. https://www.youtube.com/watch?v=8wWvUJ6qJx0

Jones's intro to Jones Polynomials. <https://math.berkeley.edu/~vfr/jones.pdf> Jones, V. F. (2005). The Jones polynomial. *Discrete Math*, *294*, 275-277.

A very mathematical way of introducing the tri-colorability as quandles, keis, etc. : Quandles: An Introduction to the Algebra of Knots

Knots and "universe" Kauffman, L. H. (2006). *Formal knot theory*. Courier Corporation.

Nice intro but lacks explannation of Jones: [^knotbook]

<big>**Knots on a Torus**</big> Kauffman, L. H. (1998). Virtual knot theory. *arXiv preprint math/9811028*.<http://homepages.math.uic.edu/~kauffman/VKT.pdf> 

>  Might be important when calculating braiding on PBC

# Acknowledgment





---

[^knotbook]:  Adams, C. C. (2004). *The knot book: an elementary introduction to the mathematical theory of knots*. American Mathematical Soc..
[^smoke-rings]: <https://www.popmath.org.uk/exhib/pagesexhib/aether.html>
[^ytb-David]: [Tying Things Together: Knots in Maths, Physics and Biology' - Dr David Skinner](https://www.youtube.com/watch?v=uvsQUANjHB8)
[^ytb-alge-topo]: [Knots and surfaces I - Algebraic Topology - NJ Wildberger](https://www.youtube.com/watch?v=KYddgeiyLJ8)
[^Conway]:  Conway, J. H. (1970, January). An enumeration of knots and links, and some of their algebraic properties. In *Computational problems in abstract algebra* (pp. 329-358). Pergamon. [Retriving link](https://www.maths.ed.ac.uk/~v1ranick/papers/conway.pdf).
[^Alexander]: Alexander, J. W. (1928). Topological invariants of knots and links. *Transactions of the American Mathematical Society*, *30*(2), 275-306. [Retriving link](https://www.ams.org/journals/tran/1928-030-02/S0002-9947-1928-1501429-1/S0002-9947-1928-1501429-1.pdf).
[^Kauffman-knots]: Kauffman, L. H. (2005). Knots. *Geometries of Nature, Living Systems and Human Cognition,* 131-202. doi:10.1142/9789812700889_0003. [A better typeset version](http://homepages.math.uic.edu/~kauffman/Knots.pdf).
[^Reidemeister-theorem]: <https://www.encyclopediaofmath.org/index.php/Reidemeister_theorem>
[^Culprit]: Henrich, A., & Kauffman, L. H. (2010). Unknotting unknots. *arXiv preprint arXiv:1006.4176*.
[^Alge-Knots]: Elhamdadi, M., & Nelson, S. (2015). *Quandles* (Vol. 74). American Mathematical Soc..
[^Ap-intro]: Collins, J. (2007). The Alexander Polynomial The woefully overlooked granddaddy of knot polynomials. [Retrieving link](http://infohost.nmt.edu/~starrett/Fall2014/TopologyOfChaos/KnotTheory/GeomClub.pdf)
[^knots-twist]:Sossinsky, A. B. (2002). *Knots: mathematics with a twist*. Harvard University Press.
[^knots-and-links]: Cromwell, P. R. (2004). *Knots and links*. Cambridge university press.
[^knot-vortex]: Kleckner, D., & Irvine, W. T. (2013). Creation and dynamics of knotted vortices. *Nature physics*, *9*(4), 253.
[^Alex-poly-talk]: <http://www.math.toronto.edu/ivahal/MGSA%20talk%20The%20Alexander%20polynomial.pdf>
[^SE]: [Daniel Moskovich](https://mathoverflow.net/users/2051/daniel-moskovich), How to motivate the skein relations?, URL (version: 2010-04-06): https://mathoverflow.net/q/20505.
[^AP-physics]: Kauffman, L. H., & Saleur, H. (1991). Free fermions and the Alexander-Conway polynomial. Communications in mathematical physics, 141(2), 293-327.
[Witten-physics]: Witten, E. (1989). Quantum field theory and the Jones polynomial. Communications in Mathematical Physics, 121(3), 351-399.

