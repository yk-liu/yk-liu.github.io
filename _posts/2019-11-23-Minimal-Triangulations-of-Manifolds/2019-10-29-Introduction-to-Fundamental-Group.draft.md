---
Title: Minimal Triangulations of (Orientable) Manifolds
edit: 2019-11-23
categories: Topology 
tags: Triangulation
status: Writing
description: The post deals with finding a minimal triangulation (minimal vertices, triangles or edges) of $2$-dimensional manifolds of negative genus. The sketch of the proof is in bold.
---

$$
\newcommand{\ket}[1]{\vert {#1} \rangle}
\newcommand{\bra}[1]{\langle {#1} \vert}
\newcommand{\braket}[2]{\left\langle {#1}\! \mid \!{#2} \right\rangle}
\newcommand{\Partial}[2]{\frac{\partial {#1}}{\partial{#2}}}
\newcommand{\emath}{\mathrm e}
\newcommand{\ceil}[1]{\left\lceil{#1}\right\rceil}
$$

In previous notes I draw a few triangulations of torus, Klein bottle and cylinder (which is topologically equivalent to a sphere), etc. The problem is to find a minimal triangulation (minimal vertices, triangles or edges). In this post, I am particular interested in minimal triangulation of $2$ dimensional manifolds, especially torus, $2$-torus, ...

This post will follow [Minimal triangulations on orientble surfaces](https://projecteuclid.org/download/pdf_1/euclid.acta/1485890083).

# Lower Bound

Let $T$ be the triangulation of $S$, with $\alpha_0$, $\alpha_1$, $\alpha_2$ be the number of vertices, edges and faces of $T$. By the Euler's theorem, 
$$
\alpha_0-\alpha_1+\alpha_2 = E(S)
$$
To obtain the lower bound of our triangulation, we have one inequality and one equality.

- The maximal number of edges cannot go over than the number of pairs of vertices,
  $$
  \alpha_1\le \binom{\alpha_0}{2}= \frac{\alpha_0!}{2!\cdot(\alpha_0-2)!}=\frac{1}{2}\alpha_0(\alpha_0-1)
  $$
  
- Each edge is the border of two neighboring triangles, and each triangle has three edges.
  $$
  3\alpha_2/2=\alpha_1
  $$

Hence we have
$$
\alpha_0 - E(S) = \frac{1}{3}\alpha_1\le\frac{1}{6}\alpha_0(\alpha_0-1)
$$

It follows,
$$
\alpha_0^2-7\alpha_0 +6E(S)\ge 0
$$
The above inequality will always have an solution. Since we are concerned with mainly $E(S)\le2$ (meaning connected surfaces with $0$ or more holes), we will write the solution as 
$$
\alpha_0\ge\ceil{\frac{7+\sqrt{49-24E(S)}}{2}}.
$$
Note that surfaces with $p$ holes (denoted $S_p$) has genus $E(S)=2-2p$, we only consider the  right side of the solution with the left side ignored by analysis of $p=1$ and $p=0$. 

From the lower bound of number of vertices, from
$$
\alpha_2=2\alpha_0 - 2E(S)
$$
we obtain the lower bound of number of triangles of $S_p$, denoted as $\delta(S_p)$
$$
\delta(S_p) \ge 2\ceil{\frac{7+\sqrt{49-24E(S_p)}}{2}}-2E(S_p).
$$
Substitute $E(S_p)=2-2p$, we have
$$
\delta(S_p) \ge 2\ceil{\frac{7+\sqrt{1+48p}}{2}}-4+4p.
$$

The following table lists out the first 10 values of $\delta(S_p)$ with the only exception $p=2$, which we will show later.

| $p$  | $\delta(S_p)$ |
| ---- | ------------- |
| 0    | 4             |
| 1    | 14            |
| 2    | ~~20~~ (24)   |
| 3    | 26            |
| 4    | 32            |
| 5    | 38            |
| 6    | 44            |
| 7    | 48            |
| 8    | 54            |
| 9    | 58            |

# Theorem to Be Proven

Turns out that the above lower bound is exactly the number of triangles in a minimal triangulation. **Namely, we wish to proof:**

> Let $S_p$ be the number of triangles in a minimal triangulation of $S_p$, Then
> $$
> \delta(S_p) \ge 2\ceil{\frac{7+\sqrt{1+48p}}{2}}-4+4p \quad \text{if } p\ne2
> $$
> and 
> $$
> \delta(S_2) = 24
> $$

# Equivalence of Theorems

**First we will proof that the above theorem follows the auxiliary theorem:**

> For each ordered pair $(n,t)\ne(9,3)$ of integers, such that
> $$
> \begin{cases}
> 4\le n, \, 0 \le t\le n-6 \\
> (n-3)(n-4)\mod12\equiv2t
> \end{cases}
> $$
>
> there exists a triangulation of a manifold with $n$ vertices and $\binom{n}{2}-t$ edges. The missing exception $(9,3)$ is replaced by $(10,9)$. (Meaning the $S_2$ is $(10,9)$- triangulated.)

**We proof by construction. We will construct a legal triangulation, and reach the lower bound stated in the theorem. Since $\delta(S_p)$ is the lower bound, our construction will be the minimal triangulation.** 

**Assuming the auxiliary theorem is true**, take $n=\ceil{\frac{7+\sqrt{1+48p}}{2}}$, $t = \frac{(n-3)(n-4)-12p}{2}$. 

**We show that it's a pair described by the auxiliary theorem.**

1. We have $n\le 4$. 

2. We can read directly from $t$ that
   $$
   (n-3)(n-4)\mod{12} \equiv 2t
   $$

3. From 
   $$
   \frac{7+\sqrt{1+48p}}{2}\le n\lt \frac{7+\sqrt{1+48p}}{2}+1
   $$
   we have
   $$
   (n-4)(n-5) \lt 12p\le(n-3)(n-4)
   $$
   Hence, $0\le t$

4. Using the left inequality, substitute $12p$ in the expression of $t$ , we have
   $$
   \begin{align}
   t &= \frac{(n-3)(n-4)-12p}{2}\\
   & \lt \frac{(n-3)(n-4)-(n-4)(n-5)}{2}\\
   & = \frac{2n-8}{2}\\
   & = n-4
   \end{align}
   $$
   Which means $t\lt n-4$, i.e. $t\le n-5$.

5. If $t= n - 5$, we have 
   $$
   \begin{align}
   (n-3)(n-4)\mod{12} &\equiv  2n-10 \\
   n^2 - 7n\mod{12} &\equiv  2n+2 \\
   n^2 - 9n\mod{12} &\equiv  2\\
   (n - 9)n\mod{12} &\equiv  2\\
   \end{align}
   $$
   There is no $n$ satisfy that equation. We have $t\le n-6$

**Then we show the triangulation $(n,t)$ has the number of triangles of $S_p$ for all $p$**.

For $p\ne2$, we have the Euler characteristic of $S$ using relations among $\alpha_0$, $\alpha_1$, $\alpha_2$,
$$
\begin{align}
E(S_p) &=\alpha_0 -\frac{1}{3}\alpha_1 \\
& = n-\frac{1}{3}(\binom{n}{2}-t) \\
& = 2-2p
\end{align}
$$
We have the number of triangles coincides with $\delta(S_p)$ in the theorem.
$$
\begin{align}
\alpha_2 &= \frac{2}{3}\alpha_1 \\
&= \frac{2}{3}(\binom{n}{2}-t) \\
& = \frac{2}{3} (\frac{n(n-1)}{2} - \frac{(n-3)(n-4)-12p}{2}) \\
& = 2n-4+4p \\
& = 2\ceil{\frac{7-\sqrt{1+48p}}{2}}-4+4p
\end{align}
$$
The same is true for $p=2$,  the pair is $(n,t)=(10,9)$, we have 
$$
E(S_p)  = 10-\frac{1}{3}(\binom{10}{2}-9) = -2
$$
and $\alpha_2 = \frac{2}{3} (\binom{10}{2}-9) = 24$ which again coincides with $\delta(S_2)$ in the theorem.

**Hence we have shown that the theorem can be derived from the auxiliary theorem.** That is, ***if*** the auxiliary theorem is true, we have the number of triangles of any minimal triangulation(s) of $S_p$.

# Proof of Auxiliary Theorem

 Now all we need to do is to proof the auxiliary theorem, which I state again here

> For each ordered pair $(n,t)\ne(9,3)$ of integers, such that
> $$
> \begin{cases}
> 4\le n, \, 0 \le t\le n-6 \\
> (n-3)(n-4)\mod12\equiv2t
> \end{cases}
> $$
>
> there exists a triangulation of a manifold with $n$ vertices and $\binom{n}{2}-t$ edges. The missing exception $(9,3)$ is replaced by $(10,9)$. (Meaning the $S_2$ is $(10,9)$- triangulated.)

## Lower $p$ Cases

For $p=0$, a tetrahedron will do the job.

For $p=1$, normally we would draw something like the following. This is an intuitive example in textbooks, you can fold it nicely and convince yourself that this does capture the essence of a torus.  ![img](https://i.stack.imgur.com/LuZDx.png) credit:  https://www2.cs.duke.edu/courses/fall06/cps296.1/Lectures/sec-III-1.pdf 

However, that's not the minimal triangulation of torus. The above is the minimal "degree-regular" triangulation, meaning that each vertex has equal number of edges attached. The following is a minimal triangulation of the torus. 

![image MoebiusTorus.gif](http://www.eg-models.de/models/Classical_Models/2001.02.069/MoebiusTorus.gif)

Credit [1](http://www.eg-models.de/models/Classical_Models/2001.02.069/_direct_link.html)

# More Examples

 http://www.eg-models.de/models/Surfaces/Polyhedral_Surfaces/2005.08.001/_preview.html 

