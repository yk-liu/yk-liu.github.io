# 热统

[TOC]
## 系统

统计力学应当不依赖于具体的力学规律,而只是关于群体现象的一种描述. 对于气体可以应用统计力学, 对于上亿个皮球也可以应用统计力学. 不同之处在于系综不同, 理想气体是全同粒子,而宏观的皮球则可以区分.

实验结果告诉我们理想气体必须是量子系综. 我们先从经典系综入手, 看什么时候会与试验矛盾, 并研究在一定条件下如何过渡到量子系综. 

无论如何,我们这里讨论的系统指的都是相空间的一个点,称为一个系统. 系统在演化的规程中在相空间形成一条轨迹,每一点对应的就是这个系统所处的状态. 无论是经典力学还是量子力学, 系统如何演化都可以由初始条件来确定. 而我们==可以???仅用能量和粒子数来描述一个系统== 

## $\rho$的性质

$\rho$为相空间点$(p,q)$处的点密度.
$$
N=\int_V{\rho{(p,q)}d\Gamma}
$$
### 刘维尔定理

相空间的点(状态)不会凭空产生或消失, 研究的状态数是一定的. (这里的系统状态不一定是平衡的). 这个连续性条件可以表述为

> 相空间内代表点$(p,q)$的含时演化速率为$\vec{v}(p.q)$
>
> 则相空间体积$\omega$内代表点的数目该变量等于从体积$\omega$的表面$\sigma$逸出的点的数目

即为:

$$
\frac{\partial}{\partial t}\int_\omega \rho d \Gamma = -\int_\sigma \vec{v}\cdot \hat{n} d \sigma
$$

利用==格林公式==, 并且注意到$\nabla=(\frac{\partial}{\partial q_i}\hat{q}_i,\frac{\partial}{\partial p_i}\hat{p}_i)$, 即$\nabla$算符只与对应的速度项作用
$$
\begin{align*}
\vec{\nabla} \cdot \vec{v}&=(\frac{\partial}{\partial q_i}\hat{q}_i,\frac{\partial}{\partial p_i}\hat{p}_i)\cdot(\dot{q}_i \hat{q}_i,\dot{p}_i \hat{p}_i)\\
&=\frac{\partial}{\partial q_i}\dot{q}_i {\hat{q}_i}^2 +\frac{\partial}{\partial p_i}\dot{p}_i {\hat{p}_i}^2+\frac{\partial}{\partial q_i}\dot{p}_i \hat{q}_i  \hat{p}_i +\frac{\partial}{\partial p_i}\dot{q}_i \hat{q}_i  \hat{p}_i\\
&=\frac{\partial}{\partial q_i}\dot{q}_i+\frac{\partial}{\partial p_i}\dot{p}_i
\end{align*}
$$

利用哈密顿方程:
$$
\begin{align*}
\vec{\nabla} \cdot \vec{v}&=\frac{\partial}{\partial q_i}\dot{q}_i+\frac{\partial}{\partial p_i}\dot{p}_i\\
&=\frac{\partial}{\partial q_i} \frac{\partial H}{\partial q_i}+\frac{\partial}{\partial p_i}\left(-\frac{\partial H}{\partial q_i}\right)\\
&=0
\end{align*}
$$


得到
$$
\begin{align*}
\frac{\partial}{\partial t}\int\omega \rho d \Gamma &= -\int_\sigma \rho\vec{v}\cdot \hat{n} d \sigma\\
&=-\int_\omega \mathbf{\nabla}\cdot \left(\rho \vec{v}\right) d \Gamma\\
&=\int_\omega{\left(\left(\vec{\nabla}\rho\right)\cdot\vec{v}+\rho\left(\vec{\nabla}\cdot\vec{v}\right)\right)d \Gamma }\\
&=\int_\omega{\left(\vec{\nabla}\rho\right)\cdot\vec{v}d \Gamma }\\
\end{align*}
$$


移项,得到积分$\int_\omega\left(\frac{\partial}{\partial t}\rho - \left(\vec{\nabla}\rho\right)\cdot\vec{v}\right)d \Gamma =0$,因此, 被积函数$\frac{\partial}{\partial t}\rho-\left(\vec{\nabla}\rho\right)\cdot\vec{v}=0$. 将被积函数化简得到:
$$
\begin{align}
\frac{\partial}{\partial t}\rho - \left(\vec{\nabla}\rho\right)\cdot\vec{v}&=\frac{\partial}{\partial t}\rho+\frac{\partial\rho}{\partial q_i}\dot{q}_i+\frac{\partial\rho}{\partial p_i}\dot{p}_i \notag\\
&=\frac{d}{dt}\rho \notag\\
&=0
\end{align}
$$

因此相空间内的代表点的集体像一个不可压缩液体. **而且**$\rho$**是一个守恒量.**

### $\ln{\rho}$的可加性

经典力学的系统之间的区别, 只有系统的粒子数和总能量$(E,N)$就可以确定.

把一个系统$S$划分为两个子系统$A$,$B$
$$
N_S=\int{\rho_S \delta(E_S-E_0) d \Gamma_S}\notag\\
N_A=\int{\rho_A \delta(E_A-E_1) d \Gamma_A}\notag\\
N_B=\int{\rho_B \delta(E_B-E_2) d \Gamma_B}\notag\\
$$
其中$E_S$和$E_A$,$E_B$的关系为:
$$
\begin{align*}
N_S(E_0)&=\int{ dE_a N_A(E_a) N_B(E_0-E_a)}\\
&=\int{ dE \left(\int{\rho_A \delta(E_A-E_a) d \Gamma_A}\int{\rho_B \delta(E_B-E_a-E_0) d \Gamma_B}\right)}\\
&=\int{\rho_A\rho_B \left(\int{dE_A \delta(E_A-E_a)\delta(E_B-E_a-E_0)}\right) d\Gamma_A d\Gamma_B }\\
&=\int{\rho_A\rho_B \delta(E_B-E_A-E_0) d\Gamma_A d\Gamma_B }\\
&=\int{\rho_S \delta(E_S-E_0) d \Gamma_S}
\end{align*}
$$
又有
$$
\begin{align}
E_A+E_B=E_S\notag\\
d\Gamma_A\cdot d\Gamma_B = d\Gamma_S \label{classicalDGammaProduct}
\end{align}
$$
式$(\ref{classicalDGammaProduct})$建立在系统粒子可区分的基础上.

我们得到总系统与子系统间$\rho$的关系:
$$
\rho_A\rho_B=\rho_S \notag
$$
取对数得到
$$
\ln{\rho_A}+\ln{\rho_B}=\ln{\rho_S}
$$


### $\rho$的表达式

系统由哈密顿量给出:
$$
H=\sum_i{\frac{{\vec{P}_i}^2}{2m}}+\sum_{i,j,k,\cdots}{\left(V(r_i)+U(r_i,r_j)+W(r_i,r_j,r_k)+\cdots\right)} \notag
$$
系统的可加量有$N$,$H$,$\vec{P}$,$\vec{L}$. 除了这些可加量, 我们用$\zeta$表示其他的可加量

则$\ln{\rho}$一定是这些量的线性叠加, 为了以后表示方便, 这里取负号:
$$
\ln{\rho}=-\zeta-\mu N- \beta E-\vec{a}\cdot\vec{P}-\vec{b}\cdot\vec{L} \notag
$$
总动量和总角动量不是我们研究的主要对象, 可以将系统的空间平移对称性和旋转对称性破坏掉,==(还是选取参考系使得二者变为0? 这两个表述有什么不同? 划分子系统的时候会有问题吗?)== 使得$\ln{\rho}$具有下面的形式
$$
\ln{\rho}=-\zeta-\mu N - \beta E
$$
因此对于给定的封闭系, 能量和粒子数一定,==其余的可加量也都是一样的==, $\rho$是一个常量.

## 系统的宏观量

### 系统的宏观量的观测值

$$
\langle O\rangle=\int_{-\infty}^{{-\infty}}{O(p,q)\mathbb{P}(p,q)dpdq}
$$

其中$\mathbb{P}(p,q)$是归一化的概率密度. 
$$
1=\int_{-\infty}^{{-\infty}}{\mathbb{P}(p,q)dpdq}
$$

#### 对系统的观测

有两种得到系统的某个观测量$O$的方法

> 1. 对同一个系统连续地测量$O$的值. 测量次数很大时, 观测值的加权平均就是最后的观测量.
> 2. 对许多个"一样的"系统进行测量. 测量次数很大时, 观测值的加权平均就是最后的观测量.

