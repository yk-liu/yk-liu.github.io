$$
\newcommand{\inner}[2]{\left\langle{#1,#2}\right\rangle}
\newcommand{\form}{\tilde}
%\renewcommand{\vec}{\mathbf}
\newcommand{\bra}[1]{\left\langle{#1}\right\vert }
\newcommand{\ket}[1]{\left\vert {#1}\right\rangle}
\newcommand{\braket}[2]{\left\langle {#1} \, \middle\vert \,{#2} \right\rangle }
\newcommand{\mani}{\mathcal}
\newcommand{\field}{\mathscr}
\newcommand{\Tspace}[1]{T\! {#1}}
\newcommand{\d}{\mathrm{d}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\D}[2]{\frac{\d {#1}}{\d {#2} }}
\newcommand{\Partial}[2]{\frac{\partial {#1} }{\partial {#2} }}
\newcommand{\op}{\hat}
\newcommand{\uvec}{\hat}
\newcommand{\dfdas}{:=}
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
\notag
$$



# Push Forward

## Pictorial Introduction

If we have a map $\varphi$ from a manifold $M$ to manifold $N$, we can have a induced map from $T_p M$ to $T_{\varphi(p)}N$. This process can be done in the following order:

1. Find the basis vectors of $T_PM$. Recall that a vector can be represented by an equivalent class of curves. Pick two curves corresponding to the tangent vectors, namely $\gamma(t)$ and $\gamma^\prime(t)$.
2. Map these two curves manifold $N$, namely $\left\lbrack \varphi\circ \gamma\right\rbrack(t)$ and $\left\lbrack \varphi\circ \gamma^\prime\right\rbrack(t)$.
3. Find the tangent vectors tangent to $\varphi\circ\gamma$ and $\varphi\circ\gamma^\prime$ at point $\varphi(p)$. 
4. Any vector $X$ in $T_PM$ is first decomposed to basis vector and re-combined in $T_{\varphi(p)}N$, denoted as $\varphi _ *(X)$

<img src="assets/pushforward.png" width="60%">

## Formal expression

$$
(\varphi_*(X)) f \dfdas X(f \circ \varphi)
$$

## The Jacobian

Let us find the components of this push forward map, given charts $M\mapsto (x^1,\cdots ,x^m)$, and $ N\mapsto (y^1,\cdots,y^n)$. For the basis vector $E=1\cdot\Partial{}{x^i}$, we need to find the pushed forward vector $E^\prime =\varphi _*(\Partial{}{x^i})$. Expand this basis in terms of basis in $N$, we have
$$
\begin{align*}
E^\prime &=( E^\prime)^ j  \Partial{}{y^j} \\
\varphi_*(\Partial{}{x^i}) &=\left[\varphi_*(\Partial{}{x^i})\right]^j  \Partial{}{y^j}
\end{align*}
$$
notice the vector now lives in $N$ and can thus act on functions in $N$. Specially, it can act on $y^k$
$$
\begin{align*}
\left[\varphi_*(\Partial{}{x^i})\right] y^k &=\left[\varphi_*(\Partial{}{x^i})\right]^j  \Partial{y^k}{y^j}\\
&=\left[\varphi_*(\Partial{}{x^i})\right]^j  \delta^k_j\\
&=\left[\varphi_*(\Partial{}{x^i})\right]^k
\end{align*}
$$
The LHS is by definition
$$
\left[\varphi_*(\Partial{}{x^i})\right] y^k = \Partial{}{x^i}(y^k \circ \varphi)
$$

where $y^k \circ \varphi$ is just the coordinate functions of the map $\varphi$.  























# Push Forward and Pull Back

First you need a map to push or pull with.

Then, **pulling back is just plugging in the formula for your map.** If the map is f: u = x2 , then f* (u2 ) = x4 , or f*(du) = d(x2 ) = 2x dx. Here we took a function or form on the "u" space and turned it into a function or form on the "x" space by pluggin in u=x2 (pulled it back from u space to x space).

**Push-forward is just applying the derivative of your map** on a point by point basis. You compute the jacobian like you would in vector calc, and multiply jacobian and tangent vector at a point. There is not much distinction between the derivative and the push-forward in this context. But, if your map is a diffeormorphism then you can push forward whole vector fields (point by point) and you get the dual relationship between pull-back and push-forward.