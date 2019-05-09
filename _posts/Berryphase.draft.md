
#  Examples in Physics

## Dirac Monopole

The magnetic field $\vec B$ of a magnetic monopole at the origin in $\R^3$, given by

$$
\vec B(\vec x) = \frac{\vec x}{4\pi r^3}
$$

where $r=\abs{\vec x}$. This satisfies the condition $\nabla \cdot \vec B=0$ and this expression is valid in $\R^3/\{0\}$. This vector field can also be represented by a two form 

$$
F=\frac{1}{2\pi r} (x_1 \d x_2 \wedge \d  x_3 + \text{cyclic})=\frac{1}{4 \pi}\sin\theta \d \theta \wedge \d \varphi
$$

$F$ is not only closed but exact as well. A choice of $F=\d A$ is 

$$
A=-\frac{1}{4 \pi} \cos \theta \d \varphi=\frac{x_3}{4\pi r} \frac{x_2\d x_1-x_1\d x_2}{x_1^2+x_2^2}
$$

where the singularity lies at $x _ 1 = x _ 2 = 0$. 

 

## Berry's Phase

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

We already know that a time-evolution can have a dynamic phase factor

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

So to remove the dynamic phase factor, we still have the extra phase factor

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

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-01-16-Fiber-Bundles/assets/Phase-lift.png' width="50%">