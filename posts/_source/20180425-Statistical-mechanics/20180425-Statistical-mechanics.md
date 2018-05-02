# 第一性原理热统(未完成)

[TOC]

## 系统

统计力学应当不依赖于具体的力学规律,而只是关于群体现象的一种描述. 对于气体可以应用统计力学, 对于上亿个皮球也可以应用统计力学. 不同之处在于系综不同, 理想气体是全同粒子,而宏观的皮球则可以区分.

实验结果告诉我们理想气体必须是量子系综. 我们先从经典系综入手, 看什么时候会与试验矛盾, 并研究在一定条件下如何过渡到量子系综. 

无论哪种情况, 我们这里讨论的系统指的都是相空间的一个点. 系统在演化的过程中在相空间形成一条轨迹,每一点对应的就是这个系统所处的状态. 无论是经典力学还是量子力学, 给定能量和粒子数, 孤立系统如何演化都可以由初始条件来确定. 因为我们难以得到一个庞大的系统的初始条件, 我们只研究那些依赖于能量和粒子数的性质(宏观性质), 这就是热力学研究的性质, 因此在热力学中, 我们==可以仅用能量和粒子数来描述一个系统==. 

==用量子力学和经典力学描述系统的差别, 虽然根本上说求别在于运动方程是薛定谔方程还是哈密顿方程. 但是因为我们可以仅用能量和粒子数来描述一个系统, 这两种描述的差别在于这两者的推论: 刘维尔定理是否成立,能量是不是连续分布, 粒子是不是全同的.???==

## 相空间数密度$\rho$的性质

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

化为面积分, 并且注意到$\nabla=(\frac{\partial}{\partial q_i}\hat{q}_i,\frac{\partial}{\partial p_i}\hat{p}_i)$, 即$\nabla$算符只与对应的速度项作用
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

### 对系统的观测

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
\mathbb{P}(p,q)d\Gamma =\rho(p,q)d \Gamma
$$
即概率密度就是系综内的系统分布函数. 要求系统的宏观量, 就要求系统的概率分布,就要求数密度函数$\rho(p,q)$的值.

==**<u>也就是说, $\rho$包含了系统的全部信息</u>**==

### 系统的宏观量计算方法

为了得到系统的观测量的表达式, 要从粒子满足的运动方程出发, 得到$\rho$的表达式, 才能第一性地计算相应的宏观量.

```mermaid
graph LR
A(微观运动方程)-->B(微观态空间)
B--> C(态空间体积)
C-->|对能量微分|D(能态密度)
D-->E(ρ)
E-->F(观测量)
```

## 系统的分类与对应的$\rho$, 宏观量的计算

### 系统的分类
#### 孤立系

最直观的系统是孤立系. 孤立系的能量和粒子数都是守恒的. 与之对应的还有能量不守恒但粒子数守恒的封闭系, 能量与粒子数都不守恒的开放系.
孤立系由于能量不变, 孤立系的能量只有一个允许值
$$
\rho(p,q)=\rho(\varepsilon_0)\delta(E-\varepsilon_0)
$$

#### 封闭系

总可以把一个封闭系看成是一个孤立系的一部分. 孤立系的其余部分称为热库. 封闭系的能量$E_c$可以连续变化, 就要求整个孤立系的能量$E_i$非常大, 才能满足封闭系的能量可以取任意值的条件. 等价于要求热库的能量$E_r$很大, $E_c\ll E_r$ . 封闭系的$\rho$要利用孤立系的平衡来得出.

#### 开放系

按照求封闭系的思路, 总可以把一个开放系看成是一个孤立系的一部分. 孤立系的其余部分称为粒子库, 同时也是热库. 封闭系的能量$E_c$和粒子数$N_c$可以连续变化, 就要求整个孤立系的能量$E_i$和粒子数$N_i$非常大, 才能满足封闭系的能量可以取任意值, 粒子数可以任意多的条件. 等价于就要求粒子库的能量$E_r$, $N_r$很大, $E_c\ll E_r$. 开放系的$\rho$也要利用孤立系的平衡来得出.

### 孤立系

#### 孤立系的$\rho$

所有的系统都可以看作是孤立系统的一部分. 下面讨论孤立系的观测量的表达式.

最直观的系统是孤立系. 孤立系的能量和粒子数都是守恒的. 与之对应的还有能量不守恒但粒子数守恒的封闭系, 能量与粒子数都不守恒的开放系.
孤立系由于能量不变, 孤立系的能量只有一个允许值
$$
\rho(p,q)=\rho(\varepsilon_0)\delta(E-\varepsilon_0)
$$
#### 孤立系的观测值计算

##### $\ln{\rho}$的可加性

经典力学的系统之间的区别, 只有系统的粒子数和总能量$(E,N)$就可以确定.

把一个系统$S$划分为两个子系统$A$,$B$
$$
N_S=\int{\rho_S \delta(E_S-\varepsilon_0) d \Gamma_S}\notag\\
N_A=\int{\rho_A \delta(E_A-E_1) d \Gamma_A}\notag\\
N_B=\int{\rho_B \delta(E_B-E_2) d \Gamma_B}\notag\\
$$
其中$E_S$和$E_A$,$E_B$的关系为:
$$
\begin{align*}
N_S(\varepsilon_0)&=\int{ dE_a N_A(E_a) N_B(\varepsilon_0-E_a)}\\
&=\int{ dE \left(\int{\rho_A \delta(E_A-E_a) d \Gamma_A}\int{\rho_B \delta(E_B-E_a-\varepsilon_0) d \Gamma_B}\right)}\\
&=\int{\rho_A\rho_B \left(\int{dE_A \delta(E_A-E_a)\delta(E_B-E_a-\varepsilon_0)}\right) d\Gamma_A d\Gamma_B }\\
&=\int{\rho_A\rho_B \delta(E_B-E_A-\varepsilon_0) d\Gamma_A d\Gamma_B }\\
&=\int{\rho_S \delta(E_S-\varepsilon_0) d \Gamma_S}
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


##### 概率密度的表达式

利用$\delta$函数的性质 式$(\ref{integralofdeltafx})$ $\int_{-\infty}^{+\infty}\delta(f(x))=\sum_{i}\frac{1}{\lvert f'(a_i)\rvert}, \quad  f(a_i)=0$ 得到:
$$
\begin{align}
\int\delta(E-\varepsilon_0)d\Gamma&=\int\delta(E(p,q)-\varepsilon_0)[dp][dq] \notag\\
&= \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=\varepsilon_0}} \label{deltaE-E0}\\
\end{align}
$$
利用式$(\ref{deltaE-E0})​$得到
$$
\begin{align*}
\int \mathbb{P}d\Gamma &=\int\rho(p,q)d \Gamma\\
& =\int\rho(\varepsilon_0)\delta(E-\varepsilon_0)d\Gamma\\
&= \rho(\varepsilon_0)\int\delta(E-\varepsilon_0)d\Gamma\\
& = \rho(\varepsilon_0) \cdot  \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=\varepsilon_0}} \\
\end{align*}
$$
又有$\int \mathbb{P}d\Gamma =1​$, 得到$\rho(\varepsilon_0)​$
$$
\rho(\varepsilon_0) \cdot \frac{1}{\left. \frac{dE}{d\Gamma} \right| _{E=\varepsilon_0}} =1 \notag
$$
带入$\rho(p,q)d \Gamma=\rho(\varepsilon_0)\delta(E-\varepsilon_0)d\Gamma$  得到:
$$
\rho(p,q)= \left. \frac{dE}{d\Gamma} \right| _{E=\varepsilon_0}  \delta(E-\varepsilon_0) = \frac{1}{\left. \frac{d\Gamma}{dE} \right| _{E=\varepsilon_0}} \delta(E-\varepsilon_0)  \notag
$$
##### 概率密度用能态密度表达

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
\rho(E)=\frac{1}{\Omega(\varepsilon_0)} \delta(E-\varepsilon_0)\\
$$
##### 系统宏观量用能态密度表达

至此得到
$$
\begin{align}
\langle O\rangle&=\int_{-\infty}^{{-\infty}}{O(p,q)\mathbb{P}(p,q)dpdq}\notag\\
&=\int_{-\infty}^{{-\infty}}O(p,q)\rho(p,q)d \Gamma \notag\\
&=\int_{-\infty}^{{-\infty}}O(p,q)\frac{1}{\Omega(\varepsilon_0)} \delta(E-\varepsilon_0)d\Gamma \notag\\
&=\frac{1}{\Omega(\varepsilon_0)} \int_{-\infty}^{{-\infty}}O(p,q)\delta(E-\varepsilon_0)d\Gamma \\
\end{align}
$$
#### 一些特殊的宏观量

##### 能量

==能量和粒子数是仅有的确定系统微观状态的物理量==, 
$$
\begin{align}
\langle H\rangle &=\frac{1}{\Omega(\varepsilon_0)} \int_{-\infty}^{{-\infty}}H(p,q)\delta(E-\varepsilon_0)d\Gamma \notag\\
& =\int_{-\infty}^{{-\infty}}\varepsilon_0  \frac{1}{\Omega(\varepsilon_0)} d\Gamma \notag\\
& = \varepsilon_0\int_{-\infty}^{{-\infty}}  \frac{1}{\Omega(\varepsilon_0)} d\Gamma \notag\\
= \varepsilon_0
\end{align}
$$


#### 孤立系的平衡

计算了孤立系的观测值, ==我们可以用实验验证相应的系统(可以吗?)== 

接下来研究孤立系的平衡问题,即: 什么时候一个孤立系可以被看成和另外一个孤立系等价?

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
得到: 
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

### 封闭系

总可以把一个封闭系看成是一个孤立系的一部分. 孤立系的其余部分称为热库. 封闭系的能量$E_c$可以连续变化, 就要求整个孤立系的能量$E_i$非常大, 才能满足封闭系的能量可以取任意值的条件. 等价于要求热库的能量$E_r$很大, $E_c\ll E_r$

在封闭系与热库达成平衡时, 他们可以看作是两个孤立系. 这样就回到了前面定义孤立系的平衡状态.

#### 封闭系的$\rho$

仿照推导微正则分布的方法, 利用两个归一化条件, (总系统是一个孤立系)
$$
\begin{align*}
1&=\int\rho_cd\Gamma_c\\
1&=\int \rho_sd\Gamma_s\\
&=\iint \rho_s d \Gamma_rd\Gamma_c\\
&=\int \left(\int\rho_sd\Gamma_r\right)d\Gamma_c
\end{align*}
$$
得到$\rho_c$的表达式(热库的能量基本不改变, 因而也是一个孤立系)
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

#### 封闭系的稳定

因为能量可交换, 我们自然要问, 封闭系的稳定一定与孤立系的稳定判定不同. 也就是我们要推导封闭系等价的条件. 什么量一样, 两个封闭系就是一样的? 能量一样, 孤立系就一样. 温度和压强一样, 两个封闭系就一样.

封闭系的稳定如何定义成了我们要研究的问题. 

##### *<u>封闭系的稳定如何定义</u>*

封闭系的平衡似乎是一个很难说清的问题. 

封闭系与温度恒定的热库相接触, 因此封闭系温度是一个定值, 处处温度相同. 但是孤立系的稳定条件就是是温度处处相同. 那么封闭系的平衡条件难道和孤立系的一样吗? 封闭系允许能量交换, 也就是说, 即使封闭系处于平衡状态, 也可以与外界(热库) 源源不断地交换能量. 这一点是孤立系平衡所不允许的.

可以这样概括封闭系和孤立系的的平衡条件的不同: 封闭系的平衡条件是温度不变, 而孤立系的平衡条件是能量不变(尽管从能量不变可以推出温度不变).

也就是说, **封闭系平衡的条件比孤立系平衡的条件更苛刻**, 这是因为孤立系的约束比孤立系要强, 平衡时只用少量的约束就可以让孤立系平衡, 但是封闭系就要更多的约束条件才能达到一样的平衡.

封闭系的温度不变, 能量改变意味着什么呢? ==意味着气体的能量改变不是通过热交换发生的, 气体的能量改变是通过对外做功产生的???.==要定义气体对外做功, 显然需要定义气体的压强.

##### 封闭系的熵

封闭系的平衡是建立在孤立系的平衡条件之上的. 我们要研究的是, 在孤立系平衡的条件上, 再加上一个什么条件可以使得两个封闭系平衡?

要回答这个问题, 我们先研究当两个封闭系可以看作是孤立系时, 满足什么条件. 由孤立系平衡条件, 二者温度相同.

重新考虑整个体系. 系统平衡时没有能量流动. 把总系统S看作孤立系, 系统AB都是孤立系

再利用$k_0\ln\Omega=S$, 将$\rho$化简. 这里利用前面得到的结论$\frac{1}{T}=\frac{d S}{d E}$, 进行计算.
$$
\begin{align*}
\rho_c&=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_s(\varepsilon_s)}\\
&=\frac{\Omega_r(\varepsilon_s-E_c)}{\Omega_b(\varepsilon_s)}\cdot\frac{\Omega_b(\varepsilon_s)}{\Omega_s(\varepsilon_s)}\\
&=e^{S_b(\varepsilon_s-E_c)-S_b(\varepsilon_s)}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
&=e^{\frac{S_b(\varepsilon_s-E_c)-S_b(\varepsilon_s)}{(-E_c)}\cdot (-E_c)}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
\xrightarrow{E_c\ll\varepsilon_s}&=e^{\left.\frac{S_b(E)}{d E}\right|_{E=\varepsilon_s}\cdot (-E_c)}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}\\
&=e^{-\frac{1}{k_0 T_r}\cdot E_c}\cdot e^{S_b(\varepsilon_s)-S_s(\varepsilon_s)}
\end{align*}
$$
得到封闭系的$\rho$的表达式:
$$
\rho_c(E)=e^{-\psi -\frac{E}{k_0 T}}, \quad \psi=-\left(S_b(\varepsilon_s)-S_s(\varepsilon_s)\right)
$$
其中$\psi$是与研究的子系统无关的量.
由$\rho$的归一性:
$$
\begin{align*}
1&=\int\mathbb{P}(p,q)d\Gamma\\
&=\int\rho_c(E(p,q))d\Gamma\\
&=\int e^{-\psi -\frac{E}{k_0 T}} d\Gamma\\
\end{align*}
$$
可以得到$\psi$的表达式:
$$
\begin{align*}
e^{\psi}=\int e^{-\frac{E}{k_0 T}} d\Gamma\\
\end{align*}
$$
等号右边全是已知量. 因此定义$e^\psi=Z$, 将​$\rho$重写为:
$$
\begin{align}
Z&=e^{\psi}=\int e^{-\frac{E}{k_0 T}} d\Gamma \\
\rho_c&=\frac{1}{Z}e^{-\frac{E}{k_0 T}}=\frac{e^{-\frac{E}{k_0 T}}}{\int e^{-\frac{E}{k_0 T}}  d\Gamma}
\end{align}
$$
当两个封闭系可以看作是孤立系时, 这样一来,$\psi=-\left(S_b(\varepsilon_s)-S_s(\varepsilon_s)\right)$中二者之差并不独立于研究的系统.
$$
\begin{align}
\quad \psi &=-\left(S_b(\varepsilon_s)-S_s(\varepsilon_s)\right)\\
&=-\left(S_b(\varepsilon_s)-(S_b(\varepsilon_b)+S_c(\varepsilon_c))\right)\\
&=-\left((S_b(\varepsilon_s)-S_b(\varepsilon_b))-S_c(\varepsilon_c)\right)\\
&=-\left(\frac{S_b(\varepsilon_b+\varepsilon_c)-S_b(\varepsilon_b)}{\varepsilon_c}\varepsilon_c-S_c(\varepsilon_c)\right)\\
&=-\left(\left.\frac{\partial S_b(E)}{\partial E}\right|_{E=\varepsilon_b}\varepsilon_c-S_c(\varepsilon_c)\right)\\
&=-\left(\frac{\varepsilon_c}{k_0 T}-S_c(\varepsilon_c)\right)\\
\end{align}
$$
因此有
$$
\begin{align}
\psi=-\frac{1}{{k_0 T}}\left(E-T\cdot S(E)\right)\\
\end{align}
$$
因此借助孤立系的熵, 我们定义了一个新的可加量$\psi=\frac{1}{k_0T}(E-TS)$

##### 封闭系的划分

封闭系的能量可以变化, 因此能量一定不是衡量两个封闭系平衡的条件. 仿照孤立系的平衡条件, 我们选取两个封闭的系统, 按照前面的方法, 先将两个封闭系看作是无关的, 再描述封闭系的平衡.

按照之前的方法, 我们要把一个封闭系划分成两个封闭系, 然后推导出这两个孤立系相等的量. 然后定义一个封闭系处于平衡态, 当且仅当无论如何划分封闭子系, 两个封闭子系都有相等的量的条件.

先考虑两个无关的封闭系A,B. 它们与同一个热库相接触, 但是彼此之间隔绝,没有能量粒子或其他交换.

将一个封闭系S分为两个封闭系A和B. 由封闭系的定义, 他们是同一个封闭系$S$的不同部分,因此两个封闭子系的温度是同一个定值, 都等于总系统S的温度 $T_a=T_b$.
$$
\begin{align*}
\rho^{closed}_a&=\frac{1}{Z_a}e^{-\frac{E_a}{k_0T_a}}\\
\rho^{closed}_b&=\frac{1}{Z_b}e^{-\frac{E_b}{k_0T_b}}\\
\end{align*}
$$

对于平衡中的封闭系A和B
$$
\begin{align*}
1 &= \int\rho^{equilibrium}_ad\Gamma_a\\
&=\iint \rho_s d\Gamma_a d\Gamma_ b\\
\Rightarrow \rho^{equilibrium}_a&=\int \rho_s d\Gamma_b\\
&=\int \frac{1}{Z_s}e^{-\frac{E_s}{k_0T_s}} d\Gamma_b\\
\end{align*}
$$
==能量的可加性始终成立???==, $E_a+E_b=E_s$.得到

$$
\begin{align*}
\rho^{closed}_a&= \rho^{equilibrium}_a\\
\frac{1}{Z_a}e^{-\frac{E_a}{k_0T_a}}&=\int \frac{1}{Z_s}e^{-\frac{E_s}{k_0T_s}} d\Gamma_b\\
\frac{1}{Z_a}e^{-\frac{E_a}{k_0T}}&=\frac{1}{Z_s}\int e^{-\frac{E_a}{k_0T}-\frac{E_b}{k_0T}}d\Gamma_b\\
&=\frac{1}{Z_s} e^{-\frac{E_a}{k_0T}} \int e^{-\frac{E_b}{k_0T}}d\Gamma_b\\
&=\frac{1}{Z_s} e^{-\frac{E_a}{k_0T}}\cdot Z_b\cdot \int \frac{1}{Z_b}e^{-\frac{E_b}{k_0T}}d\Gamma_b\\
&=\frac{Z_b}{Z_s} e^{-\frac{E_a}{k_0T}}
\end{align*}
$$

得到Z是一个可乘量, $\ln Z$是一个可加量
$$
\begin{align}
Z_aZ_b&=Z_s\\
\ln{Z_a}+\ln{Z_b}&=\ln{Z_s}
\end{align}
$$
定义$\psi=\ln{Z}$, 则有$Z=e^{-\psi}$

##### 封闭系的稳态

封闭系稳定应该如下定义:

> 1. 将封闭系S划分为两个封闭子系A和B, 如论如何划分, 这两个封闭子系都好像彼此隔绝.
> 2. 整个封闭系S表现得像一个孤立系

这样一来就可以利用前面推导的结果.

> > 注意这里的推导和孤立系的稳定推导很不一样, 因为孤立系没有可以改变的量, 因此直接计算即可, 这里封闭系的能量可以改变, 因此这里要先定义能量的改变, 再使得能量的改变量dE为零

先定义能量的改变量:

由于温度不会变化, 封闭系的能量变化只能是对外做功有位移$dq$ 导致的.
$$
\begin{align*}
E_a&=F_a+TS_a\\
dE_a&=dF_a+S_adT_a\\
&=(\frac{\partial F}{\partial T}dT+\frac{\partial F}{\partial q}dq)\\
&=\frac{\partial E_a}{\partial q_a}dq_a
\end{align*}
$$
因此有:
$$
dE_b=\frac{\partial E}{\partial q_b}d q_b
$$
由于总系统是一个孤立系, 能量改变量为0
$$
\begin{align*}
dE_a+dE_b&=dE_s=0\\
\end{align*}
$$
至此我们得到封闭系等价的重要关系
$$
dE_a=-dE_b
$$
这与孤立系等价关系具有类比;
$$
\frac{\partial S_1 }{\partial E_1}=\frac{\partial S_2}{\partial E_2}
$$
继续推导, 定义$P_a:=\frac{\partial H}{\partial q}$可以得到:
$$
\begin{align}
\frac{\partial H_a}{\partial q_a}dq_a&=-\frac{\partial H_b}{\partial q_b}dq_b\\
P_adV_a&=-P_bdV_b&
\end{align}
$$
由于整体是一个孤立系, $dV_a+dV_b=0$ 得到:
$$
P_a=P_b
$$

#### 封闭系的观测量

##### 封闭系的能量

由观测量的定义:
$$
\begin{align}
\langle E\rangle &=\int H(p,q) \mathbb{P}(p,q) d\Gamma\notag\\
& =\int H(p,q) \rho_cd\Gamma\notag\\
&=\int E\frac{1}{Z}e^{-\frac{E}{k_0 T}}\notag\\
&=\frac{1}{Z}\int E e^{-\frac{E}{k_0 T} } d\Gamma\\
\end{align}
$$
注意到
$$
\begin{align*}
\frac{\partial Z}{\partial (\frac{1}{k_0T})}&=\frac{\partial }{\partial (\frac{1}{k_0T})}{\int  e^{-\frac{E}{k_0 T} } d\Gamma}\\
\xrightarrow{偏导与积分变量不同可交换}&=\int \frac{\partial }{\partial (\frac{1}{k_0T})} e^{-\frac{E}{k_0 T} } d\Gamma\\
&=\int -E e^{-\frac{E}{k_0 T} } d\Gamma\\
&=-\int E e^{-\frac{E}{k_0 T} } d\Gamma\\
\end{align*}
$$
带入上式得到
$$
\begin{align}
\langle E\rangle 
&=\frac{1}{Z}\int E e^{-\frac{E}{k_0 T} } d\Gamma \notag\\
&=-\frac{1}{Z}\frac{\partial Z}{\partial (\frac{1}{k_0T})}\notag \\
&=-\frac{\partial}{\partial (\frac{1}{k_0T})} \ln Z\\
&=-\frac{\partial}{\partial (\frac{1}{k_0T})} \psi\\
\end{align}
$$


### 开放系

按照求封闭系的思路, 总可以把一个开放系看成是一个孤立系的一部分. 孤立系的其余部分称为粒子库, 同时也是热库. 开放系的能量$E_o$和粒子数$n_o$可以连续变化, 就要求整个孤立系的能量$E_s$和粒子数$n_s$非常大, 才能满足封闭系的能量可以取任意值, 粒子数可以任意多的条件. 等价于就要求粒子库的能量$E_r$, $n-r$很大, $E_o\ll E_r$, $n_o\ll n_s$.

#### 开放系的$\rho$

$$
\begin{align}

S(E)&=\ln{\Omega(E)} \notag\\

&=\ln\left(V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} \right)\\

\end{align}
$$

仿照前面的做法, 注意到开放系粒子数$n_o$可以变化. 系统的微观分布函数也会随之改变. 也就是说, $\rho$和$\Omega$不仅仅是$E$的函数, 也是$n$的函数. 因此$\rho=\rho(n,E)$, $\Omega=\Omega(n,E)$

为了方便地表示$\underbrace{\int\cdots\int}_{n_o}\rho_od\Gamma_o $和$\underbrace{\int\cdots\int}_{{n_o}^\prime}{\rho_o}^\prime d{\Gamma_o}^\prime $的不同, 把积分 $\underbrace{\int\cdots\int}_{n_o}d\Gamma_o$记为$\int d\Gamma_{o,n_o}$, 为了清晰起见, 先保留$\underbrace{\int\cdots\int}_{n_o}d\Gamma_o$ 记法.
$$
\begin{align*}
1&=\underbrace{\int\cdots\int}_{n_s}\rho_{s}(s_o,E_o)d\Gamma_{s,n_s}\\
&=\underbrace{\int\cdots\int}_{n_o}\underbrace{\int\cdots\int}_{n_r}\rho_{s}(s_o,E_o) d\Gamma_{r,n_r}d\Gamma_{o,n_o}\\
&=\underbrace{\int\cdots\int}_{n_o}\left(\underbrace{\int\cdots\int}_{n_r}\rho_{s}(s_o,E_o) d\Gamma_{r,n_r}\right)d\Gamma_{o,n_o}\\
1&=\underbrace{\int\cdots\int}_{n_o}\rho_{o}(n_o,E_o)d\Gamma_{o,n_o}
\end{align*}
$$
得到$\rho_{o,n_o}$的表达式:
$$
\begin{align*}
\rho_{o,n_o}^{equlibrium}&=\underbrace{\int\cdots\int}_{n_r}\rho_{s}(s_o,E_o) d\Gamma_{r,n_r}\\
&=\int \rho_{s}(s_o,E_o) d\Gamma_{r,n_r}\\
&=\int \frac{1}{\Omega_{s}(n_s,E_s)}\delta(E_s-\varepsilon_s)d\Gamma_{r,n_r}\\
&=\int \frac{1}{\Omega_{s}(n_s,E_s)}\delta(E_o+E_r-\varepsilon_s)d\Gamma_{r,n_r}\\
&=\frac{\Omega_{r}(n_r,\varepsilon_s-E_o)}{\Omega_{s}(n_s,\varepsilon_s)}\\
&=\frac{\Omega_{r}(n_r,\varepsilon_s-E_o)}{\Omega_{s}(n_s,\varepsilon_s)}\\
\end{align*}
$$

#### 开放系的稳定

重复类似正则分布的过程, 开放系的两个子系都是开放系.如果这两个开放系平衡, 他们都可以看作是封闭系, 也可以看作是孤立系,

也就是开放系的平衡要建立在封闭系的平衡之上. 封闭系的平衡又要建立在孤立系的平衡之上.

```mermaid
graph LR
subgraph 条件
	A[T相等]-.->|附加|B[P相等]
	B-.->|附加|C[μ相等]
end
subgraph 平衡
	A-->|得到|D[孤立系平衡]
	B-->|得到|E[封闭系平衡]
	D-->|作为基础|E
	C-->|得到|F[开放系平衡]
	E-->|作为基础|F
end

```

##### 开放系的熵

开放系的两个子系都是开放系.如果这两个开放系平衡, 他们都可以看作是封闭系, 也可以看作是孤立系,

利用之前定义的封闭系的熵(用孤立系的也行, 只不过多了一次推导)
$$
\begin{align*}
\rho^{equlibrium}_{o,n_o}&=\frac{\Omega_{r}(n_r,\varepsilon_s-E_o)}{\Omega_{s}(n_s,\varepsilon_s)}\\
&=\frac{\Omega_{r}(n_r,\varepsilon_s-E_o)}{\Omega_{r}(n_s,\varepsilon_s-E_o)}\cdot\frac{\Omega_{r}(n_s,\varepsilon_s-E_o)}{\Omega_{r}(n_s,\varepsilon_s)}\cdot\frac{\Omega_{r}(n_s,\varepsilon_s)}{\Omega_{s}(n_s,\varepsilon_s)}\\
&=e^{S_r(n_r,\varepsilon_s-E_o)-S_r(n_s,\varepsilon_s-E_o)}e^{S_r(n_s,\varepsilon_s-E_o)-S_r(n_s,\varepsilon_s)}e^{S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s)}\\
&=e^{\frac{S_r(n_s-n_o,\varepsilon_s-E_o)-S_r(n_s,\varepsilon_s-E_o)}{-n_o}(-n_o)}e^{\frac{S_r(n_s,\varepsilon_s-E_o)-S_r(n_s,\varepsilon_s)}{-E_o}(-E_o)}e^{S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s)}\\
&=e^{\left.\frac{\partial S_r}{\partial n}\right|_{n=n_s}(-n_o)}e^{\left.\frac{\partial S_r}{\partial E}\right|_{E=\varepsilon_r}(-E_o)}e^{S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s)}\\
&=e^{\left.\frac{\partial S_r}{\partial E}\frac{\partial E}{\partial n}\right|_{n=n_s}(-n_o)}e^{\left.\frac{\partial S_r}{\partial E}\right|_{E=\varepsilon_r}(-E_o)}e^{S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s)}\\
&=e^{-\frac{1}{k_0T}\frac{\partial E}{\partial n}\cdot n_o}e^{-\frac{1}{k_0T}E_o}e^{S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s)}
\end{align*}
$$
得到$\rho$的表达式:
$$
\rho=-\zeta+\frac{\mu}{k_0T}N-\frac{1}{k_0T}E,\quad \zeta=-(S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s))
$$
同样得到$\zeta$的表达式, 并将$\rho$重写:
$$
Z=e^{\zeta}=\int e^{-\frac{1}{k_0T}\frac{\partial E}{\partial n}\cdot n_o}e^{-\frac{1}{k_0T}E_o}d\Gamma\\
\rho=\frac{1}{Z}e^{-\frac{1}{k_0T}\frac{\partial E}{\partial n}\cdot n_o}e^{-\frac{1}{k_0T}E_o}=\frac{e^{-\frac{1}{k_0T}\frac{\partial E}{\partial n}\cdot n_o}e^{-\frac{1}{k_0T}E_o}}{\int e^{-\frac{1}{k_0T}\frac{\partial E}{\partial n}\cdot n_o}e^{-\frac{1}{k_0T}E_o}d\Gamma}
$$
还是类似地, 当两个开放系可以看做两个封闭系时(把两个开放系看成孤立系也可以 只不过多了一次推导)
$$
\begin{align*}
\zeta&=-(S_r(n_s,\varepsilon_s)-S_s(n_s,\varepsilon_s))\\
&=-\bigg(\Big(S_r(n_s,\varepsilon_s)-S_r(n_r,\varepsilon_r)\Big)-S_o(n_o,\varepsilon_o)\bigg)\\
&=-\Bigg(\bigg(\Big(S_r(n_s,\varepsilon_s)-S_r(n_s,\varepsilon_r)\Big)+\Big(S_r(n_s,\varepsilon_r)-S_r(n_r,\varepsilon_r)\Big)\bigg)-S_o(n_o,\varepsilon_o)\Bigg)\\
&=-\left(\frac{S_r(n_s,\varepsilon_s)-S_r(n_s,\varepsilon_r)}{\varepsilon_o}\varepsilon_o+\frac{S_r(n_s,\varepsilon_r)-S_r(n_r,\varepsilon_r)}{n_o}n_o-S_o(n_o,\varepsilon_o)\right)\\
&=-\left(\frac{1}{k_0T}\varepsilon_o+\frac{\partial S}{\partial E}\frac{\partial E}{\partial n}-S_o(n_o,\varepsilon_o)\right)\\
&=-\left(\frac{1}{k_0T}\varepsilon_o+\frac{1}{k_0T}\frac{\partial E}{\partial n}-S_o(n_o,\varepsilon_o)\right)\\
\end{align*}
$$
定义化学势
$$
\mu=\frac{\partial E}{\partial n}
$$
得到:
$$
\begin{align*}
\zeta&=-\left(\frac{1}{k_0T}\varepsilon_o+\frac{1}{k_0T}\frac{\partial E}{\partial n}-k_0S_o(n_o,\varepsilon_o)\right)\\
&=-\frac{1}{k_0T}\left(\varepsilon_o+\mu-S_oT\right)
\end{align*}
$$

##### 开放系的划分

按照前面的方法, 先将两个封闭系看作是无关的, 再描述封闭系的平衡.

按照之前的方法, 我们要把一个开放系划分成两个开放系, 然后推导出这两个开放系相等的量. 然后定义一个开放系处于平衡态, 当且仅当无论如何划分封闭子系, 两个开放子系都有相等的量的条件.

先考虑两个无关的开放系A,B. 它们与同一个热库和粒子库相接触, 但是彼此之间隔绝,没有能量粒子或其他交换.

将一个开放系S分为两个开放系A和B. 由孤开放系的定义, 他们是同一个开放系$S$的不同部分. 开放系的温度和化学势是一个定值.  这两个开放系温度相等, 都等于总系统S的温度 $T_a=T_b$, ==化学势也都相等??? 这不是平衡条件吗??????? 为啥?????? 封闭系温度相等怎么来的???== 
$$
\rho_a^{uncoupled}=\frac{1}{Z_a}e^{-\frac{1}{k_0T}\mu_a\cdot n_a}e^{-\frac{1}{k_0T}E_a}\\
\rho_b^{uncoupled}=\frac{1}{Z_b}e^{-\frac{1}{k_0T}\mu_b\cdot n_b}e^{-\frac{1}{k_0T}E_b}
$$
对于平衡中的开放系A和B
$$
\begin{align*}
1 &= \int\rho^{equilibrium}_ad\Gamma_a\\
&=\iint \rho_s d\Gamma_a d\Gamma_ b\\
\Rightarrow \rho^{equilibrium}_a&=\int \rho_s d\Gamma_b\\
&=\int \frac{1}{Z_s}e^{-\frac{1}{k_0T}\mu_s\cdot n_s}e^{-\frac{1}{k_0T}E_s} d\Gamma_b\\
\end{align*}
$$
 $E_a+E_b=E_s$, $T_a=T_b$, $\mu_a=\mu_b=\mu_s$ 得到
$$
\begin{align*}
\rho^{uncoupled}_a&= \rho^{equilibrium}_a\\
\frac{1}{Z_a}e^{-\frac{1}{k_0T}\mu_a\cdot n_a}e^{-\frac{1}{k_0T}E_a} &= \int \frac{1}{Z_s}e^{-\frac{1}{k_0T}\mu_s\cdot n_s}e^{-\frac{1}{k_0T}E_s} d\Gamma_b\\
&= \int \frac{1}{Z_s}e^{-\frac{1}{k_0T}\mu_s\cdot (n_a+n_b)}e^{-\frac{1}{k_0T}(E_a+E_b)} d\Gamma_b\\
&=\frac{1}{Z_s}e^{-\frac{1}{k_0T}\mu_s n_a}e^{-\frac{1}{k_0T}E_a} \int e^{-\frac{1}{k_0T}\mu_s\cdot n_b }e^{-\frac{1}{k_0T} E_b } d\Gamma_b\\
&=\frac{Z_b}{Z_s}e^{-\frac{1}{k_0T}\mu_s n_a}e^{-\frac{1}{k_0T}E_a} 
\end{align*}
$$
得到$\ln{Z}$同样是一个可加量
$$
\begin{align}
Z_aZ_b&=Z_s\\
\ln{Z_a}+\ln{Z_b}&=\ln{Z_s}
\end{align}
$$

##### 开放系的稳态

开放系稳定应该如下定义:

> 1. 将开放系S划分为两个开放子系A和B, 如论如何划分, 这两个开放子系都好像彼此隔绝.
> 2. 整个开放系S表现得像一个孤立系, 也像一个封闭系

这样一来就可以利用前面推导的结果.

> > 注意这里的推导和孤立系的稳定推导很不一样, 因为孤立系没有可以改变的量, 因此直接计算即可, 这里封闭系的能量和粒子数可以改变, 因此这里要先定义能量和粒子数的改变, 再使得能量的改变量dE和粒子数的改变量dn为零

这样推不出来新的东西, 最后会得到dN=dN:



???





### 插曲: 以N个无相互作用的粒子体系推导系统的平衡参量

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

#### 解释温度的定义对应于温度

之前的定义T采用了直接指定的方式. 我们说这样计算得到的量就是温度, 它表征了两个孤立系的平衡条件. 但是我们没有说明这个量和日常经验中的温度有什么联系. 为什么这个量就是温度.

#### 解释压强的定义对应于压强

与温度相同, 我们以理想气体为例计算一下压强的表达式, 说明它就是我们常说的压强.

#### 解释化学势的定义对应于化学势







## 遇到的问题

### 吉布斯佯谬

在推导插曲:插曲: 以N个无相互作用的粒子体系推导孤立系的相关性质时, 我们得到
$$
\begin{align}

S(E)&=\ln{\Omega(E)} \notag\\

&=\ln\left(V^N \left(\frac{2e\pi m}{D}\right)^{\frac{ND}{2}}\left(\frac{E}{N}\right)^{\frac{ND}{2}} 2\left(\pi ND\right)^{\frac{1}{2}} \right)\\

\end{align}
$$
注意到这个式子在热力学极限$\frac{V}{N}\rightarrow \infty$下行为并不好.

与实验不符合的是, 考虑下述情况:

两个系统A,B混合, 同种气体的混合熵.

得到同种气体混合熵改变了. 但是对于不可区分的气体在这不应该发生. 实验告诉我们, 气体是不可区分的全同粒子. 因此加上一个... 之后, 得到



注意到这样的S在热力学极限下行为良好.



### 不需要吉布斯佯谬的时候

上面说过, 仅仅对于例子可区分时才会用吉布斯修正因子. 吉布斯修正因子时一个量子效应. 需要用吉布斯因子说明系统不能用经典力学描述.

何时系统可以用经典力学描述? 顾莱纳书上说晶格就可以.

## 量子描述

### 回顾

在经典力学的描述中, 从刘维尔定理出发, 根据粒子的可区分性建立了$\ln\rho$的可加性. 然后依据观测量的期望值的定义, 将概率密度表示为$\rho$的函数. 通过定义能态密度$\Omega$, 求出了$\rho$. 接下来通过定义不同的平衡, 得到了不同的划分等价类的函数, 得到了一系列宏观量.

量子力学与经典力学的每一点不同都将反映在上述的推导过程中. 但是上述推导过程的差别, 可以用一系列替换来完成. 下面来推导这些替换, 并说明如何从经典描述过渡到量子描述.

### 量子系统的相空间概率密度

经典力学中的相空间概率密度很好定义. 但是

1. 在量子力学中系统的共轭物理量(如坐标和动量)不可以同时确定, 也就不能定义像空间内的一个"点". 如何来描述一个系统?
2. 在量子力学中一个系统可能处于叠加态, 测量本身有不确定性.

如何定义系统在相空间的表达形式, 以及这个系统对应的可观测量的计算方法?

用密度矩阵
$$
\hat{\rho}=\sum_{i}p_i\left| \psi_i \right\rangle  \left\langle \psi_i \right|
$$
则任意一个可观测量
$$
\begin{align*}
\left\langle O \right\rangle &=\sum_ip_i \left\langle O \right\rangle_i\\
&=\sum_i p_i \left\langle \psi_i \right| \hat{O}\left| \psi_i \right\rangle  \\
&=\sum_i p_i \left\langle \psi_i \right| \mathbf{1} \hat{O}\left| \psi_i \right\rangle\\
&=\sum_i p_i \left\langle \psi_i \right| \left(\sum_j \left| \psi_j \right\rangle  \left\langle \psi_j \right| \right) \hat{O}\left| \psi_i \right\rangle\\
&=\sum_i\sum_j   p_i \left\langle \psi_i \right| \left| \psi_j \right\rangle  \left\langle \psi_j \right|  \hat{O}\left| \psi_i \right\rangle\\
&=\sum_i \left\langle \psi_i \right| \left(\sum_j   p_i\left| \psi_j \right\rangle  \left\langle \psi_j \right| \right) \hat{O}\left| \psi_i \right\rangle\\
&=\sum_i \left\langle \psi_i \right|\hat{\rho} \hat{O}\left| \psi_i \right\rangle\\
&=\operatorname{Tr}{\hat{\rho} \hat{O}}
\end{align*}
$$
因此对应于经典力学, $\hat{\rho}$包含了量子力学描述的系统的全部信息.

### 量子系统的刘维尔定理

由薛定谔方程
$$
i\hbar\frac{\partial}{\partial t}\left| \psi \right\rangle   =\hat{H} \left| \psi \right\rangle
$$
得到
$$
\begin{align*}
\frac{d}{d t}\hat\rho &=\frac{\partial \left| \psi \right\rangle }{\partial t} \left\langle \psi \right|+ \left| \psi \right\rangle\frac{\partial \left\langle \psi \right| }{\partial t} \\
&=\frac{\hat{H}}{i\hbar} \left| \psi \right\rangle  \left\langle \psi \right| + \left| \psi \right\rangle  \left\langle \psi \right| \frac{\hat{H}}{-i\hbar} \\
&=\frac{1}{i\hbar}[\hat{H},\hat{\rho}]
\end{align*}
$$
如果选择的是能量表象,
$$
\begin{align*}
\frac{d}{d t}\hat\rho 
&=\frac{\hat{H}}{i\hbar} \left| \psi \right\rangle  \left\langle \psi \right| + \left| \psi \right\rangle  \left\langle \psi \right| \frac{\hat{H}}{-i\hbar} \\
&=\frac{E}{i\hbar} \left| \psi \right\rangle  \left\langle \psi \right| + \left| \psi \right\rangle  \left\langle \psi \right| \frac{E}{-i\hbar} 
\end{align*}
$$
得到对角元不随时间变化.

### 量子系统的能级

==我的问题是, 为什么可以直接把能量除一个hbar就代表相空间的疏密?==

我觉得这个没有道理

我知道对于一维无限深方势阱, 乃至N维无限深方势阱, 这个结论都是成立的.

但是对于不规则形状的势阱, 怎么搞?



## 实验

到目前为止我们通过第一性的推导得到了各种各样的宏观可测量如温度,     下面要回答的问题是, 这些量如何与实验相联系?










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

斯特灵公式是对$N!$的近似公式. 斯特灵公式的优点在于, 随着N的增大, ==近似结果与真实值的误差可以任意小(好像不对)==. 在$N\rightarrow \infty$时, 可以取等号. 对于研究的系统, 总是认为N无穷大. 这就是分析可测量可以利用斯特灵公式的数学依据.
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



 [^\Gamma函数的性质][^Pathria][^zl]







# 参考文献

[^\Gamma函数的性质]: https://en.wikipedia.org/wiki/Gamma_function#General

[^Pathria]: Pathria statistical mechanisc
[^zl]: Liu Zhao.  thermodynamics
[^halley]: statistical mechanics: from first principle to ...

[^]: an integrated approach

[]

[]