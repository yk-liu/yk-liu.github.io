---
　　layout: post
　　title: 量子场论
---

[TOC]

## 约定

$$
\newcommand{\d}{\mathrm{d}}
\newcommand{\slash}[1]{\not{#1}}
\newcommand{\bra }[1]{ \left\langle {#1} \right\vert }
\newcommand{\ket }[1]{ \left\vert {#1} \right\rangle }
\newcommand{\braket}[2]{\left\langle {#1} \vert   {#2} \right\rangle}
\newcommand{\Res}[1]{\operatorname{Res} \left( {#1} \right)}
\newcommand{\imag}[1]{\operatorname{Im} \left( {#1} \right)}
\newcommand{\D}[1]{ \frac{\d}{\d {#1}}}
\newcommand{\Partial}[1]{ \frac{\partial}{\partial {#1}}}
\newcommand{\Eqn}[1]{\text{Eqn. }\ref{#1} }
\newcommand{\idmat}{\mathbb{I}} 
\newcommand{\Torder}[1]{\mathrm{T} \left\lbrace{#1}\right\rbrace }
\newcommand{\expp}[1]{\exp{ \left({#1}\right)}}
\newcommand{\Norder}[1]{:\!\!{#1}\!\!:}
\newcommand{\Pbracket}[2]{\left[{#1},{#2}\right]}
\newcommand{\contract}[1]{\overparen{ {#1} }}
\\
\begin{align}
p=p^\mu&=(E/c,\vec{p})\\
x^\mu&=(ct,\vec{x})\\
g_{\mu\nu}&=(+,-,-,-)\\
p=p^\mu&=(E/c,-\vec{p})\\
E_{\pm p}&=\pm\sqrt{\vec{p}^2+m^2}, \quad E_{-p}=-E_p
\end{align}
$$

泛函求导用$\eth$表示

## K-G方程

### 哈密顿量

要构建相对论量子力学, 哈密顿量$H$ 要满足
$$
p_\mu p^\mu=E^2-{\vec{p}}^2=m^2
$$

(由 $E^2={\vec{p}}^2c^2+m^2c^4$ 自然单位制$c=0$)
### 运动方程

利用
$$
p^\mu=-i\hbar \frac{\partial}{\partial {x}^\mu}
$$
得到
$$
-\frac{\partial}{\partial {x}^\mu} \frac{\partial}{\partial {x}_\mu}=m^2
$$
带入定态薛定谔方程
$$
H \phi = E \phi
$$
得到
$$
\left(\Box ^2 + m^2\right)\phi(x)=0
$$
即为K-G方程

### 方程的解

> 一维..
>
> 二维..
>
> 三维..
>
> 根据以上傅里叶变换的结果得到
$$
\left(\Box ^2 + m^2\right)\phi(x)=0
$$
的傅里叶变换是4维的
$$
\phi(x)=\int \d^4p \operatorname{A}(\vec{p})e^{ipx}\delta(p_\mu p^\mu-m^2)+\int \d^4p \operatorname{B}(\vec{p})e^{-ipx}\delta(p_\mu p^\mu-m^2)
$$
> 由$\delta$函数的性质,
> $$
> \delta(f(x))=\sum_i{\frac{x-a_i}{\left\vert {f}^\prime(a_i)\right\vert}}
> $$
>

得到
$$
\begin{align*}
\delta(p_\mu p^\mu-m^2)&=\delta\left(p_0p^0-{\vec{p}}^2-m^2\right)\\
&=\delta\left(p_0p^0-({\vec{p}}^2+m^2)\right)\\
&=\delta((p^0)^2-E_p^2)\\
&=\frac{1}{2\left\vert p^0 \right\vert} \left( \delta(p^0-E_p)+\delta(p^0+E_p) \right)
\end{align*}
$$
带入傅里叶变换继续计算
$$
\begin{align*}
\int \d^4p \operatorname{A}(\vec{p})e^{ipx}\delta(p_\mu p^\mu-m^2)
&=\int \d^4p \operatorname{A}(\vec{p})e^{ipx}\frac{1}{2\left\vert p^0 \right\vert} \left( \delta(p^0-E_p)+\delta(p^0+E_p) \right)\\
&=\int dp^0\int \d^3 {\vec{p} \operatorname{A}(p^0,\vec{p})e^{i(p^0t-\vec{p}\cdot\vec{x})}\frac{1}{2\left\vert p^0 \right\vert} \left( \delta(p^0-E_p)+\delta(p^0+E_p) \right)}\\
\end{align*}
$$
注意到两个 $\delta$ 函数只有一个成立, 因此取$p^0\gt 0$的一个

> 之前解方程曾有要求
>
> 是对123维情况的类比, $p^0\gt 0$规定了一个正方向
>
> 这里也可以写成更简单的形式
$$
\begin{align*}
&=\int dp^0\int \d^3 {\vec{p} \operatorname{A}(p^0,\vec{p})e^{i(p^0t-\vec{p}\cdot\vec{x})}\frac{1}{2\left\vert p^0 \right\vert} \delta(p^0-E_p)}\\
&=\int \d^3 \vec{p}\left({ \operatorname{A}(p^0,\vec{p})e^{i(p^0t-\vec{p}\cdot\vec{x})}\frac{1}{2\left\vert p^0 \right\vert} \int dp^0\delta(p^0-E_p)}\right)\\
&=\int \d^3 \vec{p}\left( \int dp^0\delta(p^0-E_p){  \operatorname{A}(p^0,\vec{p})e^{i(p^0t-\vec{p}\cdot\vec{x})}\frac{1}{2\left\vert p^0 \right\vert }} \right)\\
&=\int \d^3 \vec{p} \operatorname{A}(E_p,\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})}\frac{1}{2\left\vert E_p \right\vert }\\
&=\int \d^3 \vec{p} \frac{\operatorname{A}(E_p,\vec{p})}{2  E_p }e^{i(E_pt-\vec{p}\cdot\vec{x})}\\
\end{align*}
$$
因此可以将$\phi(x)$写成更简单的形式
$$
\phi(x)=\int \d^3 \vec{p} \left(\frac{\operatorname{A}(E_p,\vec{p})}{2 E_p }e^{i(E_pt-\vec{p}\cdot\vec{x})} + \frac{\operatorname{B}(E_p,\vec{p})}{2 E_p }e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)
$$
令$a(\vec{p})=\frac{\operatorname{A}(E_p,\vec{p})}{\sqrt{2E_p }}$, $b(\vec{p})=\frac{\operatorname{B}(E_p,\vec{p})}{\sqrt{2E_p }}$(因为$E_p$是$p$的函数), $\phi(x)$可以写为:
$$
\phi(x)=\int \d^3 \vec{p} \left( \frac{a(\vec{p})}{\sqrt{2E_p}}e^{i(E_pt-\vec{p}\cdot\vec{x})} +  \frac{b(\vec{p})}{\sqrt{2E_p}} e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)
$$
#### 实数解

如果是实标量场, 有$\phi(x)=\phi^\dagger(x)$, 得到
$$
\phi^\dagger(x)=\int \d^3\vec{p}\frac{1}{\sqrt{2E_p}}\left( b^\dagger(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)
$$
得到
$$
\begin{align}
a(\vec{p})&=b^\dagger(\vec{p})\\
b(\vec{p})&=a^\dagger(\vec{p})
\end{align}
$$
因此实标量场的解为
$$
\phi(x)=\int \frac{\d^3\vec{p}}{\sqrt{2E_p}}\left( a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)
$$
### 场的量子化

到此为止, 所有的分析都是基于量子力学的, 没有涉及场的概念

```mermaid
graph LR
A[薛定谔方程]
B[相对论哈密顿量]-->C[K-G方程]
A-->C
C-->|傅里叶变换|D[平面波形式解]
```

这一节的内容就是二次量子化, 引入场的概念

#### 傅里叶变换

先将$a(\vec{p})$用逆傅里叶变换写出, 方便起见, 这里有一个常数
$$
\begin{align*}
\phi(x)&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}}\left( a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)\\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}} a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} + \int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}}  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})} \\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}} a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} + \int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}}  a^\dagger( {\color{Red}-\vec{p}}) e^{-i(E_{\color{Red}-p}t {\color{Red}+\vec{p}}\cdot\vec{x})} \\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}} \left(a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} + a^\dagger( -\vec{p}) e^{-i(-E_pt +\vec{p}\cdot\vec{x})} \right)\\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}} \left(a(\vec{p})+a^\dagger( -\vec{p}) \right)e^{ipx}\\
\end{align*}
$$
又有傅里叶变换
$$
\begin{cases}
\phi(x)=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}} \tilde{\phi}(\vec{p}) e^{ipx}\\\
\tilde{\phi}(\vec{p})  =\int \frac{\d^3\vec{x}}{(2\pi)^{\frac32}\sqrt{2E_p}} \phi(x) e^{-ipx}\\
\end{cases}
$$
> ==这里是三重积分, 四重积分可以转化为三重, 如何证明 文献忘记是哪一个了==

对于共轭动量密度有
$$
\pi(x)=\dot{\phi}(x)
$$
由对时间偏导可以交换到对动量的积分
$$
\begin{align*}
\pi(x)&=\frac{\partial}{\partial t} \int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}}\left( a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right) \\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}\sqrt{2E_p}}\frac{\partial}{\partial t} \left( a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right) \\
&=\int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}}i\sqrt{\frac{E_p}{2}} \left( -a(\vec{p})e^{i(E_pt-\vec{p}\cdot\vec{x})} +  a^\dagger(\vec{p}) e^{-i(E_pt-\vec{p}\cdot\vec{x})}\right)\\
\end{align*}
$$
同样可以得到类似关系

==待补充==

得到
$$
\begin{align}
a(\vec{p})&=\frac12\left(\sqrt{2{E}_p}\tilde{\phi}(\vec{p})+i\sqrt{\frac{2}{E_p}}\tilde{\pi}(\vec{p})\right)\\
a^\dagger(\vec{p})&=\frac12\left(\sqrt{2{E}_p}\tilde{\phi}(-\vec{p})-i\sqrt{\frac{2}{E_p}}\tilde{\pi}(-\vec{p})\right)
\end{align}
$$
又有
$$
\begin{align*}
\tilde\phi(-\vec{p})&=\tilde\phi^\dagger(\vec{p})\\
\tilde\pi(-\vec{p})&=\tilde\pi^\dagger(\vec{p})
\end{align*}
$$
#### 二次量子化

利用共轭动量密度和==???==的对易关系, 可以推导出$a$和$a^\dagger$ 的对易关系
$$
\begin{align}
[a_p,a^\dagger_q]&=a_pa^\dagger_q-a^\dagger_qa_p\\
&=...\\
&=i\delta(\vec{p}-\vec{q})
\end{align}
$$
---

这里$a$与$a^\dagger$原本都是平面波展开的系数, 也就是常数(无论是实数还是复数). 常数的对易应当为零.

但是在推导过程中发现他们的对易不是零. 说明它们是**算符**而不是**数**. 对应地, 说明K-G方程的解$\phi(x)$不是一般意义上的一个波函数(函数值是一个复数), 而是一个算符.

这样把波函数"**看作是**"算符的过程, 叫做二次量子化.

二次量子化具体发生在那哪一步? 发生在认为K-G方程的解(应为波函数)对应场广义坐标密度(算符)的那一步. ==justification?==

------

对应的可以利用$a$和$a^\dagger$表示哈密顿量

哈密顿量$H$和对应地哈密顿量密度$\mathcal{H}$有
$$
H=\int \d^3 x\mathcal{H}
$$
由经典场论的结果
$$
\begin{align}
\mathcal{L}&=\frac12(\partial^\mu\phi)((\partial_\mu\phi)-\frac12m^2\phi^2\\
\pi(x)&=\frac{\eth \mathcal{L}}{\eth (\partial^0\phi)}=\frac{\eth \mathcal{L}}{\eth (\dot\phi)}=...=\dot\phi(x)\\
\mathcal{H}&=\pi(x)\dot{\phi}(x)-\mathcal{L}\\
&=\pi^2(x)-\frac12({(\dot{\phi}(x))}^2-{(\nabla\phi(x))}^2-m^2{\phi(x)}^2)\\
&=\frac12(\pi^2+{(\nabla\phi)}^2+m^2\phi^2)
\end{align}
$$
分别计算三项
$$
\begin{align*}
\int \d^3 \vec{x} {(\pi(x))}^2 
&=\int \d^3\vec{x} \left( \int \frac{\d^3\vec{p}}{(2\pi)^{\frac32}}i\sqrt{\frac{E_p}{2}} \left( -a(\vec{p})e^{ipx} +  a^\dagger(\vec{p}) e^{-ipx}\right)\right)
\\& \qquad \cdot \left(\int \frac{\d^3\vec{q}}{(2\pi)^{\frac32}}  i\sqrt{\frac{E_q}{2}} \left( -a(\vec{q})e^{iqx} +  a^\dagger(\vec{q}) e^{-iqx}\right) \right)\\
&=\int \d^3 \vec{x}  \int \d^3\vec{p} \int  \d^3\vec{q} \frac{-1}{2(2\pi)^{3}} \sqrt{E_pE_q}\left( -a(\vec{p})e^{ipx} +  a^\dagger(\vec{p}) e^{-ipx}\right) 
\\& \qquad \cdot \left( -a(\vec{q})e^{iqx} +  a^\dagger(\vec{q}) e^{-iqx}\right)  \\
&=\int \d^3 \vec{x}  \int \d^3\vec{p} \int  \d^3\vec{q} \frac{-1}{2(2\pi)^{3}} \sqrt{E_pE_q}\\
& \qquad \left(a(\vec p)a(\vec q)e^{i(p+q)x}+a^\dagger(\vec p)a^\dagger(\vec q)e^{-i(p+q)x}-a^\dagger(\vec p)a(\vec q)e^{i(q-p)x}-a(\vec p)a^\dagger(\vec q)e^{i(p-q)x}\right)\\
&= \int \d^3\vec{p} \int  \d^3\vec{q} \frac{-1}{2(2\pi)^{3}} \sqrt{E_pE_q}\int \d^3 \vec{x} \\
& \qquad \left(a(\vec p)a(\vec q)e^{i(p+q)x}+a^\dagger(\vec p)a^\dagger(\vec q)e^{-i(p+q)x}-a^\dagger(\vec p)a(\vec q)e^{i(q-p)x}-a(\vec p)a^\dagger(\vec q)e^{i(p-q)x}\right)\\
&= \int \d^3\vec{p} \int  \d^3\vec{q} \frac{- \sqrt{E_pE_q}}{2(2\pi)^{3}}
\left(a(\vec p)a(\vec q)e^{i(E_p+E_q)t}+a^\dagger(\vec p)a^\dagger(\vec q) e^{-i(E_p+E_q)t}\right)\delta(\vec p+\vec q)\\
&\qquad - \int \d^3\vec{p} \int  \d^3\vec{q} \frac{- \sqrt{E_pE_q}}{2(2\pi)^{3}}\left(a^\dagger(\vec p)a(\vec q)e^{i(E_p-E_q)t}+a(\vec p)a^\dagger(\vec q)e^{-i(E_p-E_q)t}\right)\delta(\vec p-\vec q)\\
&= \int \d^3\vec{p}  \frac{-E_p}{2(2\pi)^{3}} \left(a(\vec p)a(-\vec p)e^{2iE_pt}+a^\dagger(\vec p)a^\dagger(-\vec p)e^{-2iE_pt}-a^\dagger(\vec p)a(\vec p)-a(\vec p)a^\dagger(\vec p) \right)\\
\end{align*}
$$
其余两项同理可得

因此得到哈密顿量
$$
\begin{align}
\notag  H&=\int \d^3 \vec{x} \mathcal{H} \\ \notag
&=\frac12\int \d^3 \vec{p} E_p \left(a^\dagger(\vec p)a(\vec p)+a(\vec p)a^\dagger(\vec p)\right)\\
\end{align}
$$
和谐振子的很像

### 零点能与Normal Ordering

一个重大问题在于, 这样的哈密顿量零点能是无穷大. 因为空间每一点都是一个谐振子, 每一个谐振子都有不为零的零点能, 导致场的零点能是无穷大. 
$$
\begin{align}
H &=\frac12 \int \d^3 \vec{p} E_p \left(a^\dagger(\vec p)a(\vec p)+a(\vec p)a^\dagger(\vec p)\right)\\
&=\int \d^3 \vec{p} E_p \left(a^\dagger(\vec p)a(\vec p)+\frac12\left[a(\vec p),a^\dagger(\vec p)\right]\right)\\
&=\int \d^3 \vec{p} E_p \left(a^\dagger(\vec p)a(\vec p)+\frac12\delta(\vec0) \right)\\
\end{align}
$$
但是这并不影响能量差的计算, 毕竟只有能量差才是物理可观测量.

消除零点能, 可以直接计算能量差, 如:
$$
\begin{align}
\langle n |H | n\rangle &=\langle n |\int \d^3 \vec{p} E_p \left(a^\dagger(\vec p)a(\vec p)+\frac12\left[a(\vec p),a^\dagger(\vec p)\right]\right)  | n\rangle\\
&=\int \d^3 \vec{p} E_p \langle n |\left(a^\dagger(\vec p)a(\vec p)+\frac12\left[a(\vec p),a^\dagger(\vec p)\right]\right)| n\rangle  \\
&=\int \d^3 \vec{p} E_p \langle n |a^\dagger(\vec p)a(\vec p)| n\rangle  +\int \d^3 \vec{p} E_p \langle n |\frac12\left[a(\vec p),a^\dagger(\vec p)\right] | n\rangle  \\
&=nE_p+\langle 0 |H | 0\rangle
\end{align}
$$
但对于更复杂的情形(如高次项, 类似晶体中的非谐效应导致不同p之间的耦合) 这样计算较为复杂.

采用Normal Ordering的方式计算更为简便. 即先令$\left[a(\vec p),a^\dagger(\vec p)\right] =0$, 把$a^\dagger(\vec p)$一律放在$a(\vec p)$前面, 再恢复二者对易关系, 往后计算. 这种计算方法在前面的例子中等价于直接舍去对易项. 因此把normal ordering 之后的哈密顿量写作
$$
:H: \equiv \int \d^3 \vec{p} E_p a^\dagger(\vec p)a(\vec p)
$$

### 对称性分析

### 传播子

#### 传播子与格林函数

计算在$y$处粒子传播到$x$处的概率幅$\left\langle y| x\right\rangle$有:
$$
\begin{align*}
 \bra{0}\phi(x)\phi(y)\ket{0}
&=\bra{0}\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}}(a(\vec{p})e^{-ipx}+a^\dagger(\vec{p}) e^{ipx})(a(\vec{q})e^{-iqy}+a^\dagger(\vec{q}) e^{iqy}) \ket{0}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}} \bra{0}(a(\vec{p})e^{-ipx}+a^\dagger(\vec{p}) e^{ipx})(a(\vec{q})e^{-iqy}+a^\dagger(\vec{q}) e^{iqy})\ket{0} \\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}} \\
& \qquad\bra{0}\left(a(\vec{p})a(\vec{q})e^{-iqy-ipx}+a^\dagger(\vec{p})a(\vec{q})e^{-iqy+ipx} +a(\vec{p})a^\dagger(\vec{q})e^{iqy-ipx}+a^\dagger(\vec{p})a^\dagger(\vec{q}) e^{iqy+ipx}\right)\ket{0}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}} 
\bra{0}a(\vec{p})a^\dagger(\vec{q})e^{iqy-ipx}\ket{0}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}} 
\left\langle{\vec p}\vert{\vec q}\right\rangle e^{iqy-ipx}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_p}}\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{\sqrt{2E_q}} 
\delta(\vec p -\vec q) e^{iqy-ipx}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{-ip(x-y)}\notag\\
\end{align*}
$$
得到的结论是有问题的, 即使$x$$y$是类空的, 得到的概率幅也不为零.

> 注意到
> $$
> \begin{align}
> \bra{0} \Pbracket{\phi(x)}{\phi(y)} \ket{0}&=\bra{0} \phi(x)\phi(y)\ket{0}-\bra{0} \phi(y)\phi(x) \ket{0}
> \end{align}
> $$
> 因此对于类空间隔, RHS 两项相消, 给出概率幅为$0$. 

#### Feynman 传播子

Feynman传播子的定义为
$$
D_F(x-y)\equiv \bra{0}T\phi(x)\phi(y)\ket{0}\\
T\phi(x)\phi(y)\equiv \begin{cases}D(x-y),\quad t_x\gt t_y\\D(y-x) ,\quad t_x\lt t_y \end{cases}\\
$$
利用编时算符, 得到的编时乘积就不再违反相对论.

可以利用$\Theta$函数将Feynman传播子写作
$$
\begin{align*}
D_F(x-y)&=\Theta(t_x-t_y)\bra{0} \phi(x)\phi(y)\ket{0}-\Theta(t_y-t_x)\bra{0} \phi(y)\phi(x) \ket{0}\\
&=\Theta(t_x-t_y)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{-ip(x-y)}+\Theta(t_y-t_x)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{ip(x-y)}\\
&=\Theta(t_x-t_y)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{-iE_p(t_x-t_y)+i\vec{p}\cdot(\vec{x}-\vec{y})}+\Theta(t_y-t_x)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{iE_p(t_x-t_y)-i\vec{p}\cdot(\vec{x}-\vec{y})}\\
\phantom{}\xrightarrow{q=(E_p,-\vec{p})} &=\Theta(t_x-t_y)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{-iE_p(t_x-t_y)+i\vec{p}\cdot(\vec{x}-\vec{y})}+\Theta(t_y-t_x)\int \frac{\d^3 \vec{q}}{(2\pi)^\frac32} \frac{1}{2E_q} e^{iE_q(t_x-t_y)+i\vec{q}\cdot(\vec{x}-\vec{y})}\\
\phantom{}\xrightarrow{p=q}&=\Theta(t_x-t_y)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{-iE_p(t_x-t_y)+i\vec{p}\cdot(\vec{x}-\vec{y})}+\Theta(t_y-t_x)\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} \frac{1}{2E_p} e^{iE_p(t_x-t_y)+i\vec{p}\cdot(\vec{x}-\vec{y})}\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} e^{i\vec{p}\cdot(\vec{x}-\vec{y})} \left(\Theta(t_x-t_y)\frac{1}{2E_p} e^{-iE_p(t_x-t_y)}+\Theta(t_y-t_x)\frac{1}{2E_p} e^{iE_p(t_x-t_y)}\right)\\
\end{align*}
$$

利用留数定理可以将这两项表示为一个积分, 即构造一个积分具有两个一阶极点, 在这两个一阶极点的积分值分别是上式中的$\frac{1}{2E_p} e^{iE_p(t_x-t_y)}$和$\frac{1}{2E_p} e^{-iE_p(t_x-t_y)}$.

> 逆着利用留数定理, 构造$f(p_0)$, 有两个一阶极点$\pm E_p$, 
> $$
> \begin{align*}
> f(p_0)&= \frac{1}{p^2-m^2}e^{-ip(x-y)}  \\
> &=\frac{1}{(p_0)^2-({\vec{p}}^2+m^2)}e^{-ip_0(t_x-t_y)}e^{i\vec{p}\cdot(\vec{x}-\vec{y})} \\
> &=\frac{e^{-ip_0(t_x-t_y)}}{(p_0)^2-{E_p}^2}e^{i\vec{p}\cdot(\vec{x}-\vec{y})} \\
> &=e^{i\vec{p}\cdot(\vec{x}-\vec{y})}\left(\frac{-\frac{1}{2E_p}e^{-ip_0(t_x-t_y)}}{p_0-E_p}+\frac{\frac{1}{2E_p}e^{-ip_0(t_x-t_y)}}{p_0+E_p}\right)
> \end{align*}
> $$
> 因此$f(p_0)$在一阶极点的留数有
> $$
> \begin{align}
> \Res{f(E_p)}&=\frac{1}{2E_p}e^{-iE_p(t_x-t_y)}\\
> \Res{f(-E_p)}&=-\frac{1}{2E_p}e^{iE_p(t_x-t_y)}
> \end{align}
> $$
> 对$p_0$解析延拓到复平面, 根据$(t_x-t_y)$的符号, 选取积分路径$C_\pm$, 得到
>
> <img src="C:/Users/water/Documents/GitHub/yk-liu.github.io/posts/_source/3-Introduction-to-QFT/feynman-pro.png" style="zoom:50%" />
> $$
> \begin{align*}
> &\quad \oint_{C_\pm}  f(p_0)  \d p_0 \\
> &=e^{i\vec{p}\cdot(\vec{x}-\vec{y})}\oint_{C_\pm} \d p_0 \left(\frac{-\frac{1}{2E_p}e^{-ip_0(t_x-t_y)}}{p_0-E_p}+\frac{\frac{1}{2E_p}e^{-ip_0(t_x-t_y)}}{p_0+E_p}\right) \\
> &= e^{-i\vec{p}\cdot(\vec{x}-\vec{y})} 2\pi i \begin{cases} -\Res{f(E_p)}&\quad t_x-t_y \gt 0, &  C_{+,{\color{Red}\circlearrowright }}: \imag{p_0} \lt 0\\  \Res{f(-E_p)} &\quad  t_x-t_y \lt 0, &  C_{-,{\color{Red} \circlearrowleft} } :  \imag{p_0} \gt 0\end{cases} \\
> &=2i\pi e^{-i\vec{p}\cdot(\vec{x}-\vec{y})}\begin{cases}- \frac{1}{2E_p}e^{iE_p(t_x-t_y)}&\quad t_x-t_y \gt 0 \\  - \frac{1}{2E_p}e^{-iE_p(t_x-t_y)}&\quad  t_x-t_y \lt 0\end{cases} \\
> &= 2i\pi e^{-i\vec{p}\cdot(\vec{x}-\vec{y})}(-1)\begin{cases}\frac{1}{2E_p} e^{-iE_p(t_x-t_y)}, & C_+\\ \frac{1}{2E_p} e^{iE_p(t_x-t_y)}, & C_-\end{cases}
> \end{align*}
> $$
>
> 因此利用$\Theta(x-y)+\Theta(y-x)=\begin{cases} 1+0 & x\gt y \\ \frac12+ \frac12 & x=y \\ 0+1 & x\lt y \end{cases}\quad\equiv1$得到化简的形式, 
> $$
> \begin{align}
> &\phantom{=} \Theta(t_x-t_y)\frac{1}{2E_p} e^{-iE_p(t_x-t_y)}+\Theta(t_y-t_x)\frac{1}{2E_p} e^{iE_p(t_x-t_y)}\notag\\
> &=\Theta(t_x-t_y)\frac{1}{-2\pi i} \oint_{C_+}  f(p_0)  \d p_0 +\Theta(t_y-t_x) \frac{1}{-2\pi i}\oint_{C_-}  f(p_0)  \d p_0 \notag\\
> &=\frac{1}{-2\pi i}\left(\Theta(t_x-t_y)\oint_{C_0+C_{l}}  f(p_0)  \d p_0+\Theta(t_y-t_x)\oint_{C_0+C_{u}}  f(p_0)  \d p_0\right) \notag\\
> &=\frac{1}{-2\pi i}\left(\Theta(t_x-t_y)+\Theta(t_y-t_x)\right)\oint_{C_0}  f(p_0)  \d p_0 +\frac{1}{-2\pi i}\Theta(t_x-t_y)\oint_{C_{l}}  f(p_0)  \d p_0\notag \\
> &\qquad +\frac{1}{-2\pi i}\Theta(t_y-t_x)\oint_{C_{u}}  f(p_0)  \d p_0 \notag\\
> \xrightarrow[\oint_{C_{l,u}}  f(p_0)  \d p_0\rightarrow 0]{R\rightarrow\infty, }&=\frac{1}{-2\pi i}\oint_{C_0}  f(p_0)  \d p_0
>  \label{residualFeynman}
>  \end{align}
> $$
>

利用式$(\ref{residualFeynman})$ 得到
$$
\begin{align}
D_F(x-y)
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32} e^{i\vec{p}\cdot(\vec{x}-\vec{y})} \left(\Theta(t_x-t_y)\frac{1}{2E_p} e^{-iE_p(t_x-t_y)}+\Theta(t_y-t_x)\frac{1}{2E_p} e^{iE_p(t_x-t_y)}\right)\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32}\frac{1}{-2\pi i} \oint_{C_0} \d p_0\frac{1}{p^2-m^2}e^{-ip(x-y)}\notag\\
&=\int \frac{\d^3 \vec{p}}{(2\pi)^\frac32}\frac{1}{2\pi } \oint_{C_0} \d p_0\frac{i}{p^2-m^2}e^{-ip(x-y)}\notag\\
&=\oint_{C_0}\frac{\d^4 p}{(2\pi)^\frac32}\frac{1}{2\pi } \frac{i}{p^2-m^2}e^{-ip(x-y)}\\
\end{align}
$$
为了表示方便, 引入如下记号
$$
\begin{align}
D_F(x-y)&\equiv\lim_{\varepsilon\rightarrow0}{\int\frac{\d^4 p}{2\pi)^4} \frac{i}{p^2-m^2+i\varepsilon}e^{-ip(x-y)}}\\
\end{align}
$$

#### 格林函数

带入K-G方程, 可以看出, Feynman传播子就是K-G方程的格林函数
$$
\begin{align*}
&\phantom{=}\left(\partial_\mu\partial^\mu+m^2\right)D_F(x-y)\\
&=\left(\partial_\mu\partial^\mu+m^2\right)\oint_{C_0}\frac{\d^4 p}{(2\pi)^\frac32}\frac{1}{2\pi } \frac{i}{p^2-m^2}e^{-ip(x-y)}\\
&=\oint_{C_0}\frac{\d^4 p}{(2\pi)^\frac32}\frac{1}{2\pi }\frac{i}{p^2-m^2} \left(\partial_\mu\partial^\mu+m^2\right)e^{-ip(x-y)}\\
&=\oint_{C_0}\frac{\d^4 p}{(2\pi)^\frac32}\frac{1}{2\pi }\frac{i}{p^2-m^2}  \left(-p^2+m^2\right)e^{-ip(x-y)}\\
&=\oint_{C_0}\frac{\d^4 p}{(2\pi)^\frac32}\frac{-i}{2\pi }e^{-ip(x-y)}\\
&=\frac{-i}{2\pi }\delta(x-y)
\end{align*}
$$

## Dirac方程

没有在K-G里面讲: 负能量粒子的问题E可正可负

狄拉克想要一个线性方程

方程的提出是一个随机的过程, 但之后人们发现这个方程描述的是自旋$\frac12$的粒子, 而不是狄拉克原先设想的那样. 接下来我们按照狄拉克的思路描写这个方程的产生.

==希望我有时间可以直接从:要描述spin=1/2粒子开始写方程 角度来写==

### 哈密顿量

$$
H^2=p^2+m^2\\
\rightarrow H=\gamma^0(\vec{\gamma}\cdot\vec{p}+m)
$$
可以看作是对哈密顿量的开方操作

#### $\gamma$矩阵的性质

$\gamma$矩阵的上下标的来源, 其实是因为他们是矢量. 把它们当作标量, 才导致旋量这一变换十分复杂的量. 详见[^gamma as vector]

下面推导按$\gamma$矩阵是常数矩阵.

...

### 运动方程
$$
i\hbar \frac{\partial}{\partial t}\psi(x)=\gamma^0(-i\vec{\gamma}\cdot \vec{\nabla}+m)\psi(x)
$$
可以写为
$$
(i\gamma^\mu \partial_\mu-m)\psi(x)=0
$$
### 方程的解

对于平面波$\psi(x)=u(\vec p)e^{-ipx}$, $\psi(x)=v(\vec p)e^{ipx}$ 分别为方程的正频解和负频解
$$
\begin{align}
(p^\mu\gamma_\mu-m)u(\vec p ) &= 0\\
(p^\mu\gamma_\mu+m)v(\vec p ) &= 0
\end{align}
$$
注意狄拉克本来想要只有正能量的解, 可是这里仍然会有负能量的解.

### 场的量子化

#### Dirac场的拉格朗日量
$$
\mathcal{L}=\bar{\psi}(i\not\partial -m)\psi
$$
#### Dirac场的量子化

狄拉克方程有两个解. 类似地可以写成
$$
\psi(x)=\int \d^3\vec{p}
$$






### 对称性分析

### 传播子





## 相互作用

```mermaid
graph LR
A[转移矩阵]-->|相互作用绘景|B[渐进形式]
B-->|逐级展开|C[wick定理]
C-->D[Feynman图]
```



### 相互作用的形式[^langrangian1]

相互作用的哈密顿量的一般形式是
$$
\mathcal{L}=\frac 12 (\partial \phi)^2-V_0(\phi)
$$
之前研究的都是自由粒子, 势场满足
$$
V_0(\phi)=\frac12 {m_0}^2\phi^2
$$
这样的势场是有解析解的. 不同的动量(振动模式)之间没有耦合.

为了表示相互作用, 仿照固体物理中的做法, 引入高阶项(非谐效应), 会产生不同模式之间的耦合, 也就是粒子的相互作用.

> 引用[^langrangian1], "where the *potential* V is a polynomial in $\phi$, e.g. $V(\phi)=\phi^4$. This contains no picture of "how" the field interacts, just as the $\frac 12 m^2 \phi^2$ term contains no explanation of "how" this is the mass. "

因此势场可以表示成
$$
V(\phi) =\underbrace{\frac 12 {m_0}^2\phi^2}_{V_0}+\underbrace{\frac{1}{3!}g\phi^3+\frac{1}{4!}\lambda\phi^4+\cdots }_{V_{interaction}}
$$
高阶项[^first book]的系数量纲为质量的倒数, 会有问题, 目前不考虑.

得到描述相互作用的拉格朗日量
$$
\mathcal{L}=\mathcal{L}_0+\mathcal{L}_{int}\\
\mathcal{L}_{int}=-V_{int}
$$
此时K-G方程的解
$$
(\partial^2+m^2)\phi =V_{int}\neq 0
$$
因此$\phi\ket{\Omega}$与$\phi\ket{0}$不同, 不再是产生一个新的粒子. 从这一角度也可以说明为何要用$\ket{\Omega}$ 标记基态.

### 相互作用哈密顿量

引入相互作用绘景
$$
H_I=\underbrace{\underbrace{H_0}_\text{Hisenburg Picture}+\underbrace{H_{int}}_\text{Schrodinger  Picture}}_\text{Interaction Picture}
$$
即
$$
\begin{align}
\ket{\psi}_I&=e^{iH_0t}\ket{\psi}_S   && \text{S for Schrodinger}\\
\hat{O}_I&=e^{iH_0t}\hat{O}_H e^{-iH_0t}  &&\text{H for Hisenburg}\\
\end{align}
$$
因此薛定谔方程
$$
i \D{t}\ket{\psi(t)}_S=H\ket{\psi(t)}_S
$$
可以化简得到
$$
\begin{align}
i \D{t}\left( e^{-iH_0t}\ket{\psi(t)}_I\right)&=\left(H_0+H_{int}\right)e^{-iH_0t}\ket{\psi(t)}_I\notag\\
H_0 e^{-iH_0t}\ket{\psi(t)}_I+e^{-iH_0t}\D{t} \ket{\psi(t)}_I&=H_0 e^{-iH_0t}\ket{\psi(t)}_I+H_{int} e^{-iH_0t}\ket{\psi(t)}_I\notag\\
e^{-iH_0t}\D{t} \ket{\psi(t)}_I&=H_{int} e^{-iH_0t}\ket{\psi(t)}_I\notag\\
\D{t} \ket{\psi(t)}_I&=e^{iH_0t}H_{int} e^{-iH_0t}\ket{\psi(t)}_I\notag\\
\D{t} \ket{\psi(t)}_I&={(H_{int})}_I(t)\ket{\psi(t)}_I
\label{simplifedSchrodingerEqn}
\\
\end{align}
$$
引入含时演化算符$U(t,t_0)$
$$
\ket{\psi(t)}_I=U(t,t_0)\ket{\psi(t_0)}_I
\label{defU}
$$
带入$\Eqn{simplifedSchrodingerEqn}$得到
$$
i\D{t}U(t,t_0)=H_I(t)U(t,t_0) 
\label{diffEqnforU}
$$
有边界条件的微分方程式$\Eqn{diffEqnforU}$可以表达为
$$
U(t,t_0)=U(t_0,t_0)-i\int_{t_0}^{t}H_I(\tau_1)U(\tau_1,t_0)\d \tau_1
\label{intEqnforU}
$$
写出$\Eqn{intEqnforU}$的迭代形式, 初始值选取为$U(t_0,t_0)=\idmat$
$$
\begin{align*}
U^{(1)}(t,t_0)&=\idmat-i\int_{t_0}^{t}H_I(\tau_1)\underbrace{U^{(0)}(\tau_1,t_0)}_{=\idmat}\d \tau_1\\
U^{(2)}(t,t_0)&=\idmat-i\int_{t_0}^{t}H_I(\tau_2)U^{(1)}(\tau_2,t_0)\d \tau_2\\
&= \idmat-i\int_{t_0}^{t}H_I(\tau_2) \left(\idmat -i\int_{t_0}^{\tau_2}H_I(\tau_1)\underbrace{U^{(0)}(\tau_1,t_0)}_{=\idmat}\d \tau_1\right) \d\tau_2\\
&=\idmat + (-i)\int_{t_0}^{t}H_I(\tau_2)\d \tau_2 + (-i)^2 \int_{t_0}^{t} \d \tau_2 \int_{t_0}^{\tau_2} \d \tau_1 H_I(\tau_2) H_I(\tau_1)\\
&=\idmat + (-i)\int_{t_0}^{t}H_I(\tau_1)\d \tau_1 + (-i)^2 \int_{t_0}^{t} \d \tau_1 \int_{t_0}^{\tau_1} \d \tau_2 H_I(\tau_1) H_I(\tau_2) \qquad \rm{interchange\ \tau_1\ and\ \tau_2}\\
& \phantom{=}\vdots \\
U^{(\infty)}(t,t_0)&=\idmat+\sum_{n=1}^{\infty}\left((-i)^n\int_{t_0}^{t} \d \tau_1\int_{t_0}^{\tau_1} \d \tau_2 \cdots  \int_{t_0}^{\tau_n} \d \tau_n H_I(\tau_1) H_I(\tau_2) \cdots H_I(\tau_n)\right)\\
\end{align*}
$$
注意到, 由定义, 不同时间的哈密顿量对易
$$
H_I(x)H_I(y)=e^{iH_0x}H_{int}e^{-iH_0x}e^{iH_0y}H_{int}e^{-iH_0y}=e^{iH_0y}H_{int}e^{-iH_0y}e^{iH_0x}H_{int}e^{-iH_0x}=H_I(y)H_I(x)
$$
因此定义
$$
U(t,t_0)\equiv U^{(\infty)}(t,t_0)=\idmat+\sum_{n=1}^{\infty}\left((-i)^n\int_{t_0}^{t} \d \tau_1\int_{t_0}^{\tau_1} \d \tau_2 \cdots  \int_{t_0}^{\tau_n} \d \tau_n H_I(\tau_1) H_I(\tau_2) \cdots H_I(\tau_n)\right)\\
\label{UnonTorder}
$$
利用编时算符, 可以将式$\Eqn{UnonTorder}$进一步化简.

> 注意到对于$n=2$情形, $H(-t)=e^{iH_0t}He^{-iH_0t}=(e^{iH_0t}H^\dagger e^{-iH_0t})^\dagger=e^{-iH_0t}He^{iH_0t}=H(t)$
> $$
> \begin{align*}
> \int_{t_0}^{t} \d \tau_1\int^{\tau_1}_{t_0} \d \tau_2 H_I(\tau_1) H_I(\tau_2)
> &=\int_{t_0}^{t} \d \tau_2\int^{\tau_2}_{t_0} -\d \tau_1 H_I(\tau_2) H_I(-\tau_1) 
> 	&  \tau_1\rightarrow \tau_2 , \ \tau_2\rightarrow -\tau_1 \\
> &=\int_{t_0}^{t} \d \tau_2\int_{t_0}^{\tau_2} \d \tau_1  H_I(\tau_2)H_I(\tau_1) \\
> \end{align*}
> $$
> 利用编时算符:
> $$
> \Torder{H_I(\tau_2)H_I(\tau_1)}=\begin{cases}H_I(\tau_2)H_I(\tau_1),\quad t_x\gt t_y\\H_I(\tau_1)H_I(\tau_2) ,\quad t_x\lt t_y \end{cases}
> $$
> 可以将上式写成
> $$
> \begin{align*}
> \underbrace{\int_{t_0}^{t} \d \tau_1\int^{\tau_1}_{t_0}}_{t_0\lt\tau_2\lt \tau_1\lt t} \d \tau_2 H_I(\tau_1) H_I(\tau_2)
> &=\underbrace{\int_{t_0}^{t} \d \tau_2\int_{t_0}^{\tau_2}}_{t_0\lt\tau_1\lt \tau_2\lt t} \d \tau_1  H_I(\tau_2)H_I(\tau_1)
> \\
> \underbrace{\int_{t_0}^{t} \d \tau_1\int^{\tau_1}_{t_0} \d \tau_2 \underbrace{\Torder{H_I(\tau_1) H_I(\tau_2)}}_{t_0\lt\tau_2\lt \tau_1\lt t} }_\text {upper triangle}
> &=\underbrace{\int_{t_0}^{t} \d \tau_2\int_{t_0}^{\tau_2} \d \tau_1   \underbrace{\Torder{H_I(\tau_1)H_I(\tau_2)}}_{t_0\lt\tau_1\lt \tau_2\lt t} }_\text{lower triangle}
> \end{align*}
> $$
> <img src="Un.png" style="zoom:50%" />
>
> 因此可以得到
> $$
> \begin{align*}
> \underbrace{\int_{t_0}^{t} \d \tau_2\int_{t_0}^{t} \d \tau_1 \Torder{H_I(\tau_1)H_I(\tau_2)}}_\text{entire square}
> &=2\underbrace{\int_{t_0}^{t} \d \tau_2\int_{t_0}^{\tau_2} \d \tau_1 \underbrace{\Torder{H_I(\tau_1)H_I(\tau_2)}}_{t_0\lt\tau_1\lt \tau_2\lt t} }_\text{lower triangle, top-bottom}
> \\
> &=\underbrace{2\int_{t_0}^{t} \d \tau_1\int^{\tau_1}_{t_0} \d \tau_2 H_I(\tau_1) H_I(\tau_2)}_\text{lower triangle, left-right}
> \end{align*}
> $$
>
> 类似地, 对于$n=3$, 因子为$6=3!$. 因此
> $$
> \begin{align}
> &\quad(-i)^n\int_{t_0}^{t} \d \tau_1\int_{t_0}^{\tau_1} \d \tau_2 \cdots  \int_{t_0}^{\tau_n} \d \tau_n H_I(\tau_1) H_I(\tau_2)\cdots  H_I(\tau_n)\notag\\
> & =\frac{(-i)^n}{n!}\int_{t_0}^{t} \d \tau_1\int_{t_0}^{t} \d \tau_2 \cdots  \int_{t_0}^{t} \d \tau_n \Torder{H_I(\tau_1) H_I(\tau_2)\cdots  H_I(\tau_n)}\notag\\
> &= \frac{(-i)^n}{n!}\int_{t_0}^{t} \d \tau_1\int_{t_0}^{t} \d \tau_2 \cdots  \int_{t_0}^{t} \d \tau_n \Torder{H_I(\tau_1) H_I(\tau_2)\cdots  H_I(\tau_n)}\notag\\
> &= \frac{(-i)^n}{n!}\Torder{\int_{t_0}^{t} \d \tau_1\int_{t_0}^{t} \d \tau_2 \cdots  \int_{t_0}^{t} \d \tau_nH_I(\tau_1) H_I(\tau_2)\cdots  H_I(\tau_n)}\notag\\
> &= \frac{(-i)^n}{n!}\Torder{\left(\int_{t_0}^{t} \d \tau_1H_I(\tau_1) \right)\left(\int_{t_0}^{t} \d \tau_2  H_I(\tau_2)\right)\cdots \left( \int_{t_0}^{t} \d \tau_n H_I(\tau_n)\right)}\notag\\
> &=\Torder{\frac{(-i)^n}{n!}\left(\int_{t_0}^{t} \d \tau H_I(\tau) \right)^n}
> \label{TorderProdH}
> \end{align}
> $$
>

利用$\Eqn{TorderProdH}$可以将$\Eqn{UnonTorder}$进一步化简为
$$
\begin{align*}
U(t,t_0)&=\idmat+\sum_{n=1}^{\infty}\left((-i)^n\int_{t_0}^{t} \d \tau_1\int_{t_0}^{\tau_1} \d \tau_2 \cdots  \int_{t_0}^{\tau_n} \d \tau_n H_I(\tau_1) H_I(\tau_2) \cdots H_I(\tau_n)\right)\\
&=\idmat + \sum_{n=1}^{\infty}\left(\Torder{\frac{(-i)^n}{n!}\left(\int_{t_0}^{t} \d \tau H_I(\tau) \right)^n}\right)\\
&=\Torder{\idmat + \sum_{n=1}^{\infty}\left(\frac{(-i)^n}{n!}\left(\int_{t_0}^{t} \d \tau H_I(\tau) \right)^n\right)}\\
&=\Torder{\expp{-i\int_{t_0}^{t} \d \tau H_I(\tau) }}\\
\end{align*}
$$

### S矩阵

注意$\Eqn{defU}$中, 
$$
\ket{\psi(t)}_I=U(t,t_0)\ket{\psi(t_0)}_I \notag
$$
如果取$t_0\rightarrow -\infty$, $t\rightarrow \infty$, 则有
$$
\ket{\psi(\infty)}=U(\infty,-\infty)\ket{\psi(-\infty)}
$$
注意到上式两边分别是初始和结束的波函数, 分别定义为$\ket{i}$, $\ket{f}$, 再定义S(scattering)矩阵:
$$
S=U(\infty,-\infty)=\Torder{\expp{-i\int_{-\infty}^{\infty} \d \tau H_I(\tau) }}\\
$$
将哈密顿量写成哈密顿量密度, 将S矩阵写成
$$
S=\Torder{\expp{-i\int_{-\infty}^{\infty} \d \tau \int \d^3 \vec{x} \mathcal{H}_I(\vec{x},\tau) }}
=\Torder{\expp{-i\int_{-\infty}^{\infty} \d^4 x \mathcal{H}_I(x) }}
$$

### Wick 定理

$S$矩阵含有编时乘积, 但哈密顿量密度是Normal Order的. 将编时乘积转换为Normal Ordering的过程由Wick 定理给出.

>  要计算$\bra{i}S\ket{f}$, 就要计算$\bra{0}H\ket{0}$, 即要计算类似$\bra{0}\Torder{\phi(x) \phi(y)}\ket{0}$的式子.

#### 举例计算

先考虑两个标量场的乘积:
$$
\bra{0}\Torder{\phi(x) \phi(y)}\ket{0}=\Theta(t_x-t_y) \bra{0}\phi(x)\phi(y)\ket{0} + \Theta(t_y-t_x) \bra{0}\phi(y)\phi(x)\ket{0}
$$
把$\phi(x)$和$\phi(y)$表示成湮灭算符和产生算符的部分.
$$
\begin{align}
&\phi(x)=\phi_+(x)+\phi_-(x)\\
&\phi_+(x)\ket{0}=0\\
&\bra{0}\phi_-(x)=0
\end{align}
$$
得到
$$
\bra{0}\phi(x)\phi(y)\ket{0} = \bra{0}\phi_+(x)\phi_+(y) + \phi_+(x) \phi_-(y)+ \phi_-(x)\phi_+(y) + \phi_-(x)\phi_-(y)\ket{0}
$$
Normal Order之后得到
$$
\begin{align*}
\Norder{\phi(x)\phi(y)} &= \phi_+(x)\phi_+(y) + \phi_-(x)\phi_+(y)+ \phi_-(x)\phi_+(y) + \phi_-(x)\phi_-(y)\\
&= \phi_+(x)\phi_+(y) + {\color{Red}\phi_+(x)\phi_-(y)}+ \phi_-(x)\phi_+(y) + \phi_-(x)\phi_-(y) + {\color{Green}\phi_-(x)\phi_+(y)} - {\color{Red}\phi_+(x)\phi_-(y)}\\
&=\phi(x)\phi(y) + \phi_-(x)\phi_+(y)-\phi_+(x)\phi_-(y)\\
&=\phi(x)\phi(y) +\Pbracket{\phi_-(x)}{\phi_+(y)}
\end{align*}
$$

因此得到Normal Order和Time Order之间的关系, 利用$\Theta(t_x-t_y)+\Theta(t_y-t_x)=0$:
$$
\begin{align*}
\Torder{\phi(x) \phi(y)}&=\Theta(t_x-t_y) \phi(x)\phi(y)+\Theta(t_y-t_x)\phi(y)\phi(x)\\
&=\Theta(t_x-t_y)\left(\Norder{\phi(x)\phi(y)}+\Pbracket{\phi_+(x)}{\phi_-(y)}\right)+ \Theta(t_y-t_x)\left(\Norder{\phi(x)\phi(y)}+\Pbracket{\phi_+(x)}{\phi_-(y)}\right)\\
&=\Norder{\phi(x)\phi(y)} +\Theta(t_x-t_y) \Pbracket{\phi_+(x)}{\phi_-(y)} + \Theta(t_y-t_x) \Pbracket{\phi_+(x)}{\phi_-(y)} 
\end{align*}
$$
利用Feynman传播子:
$$
\begin{align*}
\bra{0}\Torder{\phi(x) \phi(y)}\ket{0}&=\bra{0}\Norder{\phi(x)\phi(y)}\ket{0}+\bra{0}\Big(\Theta(t_x-t_y) \Pbracket{\phi_+(x)}{\phi_-(y)} + \Theta(t_y-t_x) \Pbracket{\phi_+(x)}{\phi_-(y)}\Big)\ket{0}\\
&=\bra{0}\Norder{\phi(x)\phi(y)}\ket{0}+D_F(x-y)
\end{align*}
$$
而Time Order的乘积$\Norder{\phi(x)\phi(y)}$始终有湮灭算符在后,
$$
\bra{0}\Norder{\phi(x)\phi(y)}\ket{0}\equiv0
$$
得到
$$
\begin{align*}
\bra{0}\Torder{\phi(x) \phi(y)}\ket{0}&=D_F(x-y)
\end{align*}
$$
利用contraction写为
$$
\bra{0}\Torder{\phi(x) \phi(y)}\ket{0} =\contract{\phi(x) \phi} (y)
$$


对于三个相乘的, 自然有
$$
\begin{align*}
\bra{0}\Torder{\phi(x_1) \phi(x_2) \phi(x_3) }\ket{0}&=\bra{0}\contract{\phi(x_1) \phi}(x_2)\phi(x_3)\ket{0}+\bra{0}\phi(x_1)\contract{\phi(x_2) \phi}(x_3)\ket{0}+\bra{0}\contract{\phi(x_1) \phi(x_2) \phi}(x_3\ket{0})\\
&=\bra{0}\Norder{\phi(x_1)}\ket{0}D_F(x_2-x_3)+\bra{0}\Norder{\phi(x_3)}\ket{0}D_F(x_1-x_2)+\bra{0}\Norder{\phi(x_2)}\ket{0}D_F(x_1-x_3)\\
&=0
\end{align*}
$$

#### 一般的Wick 定理

$$
\begin{align*}
\bra{0}\Torder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) }\ket{0}
&=\bra{0}\Norder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) }\ket{0}\\
&+\bigg[\contract{\phi(x_1) \phi}(x_2) \phi(x_3) \cdots \phi(x_n)+\text{all permutaion} \bigg]\\
&+\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \phi(x_n)+\text{all permutaion} \bigg]\\
&+\cdots\\
&+\begin{cases}
	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-1})\phi}(x_n)+\text{all permutaion} \bigg] &n \text{ even} \\
	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-2})\phi}(x_{n-1})\phi(x_n)+\text{all permutaion} \bigg] & n \text{ odd}
\end{cases}
\end{align*}
$$

> 证明:
> $$
> \begin{align*}
> &\bra{0}\Torder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) }\ket{0}\\
> &=\bra{0}\Norder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) }\ket{0}\\
> &+\bigg[\contract{\phi(x_1) \phi}(x_2) \phi(x_3) \cdots \phi(x_n)+\text{all permutaion} \bigg]\\
> &+\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \phi(x_n)+\text{all permutaion} \bigg]\\
> &+\cdots\\
> &+\begin{cases}
> 	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-1})\phi}(x_n)+\text{all permutaion} \bigg] &n \text{ even} \\
> 	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-2})\phi}(x_{n-1})\phi(x_n)+\text{all permutaion} \bigg] & n \text{ odd}
> \end{cases}
> \end{align*}
> $$
>
> $$
> \begin{align*}
> &\bra{0}\Torder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) \phi(x_{n+1}) }\ket{0}\\
> &=\bra{0}\Norder{\phi(x_1) \phi(x_2) \cdots \phi(x_n) \phi(x_{n+1}) }\ket{0}\\
> &+\bigg[\contract{\phi(x_1) \phi}(x_2) \phi(x_3) \cdots \phi(x_n)+\text{all permutaion} \bigg]\phi(x_{n+1}) \\
> &+\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \phi(x_n)+\text{all permutaion} \bigg]\phi(x_{n+1}) \\
> &+\cdots\\
> &+\begin{cases}
> 	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-1})\phi}(x_n)+\text{all permutaion} \bigg]\phi(x_{n+1})  &n \text{ even} \\
> 	\bigg[\contract{\phi(x_1) \phi}(x_2) \contract{\phi(x_3) \phi}(x_4) \cdots \contract{\phi(x_{n-2})\phi}(x_{n-1})\phi(x_n)+\text{all permutaion} \bigg]\phi(x_{n+1})  & n \text{ odd}
> \end{cases}
> \end{align*}
> $$
>
> 

### 自由真空与相互作用真空

之前计算的都是自由真空$\ket{0}$的期望值, 但是真正代表散射概率的$\bra{i}S\ket{f}$应该是相互作用真空$\ket{\Omega}$的期望值.

二者的区别在于分别是总哈密顿量$H=H_0+H_{int}$中自由粒子哈密顿量$H_0$的不同本征矢量.
$$
\begin{align}
H_0\ket{0}&=0\\
H_0\ket{\Omega}&=E_\Omega \ket{\Omega}
\end{align}
$$
利用总哈密顿量$H=H_0+H_{int}$的本征矢$\ket{n}$展开为完备基, 自由真空的含时演化有(相互作用绘景下,$H_0$部分是薛定谔绘景)
$$
\begin{align}
e^{-iHT}\ket{0}&=e^{-iHT}\sum_n{\ket{n}\bra{n}}\ket{0}\notag\\
&=\sum_ne^{-iE_nT}\ket{n}\braket{n}{0}\notag \\
&=e^{-iE_\Omega T}\ket{\Omega}\braket{\Omega}{0}+\sum_{n\neq \ket{\Omega}}e^{-iE_nT}\ket{n}\braket{n}{0} 
\label{oandOmega}
\\
\end{align}
$$

在$\Eqn{oandOmega}$中, 第一项的因子的指数是相互作用真空能量$E_\Omega$, 是所有本征值中最小的. 因此取$T\rightarrow \infty(1-i\varepsilon)$

==为什么要这样取极限, 直接$\infty$不行吗, 这样是精确的还是近似?==
$$
\begin{align*}
\lim_{T\rightarrow \infty(1-i\varepsilon)}e^{-iHT}\ket{0}&=\lim_{T\rightarrow \infty(1-i\varepsilon)} e^{-iE_\Omega T}\ket{\Omega}\braket{\Omega}{0}+\lim_{T\rightarrow \infty(1-i\varepsilon)}\sum_{n\neq \ket{\Omega}}e^{-iE_nT}\ket{n}\braket{n}{0} \\
\lim_{T\rightarrow \infty(1-i\varepsilon)}e^{-iHT}\ket{0}&=\lim_{T\rightarrow \infty(1-i\varepsilon)} e^{-iE_\Omega T}\ket{\Omega}\braket{\Omega}{0}+0\\
\left(\lim_{T\rightarrow \infty(1-i\varepsilon)}e^{-iHT}\right)\ket{0}&=\left(\lim_{T\rightarrow \infty(1-i\varepsilon)} e^{-iE_\Omega T} \right)\ket{\Omega}\braket{\Omega}{0}\\
\end{align*}
$$
得到
$$
\ket{\Omega}=\lim_{ T\rightarrow \infty(1-i\varepsilon)} \frac{e^{-iHT}\ket{0}}{  e^{-iE_\Omega T} \braket{\Omega}{0}}
$$
这里要求$\braket{\Omega}{0}\neq 0$, 即低阶近似下的真空与自由真空"相似".

==...==

得到[^skriptQFT1]
$$
\bra{\Omega}\Torder{\prod_i{\phi(x_i)}}\ket{\Omega}=\lim_{T\rightarrow \infty(1-i\varepsilon)} \frac{\bra{0}\Torder{\prod_i{\phi(x_i)}e^{-i\int_{-T}^{T}dtH_I(t)}}\ket{0}}{\bra{0}\Torder{\ e^{-i\int_{-T}^{T}dtH_I(t)}}\ket{0}}
$$
可见在此处解释了T的路径问题(Eqn 2.107 & 2.110) [^skriptQFT1].

### Feynman图





### 相互作用的传播子

目的是计算
$$
\bra{\Omega}T\phi(x)\phi(y)\ket{\Omega}
$$
对相互作用的假设如下:

- 相互作用发生在$t=0$时刻
- 相互作用的粒子来自于$t=-\infty$ , 此时的粒子处于自由状态
- 相互作用产生的粒子到$t=\infty$时的粒子也处于自由状态



















# 参考文献

[^gamma as vector]: Nikolić, H. (2014). How (not) to teach Lorentz covariance of the Dirac equation. *European Journal of Physics*, *35*(3), 035003.
[^langrangian1]: About the notion of the self-interaction of a field, ACuriousMind (https://physics.stackexchange.com/users/50583/acuriousmind),Physics Stack Exchange, URL:https://physics.stackexchange.com/q/277861  version: 2016-09-02,https://physics.stackexchange.com/q/277861

[^ first book]: first book in quantum field theory
[^skriptQFT1]: skriptQFT1

[^]

