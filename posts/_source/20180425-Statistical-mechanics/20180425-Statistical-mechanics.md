# 热统

[TOC]

## 系统

统计力学应当不依赖于具体的力学规律,而只是关于群体现象的一种描述. 对于气体可以应用统计力学, 对于上亿个皮球也可以应用统计力学. 不同之处在于系综不同, 理想气体是全同粒子,而宏观的皮球则可以区分.

实验结果告诉我们理想气体必须是量子系综. 我们先从经典系综入手, 看什么时候会与试验矛盾, 并研究在一定条件下如何过渡到量子系综. 

无论哪种情况, 我们这里讨论的系统指的都是相空间的一个点. 系统在演化的过程中在相空间形成一条轨迹,每一点对应的就是这个系统所处的状态. 无论是经典力学还是量子力学, 给定能量和粒子数, 孤立系统如何演化都可以由初始条件来确定. 因为我们难以得到一个庞大的系统的初始条件, 我们只研究那些依赖于能量和粒子数的性质(宏观性质), 这就是热力学研究的性质, 因此在热力学中, 我们==可以仅用能量和粒子数来描述一个系统==. 

==用量子力学和经典力学描述系统的差别, 虽然根本上说求别在于运动方程是薛定谔方程还是哈密顿方程. 但是因为我们可以仅用能量和粒子数来描述一个系统, 这两种描述的差别在于这两者的推论: 刘维尔定理是否成立,能量是不是连续分布, 粒子是不是全同的.???==

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

## 系统的分类与对应的$\rho$

### 孤立系

最直观的系统是孤立系. 孤立系的能量和粒子数都是守恒的. 与之对应的还有能量不守恒但粒子数守恒的封闭系, 能量与粒子数都不守恒的开放系.
孤立系由于能量不变, 孤立系的能量只有一个允许值
$$
\rho(p,q)=\rho(E_0)\delta(E-E_0)
$$

### 封闭系

总可以把一个封闭系看成是一个孤立系的一部分. 孤立系的其余部分称为热库. 封闭系的能量$E_c$可以连续变化, 就要求整个孤立系的能量$E_i$非常大, 才能满足封闭系的能量可以取任意值的条件. 等价于要求热库的能量$E_r$很大, $E_c\ll E_r$ . 封闭系的$\rho$要利用孤立系的平衡来得出.

### 开放系

按照求封闭系的思路, 总可以把一个开放系看成是一个孤立系的一部分. 孤立系的其余部分称为粒子库, 同时也是热库. 封闭系的能量$E_c$和粒子数$N_c$可以连续变化, 就要求整个孤立系的能量$E_i$和粒子数$N_i$非常大, 才能满足封闭系的能量可以取任意值, 粒子数可以任意多的条件. 等价于就要求粒子库的能量$E_r$, $N_r$很大, $E_c\ll E_r$. 开放系的$\rho$也要利用孤立系的平衡来得出.



## 孤立系统的宏观量

所有的系统都可以看作是孤立系统的一部分. 下面讨论孤立系的观测量的表达式.

要得到孤立系的观测量的表达式, 就是要从粒子满足的运动方程出发, 得到$\rho$的表达式, 从而第一性地计算相应的宏观量.

```mermaid
graph LR
A(微观运动方程)-->B(微观态空间)
B--> C(态空间体积)
C-->|对能量微分|D(能态密度)
D-->E(ρ)
E-->F(观测量)
```



### 系统的宏观量的观测值

由观测值的定义:
$$
\langle O\rangle=\int_{-\infty}^{{-\infty}}{O(p,q)\mathbb{P}(p,q)dpdq}
$$

其中$\mathbb{P}(p,q)$是归一化的概率密度. 
$$
1=\int_{-\infty}^{{-\infty}}{\mathbb{P}(p,q)dpdq}
$$

求系统的宏观量观测值就变为求概率密度$\mathbb{P}(p,q)$.

#### 对系统的观测

有两种得到系统的某个观测量$O$的方法

> 1. 对同一个系统连续地测量$O$的值. 测量次数很大时, 观测值的加权平均就是最后的观测量. 
>
>    ​	假设测量对系统的影响任意小$\leftrightarrow$ 总共只有一次测量, 但假设测量发生在不同的时间, 测量值的平均
>
> 2. 对许多个"一样的"系统进行测量. 测量系统数目很大时, 观测值的加权平均就是最后的观测量.

如果每次测量对系统的影响可以忽略不计, 那么两种测量方法就是等价的.

如果每次测量对系统的影响不可以忽略不计,  那么这两种测量方法得到的结果就不一定相等. ==这两种结果相等是不是实验"可重复性的要求?"==

实验中的测量 应当是第一种.

>我的思考:
>
>实验的可重复性指的是 无论是在不同的时刻对系统进行的测量, (测量1)  还是对多个初始条件相同的系统进行的测量(测量2), 都应当满足物理定律随空间平移和随时间平移的不变性. 因而这两种测量的值相同是物理定律的要求

由测量2, 测量系统足够多时, 测量的概率密度$\mathbb{P}(p,q)$收敛于这个系综内的系统分布函数$\rho(p,q)$, 得到
$$
\mathbb{P}(p,q)d\Gamma =\rho(p,q)d \Gamma=\rho(E_0)\delta(E-E_0)d\Gamma
$$
即概率密度就是系综内的系统分布函数. 要求系统的宏观量, 就要求系统分布函数$\rho(p,q)$的值.

==**<u>也就是说, $\rho$包含了系统的全部信息</u>**==

#### 概率密度的表达式

利用$\delta$函数的性质 式$(\ref{integralofdeltafx})$ $\int_{-\infty}^{+\infty}\delta(f(x))=\sum_{i}\frac{1}{\lvert f'(a_i)\rvert}, \quad  f(a_i)=0$ 得到:
$$
\begin{align}
\int\delta(E-E_0)d\Gamma&=\int\delta(E(p,q)-E_0)[dp][dq] \notag\\
&= \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=E_0}} \label{deltaE-E0}\\
\end{align}
$$
利用式$(\ref{deltaE-E0})​$得到
$$
\begin{align*}
\int \mathbb{P}d\Gamma &=\int\rho(p,q)d \Gamma\\
& =\int\rho(E_0)\delta(E-E_0)d\Gamma\\
&= \rho(E_0)\int\delta(E-E_0)d\Gamma\\
& = \rho(E_0) \cdot  \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=E_0}} \\
\end{align*}
$$
又有$\int \mathbb{P}d\Gamma =1​$, 得到$\rho(E_0)​$
$$
\rho(E_0) \cdot \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=E_0}} =1 \notag
$$
带入$\rho(p,q)d \Gamma=\rho(E_0)\delta(E-E_0)d\Gamma$  得到:
$$
\rho(p,q)= \left. \frac{dE}{d\Gamma} \right| _{E=E_0}  \delta(E-E_0) = \frac{1}{\left. \frac{d\Gamma}{dE} \right| _{E=E_0}} \delta(E-E_0)  \notag
$$
#### 概率密度用能态密度表达

定义能态密度$\Omega$为相空间体积对能量的微分:
$$
\begin{gather}
\Omega(E)=\frac{d\Gamma}{dE}\\
\mathrm{Volume\ in\ phase\ space}=\int d\Gamma=\int \Omega(E)dE
\end{gather}
$$
这里只要系统给定, $\Omega$就是一个已知量.

有:
$$
\rho(E)=\frac{1}{\Omega(E_0)} \delta(E-E_0)\\
$$
#### 系统宏观量用能态密度表达

至此得到
$$
\begin{align}
\langle O\rangle&=\int_{-\infty}^{{-\infty}}{O(p,q)\mathbb{P}(p,q)dpdq}\notag\\
&=\int_{-\infty}^{{-\infty}}O(p,q)\rho(p,q)d \Gamma \notag\\
&=\int_{-\infty}^{{-\infty}}O(p,q)\frac{1}{\Omega(E_0)} \delta(E-E_0)d\Gamma \notag\\
&=\frac{1}{\Omega(E_0)} \int_{-\infty}^{{-\infty}}O(p,q)\delta(E-E_0)d\Gamma \\
\end{align}
$$

### 理想气体能态密度的表达式

在之前我们建立了一般的系统观测量与能态密度的关系. 现在以试着以"理想气体"(微粒可区分)为例, 从围观态空间出发推导能态密度的表达式
```mermaid
graph LR
A(微观运动方程)-->B(微观态空间)
B--> C(态空间体积)
C-->|对能量微分|D(能态密度)
D-->E(ρ)
E-->F(观测量)
```
#### 自由单粒子系统

考虑一个自由的粒子. 显然粒子数和能量都是守恒的. 把这个粒子看作一个系统, 这个系统显然不是统计力学研究的系统, 因为自由度数目太小.

按图1思路, 经典粒子的微观态空间为$\mu$空间. 粒子的动量和能量关系有:
$$
\begin{align}
d\vec{p}&=\mathscr{A}_{D-1}p^{D-1}dp \notag \\
\quad p &= {\left(2mE\right)}^{1/2} \label{singleParticleEP} \\
dp &= {\left(2m\right)}^{1/2}E^{-1/2}dE \notag
\end{align}
$$
得到态空间体积的表达式:
$$
\begin{align*}
\Psi &= \int d\Gamma\\
& = \iint d\vec{q} d\vec{p}\\
&= \int V d\vec{p}\\
&= \int V \mathscr{A}_{D-1}p^{D-1}dp \\\
&= \int V \mathscr{A}_{D-1} {\left(2mE\right)}^{\frac{D-1}{2}} {\left(2m\right)}^{\frac{1}{2}}E^{-\frac{1}{2}}dE \\
&= \int V \mathscr{A}_{D-1}{\left(2m\right)}^{\frac{D}{2}}E^{\frac{D-2}{2}}dE 
\end{align*}
$$
这里的体积$V=\int d \vec{q}$就是粒子的"宏观体积", 表示粒子的运动范围.

得到
$$
\frac{d \Gamma}{d E} =\Omega(E) = V \mathscr{A}_{D-1}{\left(2m\right)}^{\frac{D}{2}}E^{\frac{D-2}{2}}
$$

#### 经典宏观系统

类似地, 对于N个质量均为$m$的粒子的宏观系统, 定义如下动量$\vec{\mathfrak{p}}$
$$
\vec{\mathfrak{p}}=(\vec{p}_1,\vec{p}_2,\cdots,\vec{p}_N)
$$
系统的能量可以表示为:
$$
E=\sum_i \frac{\vec{p}_i^2}{2m}= \frac{\vec{\mathfrak{p}}^2}{2m}
$$
仿照式子$(\ref{singleParticleEP})$ 得到
$$
\begin{align}
d\vec{\mathfrak{p}}&=d\vec{p}_1\cdot d\vec{p}_2\cdot\cdots\cdot d\vec{p}_N \notag \qquad 这里仿照d\vec{p}=d(p_x,p_y,p_z)=dp_xdp_ydp_z \notag \\
&=\mathscr{A}_{ND-1}\mathfrak{p}^{ND-1}d\mathfrak{p}, \\
\mathfrak{p}&=\left( \sum_i {\vec{p}_i^2}\right)^{\frac{1}{2}}\notag \\
&=\left( 2m E\right)^{\frac{1}{2}}\\
d\mathfrak{p}&= {\left(2m\right)}^{1/2}E^{-1/2}dE 
\end{align}
$$
接着得到对于N个质量均为$m$的粒子的宏观系统相空间体积:
$$
\begin{align*}
\Psi &= \int d\Gamma\\
& = \iint [d\vec{q}] [d\vec{p}]\\
&=\left(\iint\cdots\int d\vec{q}_1d\vec{q}_2\cdots d\vec{q}_N\right) \left(\iint\cdots\int d\vec{p}_1d\vec{p}_2\cdots d\vec{p}_N\right)\\
&=\left((\int d\vec{q}_1)(\int d\vec{q}_2)\cdots (\int d\vec{q}_N)\right) \int d\vec{\mathfrak{p}}\\
 &\\
&= V\cdot V\cdots V \int  \mathscr{A}_{ND-1}\mathfrak{p}^{ND-1}d\mathfrak{p} \\\
&= \int V^N \mathscr{A}_{ND-1} {\left(2mE\right)}^{\frac{ND-1}{2}} {\left(2m\right)}^{\frac{1}{2}}E^{-\frac{1}{2}}dE \\
&= \int V^N \mathscr{A}_{ND-1}{\left(2m\right)}^{\frac{ND}{2}}E^{\frac{ND-2}{2}}dE 
\end{align*}
$$

得到$\Gamma$和$E$的关系:
$$
d\Gamma=V^N \mathscr{A}_{ND-1}{\left(2m\right)}^{\frac{ND}{2}}E^{\frac{ND-2}{2}}dE
$$
从而得到得到$\Omega$的表达式:
$$
\Omega(E)=\frac{d\Gamma}{dE} =V^N \mathscr{A}_{ND-1}{\left(2m\right)}^{\frac{ND}{2}}E^{\frac{ND-2}{2}} \notag
$$
注意在这里出现了所谓Gibbs佯谬, 这样计算得到的$\Omega$ 与实验得到的结果不符合. 必须乘上一个因子$1/N!$才吻合. 这个因子无法从经典力学推导出来. 出现这个因子的原因就是物理测量的系统(如气体等)微观粒子具有不可分辨的特性. 所谓不可分辨, 指的是粒子具有波的性质, 而微观粒子没有轨迹, 在波函数重叠的部分无法区分这两个粒子. ==那么统计力学的系统内的微观粒子满足这个条件吗? 统计力学假定微观粒子之间的相互作用足够微弱(在哪里假设了?), 在这个假设的前提下, 微观粒子是不能分辨的吗? 粒子之间不是没有相互作用吗? 还是说这个假设没有必要?==

带入$ND-1$维球面面积得到:

$\Gamma$函数的性质有[^$\Gamma$函数的性质]
利用Gamma函数的性质
$$
\Gamma(x+1)\approx \sqrt{2\pi x}x^{x}e^{-x}\\

\therefore
\Gamma(x)=\frac{\Gamma(x+1)}{x}\approx \sqrt{2\pi x}x^{x-1}e^{-x}
$$
得到ND-1维球面面积为$(N\rightarrow \infty)$
$$
\begin{align*}
\mathscr{A}_{ND-1}
&=\frac{{2\pi}^{ND/2}}{\Gamma(ND/2)}\\
\phantom{}\xrightarrow{N\rightarrow\infty} 
&\phantom{=}\frac{2{\pi}^{ND/2}}{\sqrt{2\pi \left(\frac{ND}{2}\right)}{(\frac{ND}{2})}^{\frac{ND}{2}-1}e^{-\frac{ND}{2}}}\\
&= \frac{\sqrt{2}{\left(e\pi\right)}^{\frac{ND}{2}}}{\pi^{-\frac{1}{2}}{(\frac{ND}{2})}^{\frac{ND-1}{2}}} \notag\\
&=\frac{\sqrt{2}{\left(e\pi\right)}^{\frac{ND}{2}}}{\pi^{-\frac{1}{2}}{(\frac{ND}{2})}^{\frac{ND}{2}}(\frac{ND}{2})^{-\frac{1}{2}}}\\
&= \left(\frac{2e\pi}{ND}\right)^{{\frac{ND}{2}}}2\left(\pi ND\right)^{\frac{1}{2}}\\
\end{align*}
$$
因此
$$
\begin{align}
\Omega(E) &=V^N\mathscr{A}_{ND-1}\left({2mE}\right)^{DN/2} \notag\\
&=V^N\cdot\left(\frac{2e\pi}{ND}\right)^{{\frac{ND}{2}}}2\left(\pi ND\right)^{\frac{1}{2}}\cdot \left(2mE\right)^{DN/2}\notag\\
&=V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} 
\end{align}
$$
> 注意:
>
> 这里==相空间的体积对能量的微分==与==相空间体积内代表点数目对能量的微分==不同. 一旦系统满足的运动规律给定, 相空间体积对能量的微分就给定了. 而相空间体积内代表点的数目对能量的微分还依赖于系统的种类, 具体的系综等等其他因素(包含在$\rho$中)
> $$
> \begin{align*}
> \mathrm{Volume\ in\ phase\ space}&=\int \phantom{\rho}d\Gamma=\int \phantom{\rho}\Omega(E)dE g\\
> &\qquad\downarrow biased\ with\ \rho \\
> \mathrm{Number\ of\ points\ in\ phase\ space }&=\int\rho d\Gamma=\int \rho\Omega(E)dE \\
> \end{align*}
> $$
>
### 一些特殊的宏观量

#### 能量

==能量和粒子数是仅有的确定系统微观状态的物理量==, 
$$
\begin{align}
\langle H\rangle &=\frac{1}{\Omega(E_0)} \int_{-\infty}^{{-\infty}}H(p,q)\delta(E-E_0)d\Gamma \notag\\
& =\int_{-\infty}^{{-\infty}}E_0  \frac{1}{\Omega(E_0)} d\Gamma \notag\\
& = E_0\int_{-\infty}^{{-\infty}}  \frac{1}{\Omega(E_0)} d\Gamma \notag\\
= E_0
\end{align}
$$
(推导好像有问题)

## 系统的平衡问题

### 孤立系的平衡

考虑两个系统$A$,$B$. 他们平衡的条件是净能量交换为零. 由于$\rho$包含了系统的全部信息, 只要两个系统构成的总系统的分布函数与两个孤立系构成的分布函数, 我们就说这两个系统处在平衡态.

这个定义和直观感受是一致的. 如果两个系统平衡, 把他们变成孤立系, 放置一段时间之后再相互作用, 二者的能量都不再变化.

如果无论如何划分系统$S$,子系统$A$,$B$都处在平衡态,就说系统S是平衡的.

这个定义也和直观理解是一致的. 如果一个系统"处处相同"(无论如何划分系统$S$), 系统就是稳定的, 就处在平衡态.

这样定义的问题在于, 到底有没有这样的状态? 系统可不可能"处处相同"?

回答: 现实中没有这样的系统. 我们研究的系统是自由度无穷大的系统, 是类似质点的模型. 现实的系统都是近似.

另外一个问题是, 平衡的系统之间是等价的. 定义平衡的系统就定义了等价类. 怎么定义一个元素与某一个元素等价而与另一个元素不等价?  可以用一个量来刻画. 如果这两个元素这个量相同, 就说他们等价. 用什么量来刻画这个等价关系? 接下来可以看到, 这个等价类的量定义为温度. 用平衡替换上面的说法就是, 用温度定义一个系统与某一个系统平衡而与另一个系统不平衡.

以下分两种情况计算, 来得到系统平衡的条件.

设总系统$S$ 的能量为$E_s$, 子系统$A$ 的能量为$E_a$ , 子系统$B$ 的能量为$E_b$.  $E_a$ , $E_b$, $E_s$ 为变量, $E_a+E_b=E_s$. 总系统的能量守恒, $E_s \equiv \varepsilon_s$. 在平衡时$E_a= \varepsilon_a, \quad E_b= \varepsilon_b $, 且有$\varepsilon_a+\varepsilon_b=\varepsilon_s$,

对于系统$A$,$S$概率密度归一化:
$$
\begin{align*}
1&=\underbrace{\int\cdots\int}_{n_s}\rho_sd\Gamma_s\\
&=\underbrace{\int\cdots\int}_{n_a}\underbrace{\int\cdots\int}_{n_b}\rho_s d\Gamma_ad\Gamma_b\\
&=\underbrace{\int\cdots\int}_{n_a}\left(\underbrace{\int\cdots\int}_{n_b}\rho_s d\Gamma_b\right)d\Gamma_a\\
1&=\underbrace{\int\cdots\int}_{n_a}\rho_ad\Gamma_a
\end{align*}
$$
对于与系统$B$平衡的系统$A$:
$$
\begin{align}
\rho_a^{\mathrm{equilibrium}}&=\underbrace{\int\cdots\int}_{n_b}\rho_s d\Gamma_b \notag\\
&=\int\rho_s d\Gamma_b\notag\\
&=\int\frac{1}{\Omega_s(E_s)}\delta(E_s-\varepsilon_s)d\Gamma_b\notag\\
&=\int\frac{1}{\Omega_s(E_s)}\delta(E_b+E_a-\varepsilon_s)d\Gamma_b\notag\\
&=\frac{1}{\Omega_s(E_s)}\int\delta(E_b-(\varepsilon_s-E_a))d\Gamma_b\notag\\
&=\frac{1}{\Omega_s(E_s)}\Omega_b(\varepsilon_s-E_a)\notag\\
\label{rhoaequilibrium}
\end{align}
$$
子系统A在平衡时可视作孤立系:
$$
\rho_a^{\mathrm{isolated}}=\frac{1}{\Omega_a(E_a)}\delta(E_a-\varepsilon_a) \label{rhoaisolated}
$$
结合$(\ref{rhoaequilibrium}), (\ref{rhoaisolated})$ 平衡时, $\rho_a^{\mathrm{equilibrium}}=\rho_a^{\mathrm{isolated}}$ 得到:
$$
\delta(E_a-\varepsilon_a)=\frac{\Omega_a(E_a)\Omega_b(\varepsilon_s-E_a)}{\Omega_s(E_s)}
$$
同理对B系统也有:
$$
\delta(E_b-\varepsilon_b)=\frac{\Omega_b(E_b)\Omega_a(\varepsilon_s-E_b)}{\Omega_s(E_s)}
$$
又有$E_a+E_b=E_s, \quad \varepsilon_a+\varepsilon_b=\varepsilon_s$,得到:
$$
\delta(E_a-\varepsilon_a)=\frac{\Omega_a(E_a)\Omega_b(E_b)}{\Omega_s(E_s)}=\delta(E_b-\varepsilon_b)
$$
再由$\delta$函数与$\Omega$的关系:
$$
\frac{1}{\Omega_a(\varepsilon_a)}\int\delta(E_a-\varepsilon_a)d\Gamma_a=1 \notag\\
\int\delta(E_a-\varepsilon_a)d\Gamma_a=\Omega_a(\varepsilon_a) \notag\\
$$
得到: ==这里的E 和 e貌似用混了, 有时间看一看==
$$
\begin{align*}
\quad \delta(E_a-\varepsilon_a) &=\frac{d\Omega_a(\varepsilon_a)}{d\Gamma_a}\\
&=\frac{d\Omega_a(\varepsilon_a)}{d \varepsilon_a}\frac{d \varepsilon_a}{d\Gamma_a}\\
&=\frac{d\Omega_a(\varepsilon_a)}{d \varepsilon_a} {\left.\frac{d E_a}{d\Gamma_a}\right|}_{E_a=\varepsilon_a}\\
&=\frac{d\Omega_a(\varepsilon_a)}{d \varepsilon_a}\frac{1}{\Omega(\varepsilon_a)}\\
&=\left.\frac{d \ln{(\Omega(E_a))}}{d E_a}\right|_{E_a=\varepsilon_a}
\end{align*}
$$
得到:
$$
\left.\frac{d}{d E_a}\ln{(\Omega(E_a))}\right|_{E_a=\varepsilon_a}=\left.\frac{d}{d E_b}\ln{(\Omega(E_b))}\right|_{E_b=\varepsilon_b}
$$
至此我们得到一个表征等价关系的量S'
$$
S(E)=\ln(\Omega(E))
$$
若两个系统平衡,
$$
S'_a(E_a)=S'_b(E_b)=\frac{1}{T}
$$

#### 理想气体的平衡与能态方程

利用上面的条件, 带入理想气体的表达式, 我们得到理想气体的能态方程:
因此
$$
\begin{align}

\Omega(E) &=VN\mathscr{A}_{ND-1}\left({2mE}\right){DN/2} \notag\\

&=VN\cdot\left(\frac{2e\pi}{ND}\right)^{{\frac{ND}{2}}}2\left(\pi ND\right)^{\frac{1}{2}}\cdot \left(2mE\right)^{DN/2}\notag\\

&=V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} 

\end{align}
$$
由此得到熵以及对应的宏观量, 温度:
$$
\begin{align}

S(E)&=\ln{\Omega(E)} \notag\\

&=\ln\left(V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} \right)\\

\end{align}
$$
温度的计算:
$$
\begin{align*}

\frac{1}{T}&=\frac{dS(E)}{dE} \\

&=k_0\frac{1}{\Omega(E)}\frac{d\Omega(E)}{dE} \\

&=\frac{k_0}{V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} }\cdot V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{1}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} \frac{dE^{\frac{ND}{2}}}{dE} \\

&=k_0\frac{ND}{2}E^{-1} 

\end{align*}
$$
得到了系统的能态方程:
$$
E=\frac{1}{2}NDk_0T
$$
可以看出, 仿照上面的做法, 可以定义不同的平衡条件而得到不同的等价关系, 从而得到不同的==等价量==.

我们可以定义的条件显然至少还有: 粒子数不再发生变化, 体积不再发生变化. 但是在研究在这样的平衡条件之前, 我们需要得到这样的系统的分布函数. 还有粒子数, 体积这两个量的观测值表达式.

### 封闭系的平衡

总可以把一个封闭系看成是一个孤立系的一部分. 孤立系的其余部分称为热库. 封闭系的能量$E_c$可以连续变化, 就要求整个孤立系的能量$E_i$非常大, 才能满足封闭系的能量可以取任意值的条件. 等价于要求热库的能量$E_r$很大, $E_c\ll E_r$

在封闭系与热库达成平衡时, 他们可以看作是两个孤立系. 这样就回到了前面定义孤立系的平衡状态.

#### 封闭系的$\rho$

==问题:这样忽略了粒子的交换. 在粒子可以区分的前提下, 这样做没有关系. 只要跟踪子系统的全部粒子即可, 在粒子不可以跟踪 没有确定轨迹的情况下, 这样做还成立吗?==
仿照推导微正则分布的方法, 利用两个归一化条件,
$$
\begin{align*}
1&=\int\rho_cd\Gamma_c\\
1&=\int \rho_sd\Gamma_s\\
&=\iint \rho_s d \Gamma_rd\Gamma_c\\
&=\int \left(\int\rho_sd\Gamma_r\right)d\Gamma_c
\end{align*}
$$

得到$\rho_c$的表达式
$$
\begin{align*}
\rho_c&= \int \rho_sd\Gamma_r\\
&=\int\frac{1}{\Omega_s(E_s)}\delta(E_s-(E_r+E_c)) d\Gamma_r\\
&=\int\frac{1}{\Omega_s(\varepsilon_s)}\delta(\varepsilon_s-(E_r+E_c))d\Gamma_r\\
&=\int\frac{1}{\Omega_s(\varepsilon_s)}\delta(E_r-(\varepsilon_s-E_c))d\Gamma_r, \quad (\delta(x)=\delta(-x))\\
&=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_s(\varepsilon_s)}\\
\end{align*}
$$
这样就把未知的孤立系的分布函数表示成了已知的$\Omega$的比值.

再利用$k_0\ln\Omega=S$, 将$\rho$化简. 这里利用前面得到的结论$\frac{1}{T}=\frac{d S}{d E}$, 进行计算.
$$
\begin{align*}
\rho_c&=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_s(\varepsilon_s)}\\
&=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_b(\varepsilon_s)}\cdot\frac{\Omega_b(\varepsilon_s)}{\Omega_s(\varepsilon_s)}\\
&=e^{S_b(\varepsilon_s-E_c)-S_b(\varepsilon_s)}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
&=e^{\frac{S_b(\varepsilon_s-E_c)-S_b(\varepsilon_s)}{E_c}\cdot E_c}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
\xrightarrow{E_c\ll\varepsilon_s}&=e^{\left.\frac{S_b(E)}{d E}\right|_{E=\varepsilon_s}\cdot E_c}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
&=e^{\frac{1}{k_0 T_r}\cdot E_c}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}
\end{align*}
$$
> 注意这里可以像推导孤立系的平衡一样, 利用
> $$
> \rho^{isolated}_c=\frac{1}{\Omega_c(E_c)\delta(E_c-\varepsilon_c)}\\
>
> \begin{align*}
> 1 &= \int\rho^{equilibrium}_cd\Gamma_c\\
> &=\iint \rho_s d\Gamma_s d\Gamma_ c\\
> \Rightarrow \rho^{equilibrium}_c&=\int \rho_s d\Gamma_s\\
> &=\int\frac{1}{\Omega_s(E_s)}\delta(E_s) d\Gamma_s\\
> &=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_s(\varepsilon_s)}
> \end{align*}
> $$
> 再利用平衡时$\rho_c^{equlibrium}=\rho_c^{isolated}$, 但是可以预见,这样计算并不会得到新的结果. 这样计算将会重复之前的过程得到热库和子系统(封闭系)温度相等的结论.
>
> 也就是说, 封闭系和孤立系的平衡条件是一样的. 用于划分等价类的函数是一样.




### 开放系的平衡

按照求封闭系的思路, 总可以把一个开放系看成是一个孤立系的一部分. 孤立系的其余部分称为粒子库, 同时也是热库. 封闭系的能量$E_c$和粒子数$N_c$可以连续变化, 就要求整个孤立系的能量$E_i$和粒子数$N_i$非常大, 才能满足封闭系的能量可以取任意值, 粒子数可以任意多的条件. 等价于就要求粒子库的能量$E_r$, $N_r$很大, $E_c\ll E_r$
$$
\begin{align*}
\rho_o^{\mathrm{isolated}}&=\frac{1}{\Omega_o(E_o)}\delta(E_o-\varepsilon_o)\delta(N_o-n_o)\\
\delta(E_o-\varepsilon_o)&=\frac{\Omega_c(E_c)\Omega_r(\varepsilon_s-E_a)}{\Omega_s(E_s)}\\
\rho_o^{\mathrm{isolated}}&=\frac{\Omega_r(E_r)}{\Omega_s(E_s)}\xrightarrow{E_i-E_r=E_c \ll E_i}\frac{\Omega_r(E_i)}{\Omega_i(E_i)}
\end{align*}
$$

#### 开放系的平衡态







## 遇到的问题

到目前为止我们通过第一性的推导得到了各种各样的宏观可测量如温度, 下面要回答的问题是, 这些量如何与实验相联系?



## 量子描述

### 回顾

在经典力学的描述中, 从刘维尔定理出发, 根据粒子的可区分性建立了$\ln\rho$的可加性. 然后依据观测量的期望值的定义, 将概率密度表示为$\rho$的函数. 通过定义能态密度$\Omega$, 求出了$\rho$. 接下来通过定义不同的平衡, 得到了不同的划分等价类的函数, 得到了一系列宏观量.

量子力学与经典力学的每一点不同都将反映在上述的推导过程中. 但是上述推导过程的差别, 可以用一系列替换来完成. 下面来推导这些替换, 并说明如何从经典描述过渡到量子描述.










# 附录
## $\delta$函数的性质

性质一:
$$
\int^{+\infty}_{-\infty}\delta(ax)dx =\frac{1}{\left| a\right|}\int^{+\infty}_{-\infty}\delta(y)dy \label{deltaax}
$$
证明:
$$
\int^{+\infty}_{-\infty}\delta(ax)dx =
\begin{cases}
\int^{+\infty}_{-\infty}\delta(y)\frac{dy}{a}= \frac{1}{a}\int^{+\infty}_{-\infty}\delta(y) dy ,\quad (a>0) \\\\
\int^{\color{Red}-\infty}_{\color{Red}+\infty}\delta(y)\frac{dy}{a} =-\frac{1}{a}\int^{\color{Red}+\infty}_{\color{Red}-\infty}\delta(y) dy ,\quad (a<0) \end{cases} \notag
$$
性质二:
$$
\delta(f(x))=\sum_{i}\frac{\delta(x-a_i)}{\lvert f'(a_i)\rvert}, \qquad \mathrm{where}\ f(a_i)=0
$$


证明:
$$
\begin{align*}
\int^{+\infty}_{-\infty}g(x)\delta\left(f(x)\right)dx &=\sum_{i}{\int^{a_i+\varepsilon}_{a_i-\varepsilon}g(x)\delta\left(f(x)\right)dx}\\
& \qquad\qquad\uparrow 只在f(x)=0时 \delta 函数才不为零, 取f(x)=0的邻域计算 \\
\notag\xrightarrow{Taylor\ expension} &= \sum_{i}{\int^{a_i+\varepsilon}_{a_i-\varepsilon}g(x)\delta\left(f(a_i)+f'(a_i)x + \mathcal{O}(x^2)\right)dx}\\
\xrightarrow{\varepsilon\rightarrow 0}&=\sum_{i}\int^{a_i+\varepsilon}_{a_i-\varepsilon}g(x)\delta\left(f'(a_i)x \right)dx\\
\xrightarrow{\mathrm{use\ eqn. \ \ref{deltaax}}}&= \sum_{i}\frac{g(a_i)}{\lvert f'(a_i)\rvert}
\end{align*}
$$
同时注意到
$$
\begin{align*}
\sum_{i}\frac{g(a_i)}{\lvert f'(a_i)\rvert}&=\int^{+\infty}_{-\infty}\sum_{i}\frac{\delta(x-a_i)}{\lvert f'(a_i)\rvert}dx\\
&=\int^{+\infty}_{-\infty}g(x)\delta\left(f(x)\right)dx
\end{align*}
$$
得到
$$
\begin{align}
\delta(f(x))&=\sum_{i}\frac{\delta(x-a_i)}{\lvert f'(a_i)\rvert}, \qquad \mathrm{where}\ f(a_i)=0 \notag\\
\int_{-\infty}^{+\infty}\delta(f(x))&=\int^{+\infty}_{-\infty}1\cdot\delta\left(f(x)\right)dx =\sum_{i}\frac{1}{\lvert f'(a_i)\rvert}, \qquad \mathrm{where}\ f(a_i)=0 \label{integralofdeltafx}
\end{align}
$$
## 斯特灵公式

斯特灵公式是对$N!$的近似公式. 斯特灵公式的优点在于, 随着N的增大, 近似结果与真实值的误差可以任意小. 在$N\rightarrow \infty$时, 可以取等号. 对于研究的系统, 总是认为N无穷大. 这就是分析可测量可以利用斯特灵公式的数学依据.
$$
\Gamma(z)=\left(z-\frac{1}{2}\right)\ln(z)-z+\frac{\ln 2 \pi}{2}
$$
我们常用的公式是:
$$
\ln(N!)=\sum_{x=1}^N{\ln{x}}\approx\int_1^N\ln{x}dx=N\ln{N}-N+1
$$

对$\Gamma$函数也有斯特灵公式
$$
\Gamma(x+1)\approx \sqrt{2\pi x}x^{x}e^{-x}\\

\therefore
\Gamma(x)=\frac{\Gamma(x+1)}{x}\approx \sqrt{2\pi x}x^{x-1}e^{-x}
$$


误差有:







# 参考文献

[^\Gamma函数的性质]: https://en.wikipedia.org/wiki/Gamma_function#General

[]

[]