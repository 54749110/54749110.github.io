---
layout: post
title:  "Bosonization part 2"
description: "Construct the bosonization theory step by step , both the field and constructive approach.The key is to derive the bosonic identity and bosoniztion dictionary."
pin: true
math: true
mermaid: true
categories: [Bosonization, Bosonic Dictionary]
tags: [Bosonization, Luttinger Liquid]
author: Xuan
---

## Introduction
---

&emsp;&emsp; 现在我有一个大胆的想法，我的lieb-kitaev-hubbard模型能否用玻色化来求解？玻色化在一维低能成立，lieb-kitaev-hubbard模型是一维模型。对于kitaev-hubbard的研究表明，其在拓扑相是gapless的，在拓扑平庸相是gapped的，中间的非公度相gapped,所以文章里才可以用玻色化研究拓扑相变，因为gapless也是低能激发。对于lieb-kitaev的研究表明，无相互作用是存在着拓扑相变，中间也是一个gapless拓扑相，存在着quantum metric主导的两个关联长度。我感觉quantum metric对于相互作用一大，平带一破坏，文章$t<<V$假设不能成立，quantum metric难以表述。不过，如果DMRG真的看到了一个拓扑相，这个拓扑相里面是否可以用玻色化？它确实满足低能一维。玻色化三项：相互作用项，kitaev项都已知，关键是lieb项怎么办，好在它是一个无相互作用hopping，似乎可做？如果做成了，可以类比Luttinger液体里面得到格林函数的方法，直接得到关联函数，看到它是不是仍然有两个部分，还可以做重整化可以得到相变，和DMRG做类比，DMRG的关联长度如何看到相变？实际上，无相互作用费米子对应majorana就是左右两支，是否可以和左行右行费米子场作类比？相互作用破坏majorana是否可以和玻色化失效（不能再用左右行场来描述）类比？如果可以是不是说拓扑相即使有相互作用也保majorana?关键的问题是，quantum metric和拓扑项的关联是什么？至少知道：mu大，破坏低能激发，但是根据文章和DMRG的结论，只是拓扑平庸相里面只有BCS的结果，拓扑相里面存在一点mu没关系，同样DMRG看到存在一点U没关系，甚至$U=10$的时候也有缓慢的关联长度衰减，这和CDW相有什么关联？比如对于$\mu=0.1 ,  U=0.2$，计算了DMRG,QML关联长度可见。

## REF
---

[1]Jan von Delft, Herbert Schoeller.  Bosonization for Beginners --- Refermionization for Experts  (	arXiv:cond-mat/9805275)
[2] R. Shankar, Quantum Field Theory and Condensed Matter—An
 Introduction (Cambridge University Press, Cambridge, 2017).

## Constructive Discription of Bosonization
---

&emsp;&emsp; Constructive方法并不在场论极限下建立理论，而是从有限空间内的离散费米场 出发，利用离散费米子算符来逐步地构建玻色化字典。这种方法下，玻色化字典给出的是在Fock空间上严格成立的“算符恒等式”。场论方法可以定义连续玻色场，随后计算玻色场指数映射后的关联函数，然后发现这给出了和费米场相同的关联函数。在这里我们期望得到玻色恒等式，也需要得到最终的关联函数。

#### <font color=blue> definition of bosonic operators </font>

&emsp;&emsp;费米子场满足傅里叶变换与反对易关系,其中$\eta=(R\uparrow,R\downarrow,L\uparrow,L\downarrow)$等变量。$k$取$1/L$离散值。

$$
\begin{aligned}
\psi_\eta(x) & \equiv\left(\frac{2 \pi}{L}\right)^{1 / 2} \sum_{k=-\infty}^{\infty} e^{-i k x} c_{k \eta} \\
c_{k \eta} & =(2 \pi L)^{-1 / 2} \int_{-L / 2}^{L / 2} d x e^{i k x} \psi_\eta(x)
\end{aligned}
\tag{1}
$$

&emsp;&emsp;现在定义Fock态。定义的“真空态”是费米海。之后的$|0\rangle$指的都是$|G.S.\rangle$。

$$
\left|N_\eta\right\rangle_0  \equiv\left(C_1\right)^{N_1}\left(C_2\right)^{N_2} \ldots\left(C_M\right)^{N_M}|\overrightarrow{0}\rangle_0
$$

$$
\begin{aligned}
\left(C_\eta\right)^{N_\eta}  \equiv & c_{N_\eta \eta}^{\dagger} c_{\left(N_\eta-1\right) \eta}^{\dagger} \cdots c_{1 \eta}^{\dagger}  \text { for }  N_\eta>0 \\
\left(C_\eta\right)^{N_\eta}  \equiv & 1  \text { for }  N_\eta=0, \\
\left(C_\eta\right)^{N_\eta} \equiv & c_{\left(N_\eta+1\right) \eta} c_{\left(N_\eta+2\right) \eta} \cdots c_{0 \eta}  \text { for }  N_\eta<0  \\
\end{aligned}
\tag{2}
$$

&emsp;&emsp;注意这个费米海指的是$k>0$都是非占据态，$k<0$都是占据态。就是$
\varepsilon_k=\hbar v_F\left(k-k_F\right)$,$k$大于还是小于费米动量的分解定义为零：

$$
\begin{array}{llll}
c_{k \eta}|\overrightarrow{0}\rangle_0 \equiv 0 & \text { for } & k>0, & \left(\text { i.e. } n_k>0\right) \\
c_{k \eta}^{\dagger}|\overrightarrow{0}\rangle_0 \equiv 0 & \text { for } & k \leq 0, & \left(\text { i.e. } n_k \leq 0\right)
\end{array}
$$

&emsp;&emsp;因此这里的算符$N$，是电子（空穴）数算符，定义要减掉费米海占据数,可以类比去掉真空零点能：

$$
N_\eta \equiv \sum_{k=-\infty}^{\infty}{ } * c_{k \eta}^{\dagger} c_{k \eta } *=\sum_{k=-\infty}^{\infty}\left[c_{k \eta}^{\dagger} c_{k \eta}-\langle0 | c_{k \eta}^{\dagger} c_{k \eta} | 0\rangle\right]
\tag{3}
$$

&emsp;&emsp; 这里*是正规序，正规序的期望是零。费米子算符其定义满足：

$$
正规序 * ABCD *= (ABCD让产生算符全在左边、湮灭算符全在右边的排列) \cdot {-1}^{排列交换的费米子次数}
$$

&emsp;&emsp; 下面定义玻色算符, $q>0$的$1/L$离散值：

$$
b_{q \eta}^{\dagger} \equiv \frac{i}{\sqrt{n_q}} \sum_{k=-\infty}^{\infty} c_{k+q}^{\dagger} c_{k \eta}, \quad b_{q \eta} \equiv \frac{-i}{\sqrt{n_q}} \sum_{k=-\infty}^{\infty} c_{k-q \eta}^{\dagger} c_{k \eta}
\tag{4}
$$

&emsp;&emsp;  满足代数关系：

$$
\left[b_{q \eta}, b_{q^{\prime} \eta^{\prime}}\right]=\left[b_{q \eta}^{\dagger}, b_{q^{\prime} \eta^{\prime}}^{\dagger}\right]=0, \quad\left[N_{q \eta}, b_{q^{\prime} \eta^{\prime}}\right]=\left[N_{q \eta}, b_{q^{\prime} \eta^{\prime}}^{\dagger}\right]=0
\tag{5}
$$

&emsp;&emsp; 比如让下面的对易关系成立,第二行用了$k'=k+q-and-q=q'--Wick$定理，第四行用了$k>0$ 空,$k<0$ 占据， normal-order-canceled：

$$
\begin{aligned}
\left[b_{q \eta}, b_{q^{\prime} \eta^{\prime}}^{\dagger}\right]= &  [\frac{i}{\sqrt{n_q}} \sum_{k=-\infty}^{\infty} c_{k+q}^{\dagger} c_{k \eta} , \frac{-i}{\sqrt{n_q}} \sum_{k=-\infty}^{\infty} c_{k-q' \eta}^{\dagger} c_{k \eta}] \\
= & \delta_{\eta \eta^{\prime}} \sum_{k=-\infty}^{\infty} \frac{1}{n_q}\left(c_{k+q-q^{\prime} \eta}^{\dagger} c_{k \eta}-c_{k+q \eta}^{\dagger} c_{k+q^{\prime} \eta}\right)   \\
=  & \delta_{\eta \eta^{\prime}} \delta_{q q^{\prime}} \sum_k \frac{1}{n_q}\left[\star c_{k \eta}^{\dagger} c_{k \eta} \star- \star c_{k+q \eta}^{\dagger} c_{k+q \eta} \star \right]+\left(\langle0| c_{k \eta}^{\dagger} c_{k \eta}|0\rangle -\langle0| c_{k+q \eta}^{\dagger} c_{k+q \eta}|0\rangle\right) \\
=& \frac{1}{n_q}\left(\sum_{n_k=-\infty}^0-\sum_{n_k=-\infty}^{-n_q}\right)=\frac{1}{n_q} n_q=1
\end{aligned}
\tag{6}
$$

&emsp;&emsp;  从$b$算符的定义来看它激发了粒子空穴对，所以对于$N$粒子基态。其缺乏空穴，$|N\rangle$应当有$b|N\rangle=0$，或者说任意的粒子数的费米子基态都是玻色算符的真空态。

&emsp;&emsp; 但是这样定义的玻色算符就带来了一个问题，比如$|N\rangle_0$是$N$粒子基态，任意的相同的粒子数的态，比如$c_kc_{k'}^{\dagger}|N\rangle_0$都可以由$c,c^{\dagger}$的有限组合张成，可以说$c$算符确实是完备的，但是$b$算符呢。一个关键的问题是$b$算符是对于$c$算符的无穷求和，这样如何表示态$c_kc_{k'}^{\dagger}|N\rangle_0$呢？文章中有一个数学证明我就不展示了。过程是求某个哈密顿量的配分函数，$Z_{cN}=\sum_{}\langle N_c|e^{-\beta H_c}|N_c\rangle$证明它和$b$表示的配分函数相等：$\left|N ;m_q\right\rangle=\prod_{q>0} \frac{b^{\dagger m_q}}{\left(m_{q}!\right)}|N\rangle_0$。如果相等就表示$c$中没有额外的态不在$b$中，就表示该映射下的两个Fock态是等价的$F_c=F_b$。

&emsp;&emsp;虽然证明了等价性，但还是要找到一种表示方法。$F_c$中，增加一个粒子用产生算符就可以了，$F_b$中，如何组合$b$算符呢？就是说是否可以定义一个$F_\eta$算符，其代表玻色类型的“产生一个费米子”，其满足$|\vec{N}\rangle=f\left(b^{\dagger}\right)|\vec{N}\rangle_0$,$T_\eta \equiv(-)^{\sum \frac{\eta-1}{\bar{\eta}=1} N_{\bar{\eta}}}$：

$$
\begin{aligned}
{F_\eta}^{\dagger}|\vec{N}\rangle \equiv f(b^{\dagger}) {c_{N_\eta+1}}^{\dagger}|N_1, \ldots, N_\eta, \ldots N_M\rangle_0 & \equiv f(b^{\dagger}) T_\eta |N_1, \ldots, N_\eta+1, \ldots N_M\rangle_0 \\
F_\eta|\vec{N}\rangle \equiv f(b^{\dagger}) c_{N_\eta}|N_1, \ldots, N_\eta, \ldots N_M\rangle_0 & \equiv f(b^{\dagger}) T_\eta|N_1, \ldots, N_\eta-1, \ldots N_M\rangle_0
\end{aligned}
\tag{7}
$$

$$
\left[b_{q \eta}, F_{\eta^{\prime}}^{\dagger}\right]=\left[b_{q \eta}^{\dagger}, F_{\eta^{\prime}}^{\dagger}\right]=\left[b_{q \eta}, F_{\eta^{\prime}}\right]=\left[b_{q \eta}^{\dagger}, F_{\eta^{\prime}}\right]=0
\tag{8}
$$

&emsp;&emsp; 从上文的定义来看，有两件事情是玻色子做不到的，这也是引入Klein Factor 期望它做到的事情。第一，费米子是反对易的（产生算符越过费米子出一个负号，玻色算符构造不出这个负号）；第二，沟通不同的费米子粒子数的态。Klein Factor 满足幺正性质 $F^{\dagger} = F^{-1}$ 由于它是一个玻色算符的组合和一个$e^{i\pi N}$算符乘积的形式。之前对于b算符完备性的证明说明了Klein Factor 的存在，在这里，我们则只需要知道它的定义就可以了，具体形式下面会介绍，但是往往玻色化中，该项会被忽略。

<img src="https://54749110.github.io/assets/2025-11-15-bosonization-part-2/2.png" width = "590" height = "380" alt="图片名称" align=center />

#### <font color=blue> definition of bosonic fields </font>

&emsp;&emsp; 接下来定义玻色场：

$$
\varphi_\eta(x) \equiv-\sum_{q>0} \frac{1}{\sqrt{n_q}} e^{-i q x} b_{q \eta} e^{-a q / 2}, \quad \varphi_\eta^{\dagger}(x) \equiv-\sum_{q>0} \frac{1}{\sqrt{n_q}} e^{i q x} b_{q \eta}^{\dagger} e^{-a q / 2},
\tag{9}
$$

$$
\phi_\eta(x) \equiv \varphi_\eta(x)+\varphi_\eta^{\dagger}(x)=-\sum_{q>0} \frac{1}{\sqrt{n_q}}\left(e^{-i q x} b_{q \eta}+e^{i q x} b_{q \eta}^{\dagger}\right) e^{-a q / 2}
\tag{10}
$$

&emsp;&emsp; 注意这里的场算符依赖于离散的$b$算符的定义，$q \equiv \frac{2 \pi}{L} n_q$，玻色场和费米场一样，是PBC的。这里要引入两个参数$L,a$。在关联函数动量求和式$\sum_{q>0} \frac{1}{q}$中，对于$q\rightarrow0$和$q\rightarrow \infty$时会发散，引入有限尺寸避免前者发散，引入截断$a$避免后者发散，之后会选取$L\rightarrow \infty， a \rightarrow 0$的极限。这里$a \approx 1/k_F$,回忆重整化截取高动量的做法，之后会看到，这里的$1/a$就会作为重整化参数，反复的$a\rightarrow \alpha a \rightarrow \infty$ ,对应动量$1/a$越截越小，因此引入的$1/a$是费米子哈密顿量的费米面附近能带间隙，反映低能的可重整化尺度，也就是选取$a$形式上的做的低能近似，它也衡量了玻色化有效性。

&emsp;&emsp; 定义密度算符：

$$
\begin{aligned}
\rho_\eta(x) & \equiv \star \psi_\eta^{\dagger}(x) \psi_\eta(x) \star=\frac{2 \pi}{L} \sum_q e^{-i q x} \sum_k \star c_{k-q, \eta}^{\dagger} c_{k \eta} \star \\
& \overset{\underset{\mathrm{q>0 ; q<0 ; q=0}}{}}{=} \frac{2 \pi}{L} \sum_{q>0} i \sqrt{n_q} \left(e^{-i q x} b_{q \eta}-e^{i q x} b_{q \eta}^{\dagger}\right)+\frac{2 \pi}{L} \sum_k \star c_{k \eta}^{\dagger} c_{k \eta} \star \\
& =\partial_x \phi_\eta(x)+\frac{2 \pi}{L} N_\eta \quad(\text { for } a \rightarrow 0)
\end{aligned}
\tag{11}
$$

&emsp;&emsp; 对易关系，利用$\ln (1-y)=-\sum_{n=1}^{\infty} y^n / n$.：

$$
\begin{aligned}
{\left[\varphi_\eta(x), \varphi_{\eta^{\prime}}\left(x^{\prime}\right)\right] } & =\left[\varphi_\eta^{\dagger}(x), \varphi_{\eta^{\prime}}^{\dagger}\left(x^{\prime}\right)\right]=0 \\
{\left[\varphi_\eta(x), \varphi_{\eta^{\prime}}^{\dagger}\left(x^{\prime}\right)\right] } & =\delta_{\eta \eta^{\prime}} \sum_{q>0} \frac{1}{n_q} e^{-q\left[i\left(x-x^{\prime}\right)+a\right]} \\
& =-\delta_{\eta \eta^{\prime}} \ln \left[1-e^{-i \frac{2 \pi}{L}\left(x-x^{\prime}-i a\right)}\right] \\
& \xrightarrow{L \rightarrow \infty}-\delta_{\eta \eta^{\prime}} \ln \left[i \frac{2 \pi}{L}\left(x-x^{\prime}-i a\right)\right] .
\end{aligned}
\tag{12}
$$

&emsp;&emsp;利用这个对易关系和指数恒等式,$C=[A,B] and [C,A]=0 and[C,B]=0$：$e^{A+B}= e^{A}e^{B}e^{C/2}$，得到以下的关系式：

$$
\begin{aligned}
e^{i \varphi_\eta^{\dagger}(x)} e^{i \varphi_\eta(x)}=e^{i\left(\varphi_\eta^{\dagger}+\varphi_\eta\right)(x)} e^{\left[i \varphi_\eta^{\dagger}(x), i \varphi_\eta(x)\right] / 2}=\left(\frac{L}{2 \pi a}\right)^{1 / 2} e^{i \phi_\eta(x)} \\
e^{-i \varphi_\eta(x)} e^{-i \varphi_\eta^{\dagger}(x)}=e^{-i\left(\varphi_\eta+\varphi_\eta^{\dagger}\right)(x)} e^{\left[-i \varphi_\eta(x),-i \varphi_\eta^{\dagger}(x)\right] / 2}=\left(\frac{2 \pi a}{L}\right)^{1 / 2} e^{-i \phi_\eta(x)} .
\end{aligned}
\tag{13}
$$

&emsp;&emsp; 还有以下对易关系：

$$
\begin{aligned}
\left[\phi_\eta(x), \partial_{x'} \phi_{\eta'} (x')\right] & = \partial_{x'} \left[\varphi_\eta(x), \varphi_{\eta'}^\dagger (x')\right] +\partial_{x'} \left[\varphi_\eta^\dagger(x), \varphi_{\eta'} (x')\right] \\
& = \delta_{\eta \eta^{\prime}} i \frac{2 \pi}{L}\left[\frac{1}{e^{i \frac{2 \pi}{L}\left(x-x^{\prime}-i a\right)}-1}+\frac{1}{e^{-i \frac{2 \pi}{L}\left(x-x^{\prime}+i a\right)}-1}\right]  \\
& \xrightarrow{L \rightarrow \infty} \delta_{\eta \eta^{\prime}} 2 \pi i\left[\frac{a / \pi}{\left(x-x^{\prime}\right)^2+a^2}-\frac{1}{L}\right] \\
& \xrightarrow{a \rightarrow 0} 2 \pi i\left[\delta\left(x-x^{\prime}\right)-\frac{1}{L}\right] \quad(\text { integral arctan(x) } )
\end{aligned}
\tag{14}
$$

&emsp;&emsp; 注意这个极限先取$L \rightarrow \infty$再取$a \rightarrow0$，如果先取$a \rightarrow0$在有限尺寸下面则是下面的结果，泊松求和公式是：$\sum_{n=-\infty}^{\infty} f(n)=\sum_{m=-\infty}^{\infty} \hat{f}(m)$：

$$
\begin{aligned}
{\left[\phi_\eta(x), \partial_{x^{\prime}} \phi_{\eta^{\prime}}\left(x^{\prime}\right)\right] } & =\delta_{\eta \eta^{\prime}} i \frac{2 \pi}{L} \sum_{q>0} e^{-q a}\left(e^{-i q\left(x-x^{\prime}\right)}+e^{i q\left(x-x^{\prime}\right)}\right)  \\
= & \delta_{\eta \eta^{\prime}} i \frac{2 \pi}{L} \sum_{q=-\infty}^{\infty} e^{-i q\left(x-x^{\prime}\right)} - \sum_{q=0} \\
& \xrightarrow{a \rightarrow 0} \delta_{\eta \eta^{\prime}} 2 \pi i\left(\sum_{\bar{n} \in \mathbb{Z}} \delta\left(x-x^{\prime}-\bar{n} L\right)-\frac{1}{L}\right),
\end{aligned}
\tag{15}
$$

&emsp;&emsp;可以得到以下的对易关系,阶跃函数$\epsilon(x)=1 (x>0) \quad -1 (x<0)\quad 0 (x=0)$：

$$
\begin{aligned}
 {\left[\phi_\eta(x), \phi_{\eta^{\prime}}\left(x^{\prime}\right)\right] } \xrightarrow{L \rightarrow \infty}&-\delta_{\eta \eta^{\prime}} 2 i\left[\arctan \left[\left(x-x^{\prime}\right) / a\right]-\pi\left(x-x^{\prime}\right) / L\right] \\
  \xrightarrow{L=\infty, a \rightarrow 0} &-\delta_{\eta \eta^{\prime}} i \pi \epsilon\left(x-x^{\prime}\right)
\end{aligned}
\tag{16}
$$

&emsp;&emsp; 如果在场论描述下面，会遇到$\phi$的共轭场：$\Pi_\eta(t, x) \equiv \partial_t \phi_\eta(t, x)$，如果线性色散满足的话，$\omega \sim q$，$e^{-i\omega t-iqx}=e^{-iq(t+x)}$就是$\phi_\eta(t, x)=\phi_\eta(t+x)$以及$\Pi_\eta(t+x)=\partial_t \phi_\eta(t+x)$，这样上文的$(14)$就是两者的对易关系。非线性色散呢？幸运的是，含时演化先不在考虑范围内。

#### <font color=blue> deriving bosonic identity </font>

&emsp;&emsp;有如下的数学关系，其中$\alpha_q(x)=\frac{i}{\sqrt{n_q}} e^{i q x}$：

$$
\begin{aligned}
{\left[b_{q \eta^{\prime}}, \psi_\eta(x)\right] } & =\delta_{\eta \eta^{\prime}} \alpha_q(x) \psi_\eta(x) \\
{\left[b_{q \eta^{\prime}}^{\dagger}, \psi_\eta(x)\right] } & =\delta_{\eta \eta^{\prime}} \alpha_q^*(x) \psi_\eta(x)
\end{aligned}
\tag{17}
$$

&emsp;&emsp;由于$b_{q \eta}|\vec{N}\rangle_0=0$，$\psi_\eta(x)|\vec{N}\rangle_0$实际上是玻色算符的本征态：

$$
b_{q \eta^{\prime}} \psi_\eta(x)|\vec{N}\rangle_0=\delta_{\eta \eta^{\prime}} \alpha_q(x) \psi_\eta(x)|\vec{N}\rangle_0
\tag{18}
$$

&emsp;&emsp; 所以数学上，可以及其大胆的用玻色算符构造费米子场的形式：

$$
\psi_\eta(x)|\vec{N}\rangle_0=\exp \left[\sum_{q>0} \alpha_q(x) b_{q \eta}^{\dagger}\right] F_\eta \lambda_\eta(x)|N\rangle_0=e^{-i \varphi_\eta^{\dagger}(x)} F_\eta \lambda_\eta(x)|N\rangle_0
\tag{19}
$$
&emsp;&emsp; 利用矩阵指数性质：$C=[A,B] and [C,A]=0 and[C,B]=0$：$[A,e^{B}]= Ce^{B}$,这里$A=b_{q \eta^{\prime}}, B=-i \varphi_\eta^{\dagger}(x)$,因此$C=\delta_{\eta \eta^{\prime}} \alpha_q(x)$.矩阵指数关系保证了$b_{q \eta^{\prime}}$作用在$(19)$式上面就能得到$(18)$式。

&emsp;&emsp; 上面是数学上的等价性。物理上，费米子场算符的作用是什么？它总体上移除了一个费米子。玻色子场如何满足这一条件？首先必须引入Klein Factor,它移除了一个费米子，并且保证了费米子的反对易性。还要有一个相位因子作用在玻色场上面$e^{-i \varphi_\eta^{\dagger}(x)} \lambda_\eta(x)$，组合玻色子场重排粒子到合适的位置。通常认为无穷的粒子-空穴激发的组合远比单空穴涵盖更多的项，这里从(18)式可以看出，当$e^{-i \varphi_\eta^{\dagger}(x)}$作用在态$c_{N_\eta \eta}|\vec{N}\rangle$上面，只有那些$b$算符：把比$N_\eta$能级低的占据能级的电子，搬到这个空的$N_\eta$能级上的作用存活，其它作用互相抵消。在后文会试用级数展开证明两者的等价性。

&emsp;&emsp;下面计算$\lambda_\eta(x)$的值，一方面,利用$F_\eta^{\dagger}F_\eta = I$,$[F,b]=0$,以及由于$b_{q \eta}|\vec{N}\rangle_0=0$,$\langle\vec{N_0}| e^{-i \varphi_\eta^{\dagger}(x)}=\langle\vec{N_0}|$：

$$
\langle N_0| F_\eta^{\dagger} \psi_\eta(x)|N\rangle_0 =  \langle N_0| F_\eta^{\dagger} e^{-i \varphi_\eta^{\dagger}(x)} F_\eta \lambda_\eta(x)|N\rangle_0 =\lambda_\eta(x)
\tag{20}
$$

&emsp;&emsp;另一方面,注意到左边消灭了一个$N_\eta$费米子，右边的求和必须也消灭$N_\eta$费米子才有值，对应于$k=\frac{2 \pi}{L} N_\eta$：

$$
\begin{aligned}
\langle N_0| F_\eta^{\dagger} \psi_\eta(x)|N\rangle_0 = & \langle N_0| F_\eta^{\dagger}\left(\frac{2 \pi}{L}\right)^{1 / 2} \sum_{k=-\infty}^{\infty} e^{-i k x} c_{k \eta}  |N\rangle_0 \\
= & \left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-i \frac{2 \pi}{L} N_\eta x}
\end{aligned}
\tag{21}
$$

&emsp;&emsp; 因此：

$$
\lambda_\eta(x)=\left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-i \frac{2 \pi}{L} N_\eta x}
\tag{22}
$$

&emsp;&emsp;  在上文中，看到了等价性作用在$N$粒子基态$|N\rangle_0$，现在尝试把费米子场算符作用在任意的态$|N\rangle$上面，$|\vec{N}\rangle=f\left(b_{q \eta^{\prime}}^{\dagger} ,b_{q\eta}\right)|\vec{N}\rangle_0$。先证明两个等式。

&emsp;&emsp;矩阵指数关系：当$[A,B]=DB,[A,D]=0,[B,D]=0$,那么$AB=B(A+D)$,那么有$A^nB=B(A+D)^n$,那么有$f(A)B=Bf(A+D)$,那么令$A=b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^\star(x), B=\psi_\eta(x)$ , $D=\delta_{\eta \eta^{\prime}} \alpha_q^\star(x)$。则利用$(17)$
式满足上述关系，有：

$$
\psi_\eta(x) f\left(b_{q \eta^{\prime}}^{\dagger}\right)=f\left(b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^*(x)\right) \psi_\eta(x)
\tag{23}
$$

&emsp;&emsp;矩阵指数关系：从BCH关系导出，若$C=[A,B] and [C,A]=0 and[C,B]=0$，则有$e^{-B} f(A) e^B=f(A+C)$。令$A=b_{q \eta^{\prime}}^{\dagger}, B=i \varphi_\eta(x)$ and $C=-\delta_{\eta \eta^{\prime}} \alpha_q^*(x)$确实满足上述条件，有：

$$
f\left(b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^*(x)\right)=e^{-i \varphi_\eta(x)} f\left(b_{q \eta^{\prime}}^{\dagger}\right) e^{i \varphi_\eta(x)}
\tag{24}
$$

&emsp;&emsp;因此有：

$$
\begin{aligned}
\psi_\eta(x)|\vec{N}\rangle & =\psi_\eta(x) f\left(b_{q \eta^{\prime}}^{\dagger}\right)|\vec{N}\rangle_0 \\
& =f\left(b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^\star(x)\right) \psi_\eta(x)|\vec{N}\rangle_0  \quad(\text { Eq.23 } )  \\
& =f\left(b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^\star(x)\right) e^{-i \varphi_\eta^{\dagger}(x)} F_\eta \lambda_\eta(x)|\vec{N}\rangle_0 \quad(\text { Eq.19 } ) \\
& =F_\eta \lambda_\eta(x) e^{-i \varphi_\eta^{\dagger}(x)} f\left(b_{q \eta^{\prime}}^{\dagger}-\delta_{\eta \eta^{\prime}} \alpha_q^\star(x)\right)|\vec{N}\rangle_0 \quad (\text { Eq.5,Eq.8 } )\\
& =F_\eta \lambda_\eta(x) e^{-i \varphi_\eta^{\dagger}(x)}\left[e^{-i \varphi_\eta(x)} f\left(b_{q \eta^{\prime}}^{\dagger}\right) e^{i \varphi_\eta(x)}\right]|\vec{N}\rangle_0 \quad (\text { Eq.24 } )\\
& =F_\eta \lambda_\eta(x) e^{-i \varphi_\eta^{\dagger}(x)} e^{-i \varphi_\eta(x)} f\left(b_{q \eta^{\prime}}^{\dagger}\right)|\vec{N}\rangle_0 \quad (\text { Eq.5 } )\\
& =F_\eta \lambda_\eta(x) e^{-i \varphi_\eta^{\dagger}(x)} e^{-i \varphi_\eta(x)}|\vec{N}\rangle
\end{aligned}
\tag{25}
$$

&emsp;&emsp; 在之前就论述过这时候$F_c$,$F_b$同属于完备的空间，上面定义的玻色或是费米算符也应当是完备的，因此可以得到：

$$
\begin{aligned}
\psi_\eta(x) & =F_\eta \lambda_\eta(x) e^{-i \varphi_\eta^{\dagger}(x)} e^{-i \varphi_\eta(x)} \\
& =F_\eta\left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-i \frac{2 \pi}{L}N_\eta x} e^{-i \varphi_\eta^{\dagger}(x)} e^{-i \varphi_\eta(x)} \quad (\text { Eq.22 } )  \\
& =F_\eta a^{-1 / 2} e^{-i \frac{2 \pi}{L} N_\eta x} e^{-i \phi_\eta(x)} \quad (\text { Eq.13 } )  \\
\end{aligned}
\tag{26}
$$

&emsp;&emsp; 最终，我们得到了<font color=blue> bosonic identity </font> :

$$
\psi_\eta(x) = F_\eta a^{-1 / 2} e^{-i \Phi_\eta(x)}
\tag{27}
$$

&emsp;&emsp; 其中$\Phi_\eta(x) \equiv \phi_\eta(x)+\frac{2 \pi}{L} N_\eta x$ , $F_\eta$为Klein Factor, $a$为截断，也包含在$\phi_\eta(x)$中。注意$(26)$式第二个等式对于任意$a$成立，而第三个等号则要求$a \neq 0$，$(27)$最普遍应用，但是之后还是希望从$(26)$式第二个等式出发论述。

&emsp;&emsp; 我们完成上次未完成的验证：这样的费米子场用玻色场表出仍然满足反对易关系，代入上文，再利用矩阵指数关系：若$[A,B]=C ，[A,C]=0,[B,C]=0$,则$e^A e^B=e^B e^A e^C$得到：

$$
\begin{aligned}
\psi_\eta(x) \psi_\eta\left(x^{\prime}\right) & =O_1\left(x, x^{\prime}\right) e^{i \frac{2 \pi}{L} x} e^{\left[-i \varphi_\eta(x),-i \varphi_\eta^{\dagger}\left(x^{\prime}\right)\right]}  \quad \quad(\text { Eq.26 Eq.8 矩阵指数关系} )\\
& =O_1\left(x, x^{\prime}\right) e^{i \frac{2 \pi}{L} x}\left(1-y e^{-2 \pi a / L}\right) \quad \quad(\text { Eq.12 } ) \\
\psi_\eta(x) \psi_\eta^{\dagger}\left(x^{\prime}\right) & =O_2\left(x, x^{\prime}\right) e^{-i \frac{2 \pi}{L}\left(x-x^{\prime}\right)} e^{\left[-i \varphi_\eta(x), i \varphi_\eta^{\dagger}\left(x^{\prime}\right)\right]} \\
& =O_2\left(x, x^{\prime}\right) y\left(1-y e^{-2 \pi a / L}\right)^{-1} \\
\psi_\eta^{\dagger}\left(x^{\prime}\right) \psi_\eta(x) & =O_2\left(x, x^{\prime}\right) e^{\left[i \varphi_\eta\left(x^{\prime}\right),-i \varphi_\eta^{\dagger}(x)\right]} \\
& =O_2\left(x, x^{\prime}\right)\left(1-y^{-1} e^{-2 \pi a / L}\right)^{-1} .
\end{aligned}
\tag{28}
$$

&emsp;&emsp;其中$y \equiv e^{-i \frac{2 \pi}{L}\left(x-x^{\prime}\right)}$，以及：

$$
\begin{aligned}
& O_1\left(x, x^{\prime}\right)=\frac{2 \pi}{L} F_\eta F_\eta e^{-i \frac{2 \pi}{L}N_\eta\left(x+x^{\prime}\right)} e^{-i\left(\varphi_\eta^{\dagger}(x)+\varphi_\eta^{\dagger}\left(x^{\prime}\right)\right)} e^{-i\left(\varphi_\eta(x)+\varphi_\eta\left(x^{\prime}\right)\right)} \\
& O_2\left(x, x^{\prime}\right)=\frac{2 \pi}{L} e^{-i \frac{2 \pi}{L}N_\eta(x-x^{\prime})} e^{-i\left(\varphi_\eta^{\dagger}(x)-\varphi_\eta^{\dagger}\left(x^{\prime}\right)\right)} e^{-i\left(\varphi_\eta(x)-\varphi_\eta\left(x^{\prime}\right)\right)} .
\end{aligned}
\tag{29}
$$

&emsp;&emsp;因此满足反对易关系：

$$
\begin{aligned}
\psi_\eta(x) \psi_\eta\left(x^{\prime}\right)+\psi_\eta\left(x^{\prime}\right) \psi_\eta(x)& =O_1\left(x, x^{\prime}\right) e^{i \frac{\pi}{L}\left(x+x^{\prime}\right)}\left[y^{-\frac{1}{2}}\left(1-y e^{-2 \pi a / L}\right)+y^{\frac{1}{2}}\left(1-y^{-1} e^{-2 \pi a / L}\right)\right] \\
 & \xrightarrow{a \rightarrow 0} 0 ; \\
\psi_\eta(x)\psi_\eta^{\dagger}\left(x^{\prime}\right)+\psi_\eta^{\dagger}\left(x^{\prime}\right)\psi_\eta(x) & \xrightarrow{a \rightarrow 0} O_2\left(x, x^{\prime}\right) y^{\frac{1}{2}}\left[y^{\frac{1}{2}}\left(1-y e^{-2 \pi a / L}\right)^{-1}+y^{-\frac{1}{2}}\left(1-y^{-1} e^{-2 \pi a / L}\right)^{-1}\right] \\
& \xrightarrow{a \rightarrow 0} O_2\left(x, x^{\prime}\right) \sum_{\bar{n} \in \mathbb{Z}} y^{\bar{n}}=O_2\left(x, x^{\prime}\right) L \sum_{\bar{n} \in \mathbb{Z}} \delta\left(x-x^{\prime}-\bar{n} L\right) \\
& =2 \pi \sum_{\bar{n} \in \mathbb{Z}} \delta\left(x-x^{\prime}-\bar{n} L\right)  \quad \quad(\text { PBC } )
\end{aligned}
\tag{30}
$$

&emsp;&emsp; 最后，对于Klein Factor 做一些评论。为什么计算中，往往Klein Factor 可以忽略呢？因为比如计算观测量：$G=\left\langle\psi_1 \psi_2 \ldots \psi_n \psi_n^{\dagger} \psi_{n-1}^{\dagger} \ldots \psi_1^{\dagger}\right\rangle$，成对出现的玻色场保证了成对出现的Klein 系数，由于Kiein Factor 是幺正的，彼此抵消。如果哈密顿量是粒子数守恒的，态也是粒子数守恒的，态之间的 Klein Factor 也互相抵消了，Klein Factor 就可以忽略。（配对相互作用怎么办）

&emsp;&emsp;<font color=purple>好在这个klein factor只在求观测量期望的时候起作用，而且不对观测量只对态起作用。那是不是可以这样认为：比如化简到最后$\langle b_q^{\dagger}b_q\rangle$要代入态了，我直接不线性代数求解，而是直接做ED，写出在nambu表象下的玻色哈密顿量矩阵，求解基态，这样我不用klein factor表示基态，而使用nambu表示而非BCS那个bogoliubov粒子数不守恒基态表示态，是否可以避免？</font>

&emsp;&emsp; 有时候因为Klein Factor 满足$\left[N_\eta, F_{\eta^{\prime}}^{\dagger}\right]=\delta_{\eta \eta^{\prime}} F_\eta^{\dagger}$，人们会把Klein Factor定义为$F_\eta^{\dagger}=e^{i\theta_\eta}$，并以此得到 $\left[N_\eta, i \theta_{\eta^{\prime}}\right] \equiv \delta_{\eta \eta^{\prime}}$，这会导致一个矛盾的结论：

$$
\begin{aligned}
\left\langle N_\eta\right|\left[N_\eta, i \theta_\eta\right]\left|N_\eta\right\rangle & =\left\langle N_\eta\right| 1\left|N_\eta\right\rangle=1 \\
\left\langle N_\eta\right|\left(N_\eta i \theta_\eta-i \theta_\eta N_\eta\right)\left|N_\eta\right\rangle & =\left(N_\eta-N_\eta\right)\left\langle N_\eta\right| i \theta_\eta\left|N_\eta\right\rangle=0
\end{aligned}
\tag{31}
$$

&emsp;&emsp;原因就在于$\theta_\eta$在$|N\rangle$下没有良定义。$F_\eta^{\dagger}=e^{i\theta_\eta}$代表增加一个粒子，但是相当于$\theta_\eta +\theta_\eta^2 ……$代表增加一个粒子，而$\theta_\eta$本身没有定义，$\left\langle N_\eta\right| i \theta_\eta\left|N_\eta\right\rangle$无法计算。因此$\theta_\eta$只能当作一个相位记号数值，而不能当作一个算符，只能利用$F_\eta^{\dagger}=e^{i\theta_\eta}$ 满足：

$$
\begin{aligned}
\left\langle N_\eta\right|\left[N_\eta, e^{ \pm i \theta_\eta}\right]\left|N_\eta\right\rangle & =\left(N_\eta-N_\eta\right)\left\langle N_\eta\right| e^{ \pm i \theta_\eta}\left|N_\eta\right\rangle=0 \\
\left\langle N_\eta\right| \pm e^{ \pm i \theta_\eta}\left|N_\eta\right\rangle & =\pm\left\langle N_\eta \mid N_\eta \pm 1\right\rangle=0
\end{aligned}
\tag{32}
$$

#### <font color=blue>equivalence of bosonic and fermonic field -- series expansion</font>

<img src="https://54749110.github.io/assets/2025-11-15-bosonization-part-2/3.png" width = "590" height = "280" alt="图片名称" align=center />

&emsp;&emsp;我们想要验证对于某个$\eta$,$\psi(x)|0\rangle_0$和$a^{-1 / 2} F e^{-i \phi(x)}|0\rangle_0$的等价性。一方面，考虑玻色场算符的展开，设$y \equiv e^{i 2 \pi x / L}$（$n$就是$q$）：

$$
\psi(x)|0\rangle_0 =\sum_{n=0}^{\infty} y^n c_{-n}|0\rangle_0
\tag{33}
$$

&emsp;&emsp; 另一方面，利用玻色恒等式$(26)$第二个等号，并设置$a=0$,设$\rho_n \equiv \sum_{\bar{n} \in \mathbb{Z}} c_{\bar{n}+n}^{\dagger} c_{\bar{n}}$，为：

$$
\begin{aligned}
& F_\eta\left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-iN_\eta 2 \pi x / L} e^{-i \varphi_\eta^{\dagger}(x)} e^{-i \varphi_\eta(x)}|0\rangle_0 \\
& = F_\eta\left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-iN_\eta 2 \pi x / L} e^{-i \varphi_\eta^{\dagger}(x)} |0\rangle_0  \quad (\text { b|0> = 0} ) \\
& = \left(\frac{2 \pi}{L}\right)^{1 / 2}  e^{-i \varphi_\eta^{\dagger}(x)} c_0|0\rangle_0 \quad (\text { F 移除最高占据态：0 ,后N=0} ) \\
&=e^{-\left(\sum_{n=1}^{\infty} \frac{1}{n} y^n \rho_n\right)} c_0|0\rangle_0 \quad (\text {Eq.9 Eq.4} ) \\
\end{aligned}
\tag{34}
$$

&emsp;&emsp; 按照级数展开逐项拿出来：

$$
=\left[1-y \rho_1+y^2\left(-\frac{1}{2} \rho_2+\frac{1}{2} \rho_1^2\right)+y^3\left(\frac{1}{3} \rho_3+\frac{1}{2} \rho_1 \rho_2-\frac{1}{6} \rho_1^3\right)+\ldots\right] c_0|0\rangle_0
\tag{35}
$$

&emsp;&emsp;如果这样展开就是上图的形式了，对应于$y^1$费米和玻色展开完全相同，对于$y^2$玻色展开有四项，类似$y^2b_1b_1$，和$y^2b_2$都能提供平方项，现在只有$-1$这个态是空的，用$b_1b_1$和$b_2$只有图上的四种组合方法，两种恰好抵消了，这恰好抵消了和费米展开不同的项，只留下了和费米展开相同的项，而且前面的系数相同。

&emsp;&emsp; 也可以如此展开，在待定系数下，设置$y^\alpha c_{n+1}^{\dagger} c_{n-m}$全部的$(\alpha,m)$项，我们从费米场级数展开已知$A_n=1$其余为零。这就是说只需要第一项，其他项如同上图会彼此抵消。

$$
=\sum_{n=0}^{\infty}\left[A_n y^n c_{-n}+B_n y^{n+2}\left(c_{n+1}^{\dagger} c_{-1}\right) c_0+C_n y^{n+3}\left(c_{n+1}^{\dagger} c_{-2}\right) c_0+\ldots\right]|0\rangle_0
\tag{36}
$$

&emsp;&emsp;比如现在式$c_0c_{-2}$这样的作用，用一对玻色子展开，也可以是$\left(c_{-1}^{\dagger} c_{-2}\right)\left(c_0^{\dagger} c_{-1}\right)$这样的作用，把所有这样的作用相加，则可以看到$A_n=1$：

$$
\begin{aligned}
\sum_{n=0}^{\infty} A_n y^n & c_{-n}|0\rangle_0=1-y\left(c_0^{\dagger} c_{-1}\right)+y^2\left[-\frac{1}{2}\left(c_0^{\dagger} c_{-2}\right)+\frac{1}{2}\left(c_{-1}^{\dagger} c_{-2}\right)\left(c_0^{\dagger} c_{-1}\right)\right] \\
\quad+ & y^3\left[-\frac{1}{3}\left(c_0^{\dagger} c_{-3}\right)+\frac{1}{2}\left(c_{-2}^{\dagger} c_{-3}\right)\left(c_0^{\dagger} c_{-2}\right)-\frac{1}{6}\left(c_{-2}^{\dagger} c_{-3}\right)\left(c_{-1}^{\dagger} c_{-2}\right)\left(c_0^{\dagger} c_{-1}\right)\right]+\ldots c_0|0\rangle_0 \\
= & 1+y c_{-1}+y^2\left[\frac{1}{2}+\frac{1}{2}\right] c_{-2}+y^3\left[\frac{1}{3}+\frac{1}{2}+\frac{1}{6}\right] c_{-3}+\ldots|0\rangle_0 \\
= & \sum_{n=0}^{\infty} 1 \cdot y^n  c_{-n}|0\rangle_0
\end{aligned}
\tag{37}
$$

&emsp;&emsp;同样可以处理第二项，可以看到系数都抵消了，这说明$B_n=0$，说明之前说的只有那些$b$算符：把比$N_\eta$能级低的占据能级的电子，搬到这个空的$N_\eta$能级上的作用存活，其它作用互相抵消。证明完毕。

$$
\begin{aligned}
\sum_{n=0}^{\infty} B_n y^{n+2}\left(c_n^{\dagger} c_{-1}\right) c_0|0\rangle_0= & y^2\left[-\frac{1}{2}\left(c_1^{\dagger} c_{-1}\right)+\frac{1}{2}\left(c_1^{\dagger} c_0\right)\left(c_0^{\dagger} c_{-1}\right)\right] \\
& +  y^3\left[-\frac{1}{3}\left(c_2^{\dagger} c_{-1}\right)+\frac{1}{2}\left(c_2^{\dagger} c_1\right)\left(c_1^{\dagger} c_{-1}\right)-\frac{1}{6}\left(c_2^{\dagger} c_1\right)\left(c_1^{\dagger} c_0\right)\left(c_0^{\dagger} c_{-1}\right)\right]+\ldots c_0|0\rangle_0 \\
= & y^2\left[-\frac{1}{2}+\frac{1}{2}\right]\left(c_1^{\dagger} c_{-1}\right)+y^3\left[-\frac{1}{3}+\frac{1}{2}-\frac{1}{6}\right]\left(c_2^{\dagger} c_{-1}\right)+\ldots c_0|0\rangle_0 \\
= & 0
\end{aligned}
\tag{38}
$$

#### <font color=blue>Example : hamiltonian with linear expansion </font>

&emsp;&emsp;以具有线性色散的无相互作用哈密顿量为例：

$$
\begin{aligned}
H_{0 \eta} & \equiv \sum_{k=-\infty}^{\infty} k \star c_{k \eta}^{\dagger} c_{k \eta} \star \\
= & (2\pi L)^{-1} \int_{-L / 2}^{L / 2} dxdx' \sum_{k=-\infty}^{\infty} k e^{ik(x-x')} \star \psi_\eta^{\dagger}(x) \psi_\eta(x) \star \\
= & (2\pi L)^{-1} \int_{-L / 2}^{L / 2} dxdx' (-i)\sum_{k=-\infty}^{\infty} \partial_x [e^{ik(x-x')}\star \psi_\eta^{\dagger}(x) \psi_\eta(x) \star] - e^{ik(x-x')} \partial_x \star \psi_\eta^{\dagger}(x) \psi_\eta(x) \star \\
= & \int_{-L / 2}^{L / 2-PBC} \partial_x \star \psi_\eta^{\dagger}(x) \psi_\eta(x) \star dx + \int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \star \psi_\eta^{\dagger}(x) i \partial_x \psi_\eta(x) \star \\
= & \int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \star \psi_\eta^{\dagger}(x) i \partial_x \psi_\eta(x) \star \\
\end{aligned}
\tag{34}
$$

&emsp;&emsp;$N$粒子基态本征能量可以解出：

$$
\begin{aligned}
E_{0 \eta}^{\vec{N}}=\langle\vec{N_0}| H_{0 \eta}|\vec{N}\rangle_0 &=\frac{2 \pi}{L} \frac{1}{2} N_\eta(N_\eta+1)
\end{aligned}
\tag{39}
$$

&emsp;&emsp; 之前讨论过，用$b$算符也可以完备的表示这个空间，已知从玻色子算符的定义可以得到$H_0$满足：$\left[H_{0 \eta}, b_{q \eta^{\prime}}^{\dagger}\right]=q b_{q \eta}^{\dagger} \delta_{\eta \eta^{\prime}}$，以及式$(35)$，可以构造玻色哈密顿量满足上述两个条件：

$$
\begin{aligned}
H_{0 \eta} & =\sum_{q>0} q b_{q \eta}^{\dagger} b_{q \eta}+\frac{2 \pi}{L} \frac{1}{2} N_\eta (N_\eta+1) \\
& =\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \frac{1}{2} \star \left(\partial_x \phi_\eta(x)\right)^2 \star +\left(\frac{2 \pi}{L}\right) \frac{1}{2} N_\eta (N_\eta+1)
\end{aligned}
\tag{40}
$$

&emsp;&emsp;我们计算$\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \frac{1}{2} \star \left(\partial_x \phi_\eta(x)\right)^2 \star$，已知$\varphi_\eta(x) \equiv-\sum_{q>0} \frac{1}{\sqrt{n_q}} e^{-i q x} b_{q \eta} e^{-a q / 2} , n_q \sim q$, 该项会出来两部分的积分：$e^{i(q+q')x}$与$e^{i(q-q')x}$前者为零，因为$q,q'>0$，后者要求$q=q'$。最后会得到：

$$
\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \frac{1}{2}  \left(\partial_x \phi_\eta(x)\right)^2 = \frac{1}{2}\sum_{q>0} q (b_{q\eta}b_{q\eta}^{\dagger}+ b_{q\eta}^{\dagger}b_{q\eta})= \sum_{q>0} q b_{q \eta}^{\dagger} b_{q \eta} + \sum_{q>0} q
\tag{41}
$$

&emsp;&emsp; 关键的是这里正规序的作用，在离散费米子模型中，正规序减去了一个零点能，通常为$1/2h\omega$,如果在本文的$Fock$态构造中，费米面做为原点连续极限下费米面下面有无穷的能级，就是如上公式的发散的零点能，所以这一项需要取正规序减掉，也就是$\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \frac{1}{2} \star \left(\partial_x \phi_\eta(x)\right)^2 \star$,才保证$(36)$式两者等价性。我们同时会看到，费米子使用正规序，因为它底下有一个费米海，玻色子的$q$是相对能级，所以对能量的贡献不需要正规序。

&emsp;&emsp;  实际上，在场论中处理这类问题使用的是“point splitting"（点分离），下面尝试使用这个方法导出玻色哈密顿量，讨论和正规化方法的异同。费米场满足，设$z=\tau+ix$，后面两项没有正规化，$c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta}= \star c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \star - \langle c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta}  \rangle= e^{k'a}(N_\eta -1)$,之后才能取$a\rightarrow0$的极限。

$$
\begin{aligned}
\psi_\eta^{\dagger}(z+a) \psi_\eta(z) & =\sum_{k \neq 0} e^{-k(z+a)} \frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime}(z+a)} c_{k^{\prime}-k \eta}^{\dagger} e^{-k^{\prime} z} c_{k^{\prime} \eta}+\frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \\
& \xrightarrow{a \rightarrow 0} \sum_{q>0}\left(\frac{2 \pi q}{L}\right)^{1 / 2}\left(e^{-q z} i b_{q \eta}-e^{q z} i b_{q \eta}^{\dagger}\right)+\frac{2 \pi}{L} N_\eta+\frac{2 \pi}{L} \sum_{k^{\prime} \leq 0} e^{k^{\prime} a} \\
& =i \partial_z \phi_\eta(z)+\frac{2 \pi}{L} N_\eta+\left[\frac{1}{a}+\frac{\pi}{L}+\operatorname{Order}\left(\frac{a}{L^2}\right)\right]
\end{aligned}
\tag{42}
$$

&emsp;&emsp;可以看到，在极限$a\rightarrow0$下，即$\psi_\eta^{\dagger}(z) \psi_\eta(z)$
会发散.这个展开费米场称为operator product expansion (OPE)，实际上这样的展开说明了$O_i(z) O_j\left(z^{\prime}\right)$两个费米场如果非常接近的话，展开式就是如下发散的形式：

$$
O_i(z) O_j\left(z^{\prime}\right) \xrightarrow{z \rightarrow z^{\prime}} \sum_k \frac{C_{i j k} O_k\left(z^{\prime}\right)}{\left(z-z^{\prime}\right)^{\Delta_i+\Delta_j-\Delta_k}}
\tag{43}
$$

&emsp;&emsp;其中的参数$\Delta$称为场$(i,j)$的Scaling-Dimension。比如重整化中$\left\langle O_1\left(\lambda x_1\right) O_2\left(\lambda x_2\right) \ldots\right\rangle=\lambda^{-\Delta_1-\Delta_2-\cdots}\left\langle O_1\left(x_1\right) O_2\left(x_2\right) \ldots\right\rangle$，$\Delta$就反映了标度变换尺度。上文$\left\langle\psi^{\dagger}(x) \psi(0)\right\rangle \sim 1/x$  就代表了无相互作用一维费米场的scaling dimension 为$\Delta_\psi=1/2$，期望着计算$1+1$维Dirac场的等时关联函数给出相同的结论（后文会计算）。

&emsp;&emsp;point spliting 的定义是：

$$
: O_i(z) O_j(z): \equiv O_i(z+a) O_j(z)-\langle\overrightarrow{0_0}| O_i(z+a) O_j(z)|\overrightarrow{0}\rangle_0
\tag{44}
$$

&emsp;&emsp;从$(42)$式看到，这实际上就说明点分离和正规化具有相同的形式：

$$
: \psi_\eta^{\dagger}(z) \psi_\eta(z):=i \partial_z \phi_\eta(z)+\frac{2 \pi}{L} N_\eta= \star \psi_\eta^{\dagger}(z) \psi_\eta(z) \star=\rho_\eta(z)
\tag{45}
$$

&emsp;&emsp;其中$:$指的是点分离，$\star$指的是正规化。可以看到“点分离”,先把两个场分开一点，从而可以减掉发散项，再取极限回到同一点。“正规化”做的是直接调换算符顺序，从而不出现发散项。$(45)$说的是点分离所减掉的发散项正好就是正规序表达式里不出现的那个真空期望值部分。然而，式$(43)$给出了例外情况：如果发散来自于$(43)$的分母，两者一致。如果发散来自算符$O_k$，而且期望$\langle O_k\left(z\right)\rangle$自身在$z$处为零，点分离则减不掉这个发散。

&emsp;&emsp;下面把point spliting 的费米场用玻色场表示,中间仍然要用矩阵指数的性质：

$$
\begin{aligned}
\psi_\eta^{\dagger}(z+a) \psi_\eta(z) & =\frac{2 \pi}{L} e^{N_\eta(z+a)} e^{i \varphi_\eta^{\dagger}(z+a)} e^{i \varphi_\eta(z+a)} e^{-N_\eta z} e^{-i \varphi_\eta^{\dagger}(z)} e^{-i \varphi_\eta(z)} \\
& =\frac{2 \pi}{L} e^{N_\eta a} e^{i\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right)} e^{i\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right)} e^{\left[\varphi_\eta(z+a), \varphi_\eta^{\dagger}(z)\right]} \\
\end{aligned}
\tag{46}
$$

&emsp;&emsp;把所有的项泰勒对于小量$a$展开直到找到$1/a$发散项：

$$
\begin{aligned}
e^{N_\eta a} = & (1+N_\eta a) \\
e^{i\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right)} & = 1 + ia\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right) = 1+i a \partial_z\varphi_\eta^{\dagger}(z) \\
e^{i\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right)} & = 1 + ia\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right) = 1+i a \partial_z\varphi_\eta(z)  \\
e^{N_\eta a}e^{i\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right)}e^{i\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right)} & = 1+ia (\partial_z\varphi_\eta^{\dagger}(z) +\partial_z\varphi_\eta(z)) +N_\eta a \\
e^{\left[\varphi_\eta(z+a), \varphi_\eta^{\dagger}(z)\right]} &= e^{-\ln \left[1-e^{-i \frac{2 \pi}{L}\left(z+a-z+ a\right)}\right]} = [1-e^{-i \frac{2 \pi}{L}\left(2a\right)}]^{-1} \\
& = \frac{1}{-i x\left[1-\frac{i x}{2}-\frac{x^2}{6}+O\left(x^3\right)\right]} \\
& = (1+\frac{i x}{2} + x^2…… ) \frac{1}{ix} =  \frac{L}{2 \pi a}+\frac{1}{2}
\end{aligned}
$$

&emsp;&emsp; 因此：

$$
\begin{aligned}
\psi_\eta^{\dagger}(z+a) \psi_\eta(z) & =\quad \frac{2 \pi}{L}\left[1+i a \partial_z\left(\varphi_\eta^{\dagger}(z)+\varphi_\eta(z)\right)+a N_\eta\right]\left(\frac{L}{2 \pi a}+\frac{1}{2}\right) \\
& =\quad i \partial_z \phi_\eta(z)+\frac{2 \pi}{L} N_\eta  +\frac{1}{a}+\frac{\pi}{L}+\operatorname{Order}\left(\frac{a}{L^2}\right) .
\end{aligned}
\tag{47}
$$

&emsp;&emsp;对比式$(42)$具有相同的发散形式，玻色和费米的形式一致。接下来考虑一维无相互作用线性色散哈密顿量，有：

$$
\psi_\eta^{\dagger}(z+a) \partial_z \psi_\eta(z)=\sum_{k \neq 0} e^{-k(z+a)} \frac{2 \pi}{L} \sum_{k^{\prime}} k^{\prime} e^{k^{\prime}(z+a)} c_{k^{\prime}-k \eta}^{\dagger} e^{-k^{\prime} z} c_{k^{\prime} \eta}+\frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} k^{\prime} c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta}
\tag{48}
$$

&emsp;&emsp;对于$k \neq 0$,有$\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} e^{-i k x}=0$，第一项没有了，并且有：

$$
\langle \psi_\eta^{\dagger}(z+a) \partial_z \psi_\eta(z) \rangle  = \langle \sum_{k \neq 0} e^{-k(z+a)} \frac{2 \pi}{L} \sum_{k^{\prime}} k^{\prime} e^{k^{\prime}(z+a)} c_{k^{\prime}-k \eta}^{\dagger} e^{-k^{\prime} z} c_{k^{\prime} \eta} \rangle + \langle \frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} k^{\prime} c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \rangle
\tag{49}
$$

&emsp;&emsp;同样第一项对$k\neq0$,$\langle c_{k^{\prime}-k \eta}^{\dagger}c_{k^{\prime} \eta} \rangle$期望是零，综上，点离散形式只剩下了两项，哈密顿量点离散和正规化仍然是一致的。

$$
: \psi_\eta^{\dagger}(z+a) \partial_z \psi_\eta(z) : = \frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} k^{\prime} c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} - \langle \frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} k^{\prime} c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \rangle =  \frac{2 \pi}{L} \sum_{k^{\prime}} e^{k^{\prime} a} k^{\prime} \star c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \star
$$

$$
-\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi}: \psi_\eta^{\dagger}(z) \partial_z \psi_\eta(z): = \sum_{k^{\prime}} k' \star c_{k^{\prime} \eta}^{\dagger} c_{k^{\prime} \eta} \star = H_{0\eta} = \int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \star \psi_\eta^{\dagger}(z) i\partial_z \psi_\eta(z) \star
\tag{50}
$$

&emsp;&emsp;现在来验证玻色化的哈密顿量的一致性，这个式子超级复杂，矩阵指数关系为，若$C=[A,B],[A,C]=0,[B,C]=0$,则$[A,e^{B}]=e^{B}C$.下面的等式利用了$Ae^{B}=e^{B}A+e^{B}C$,其中$A=\partial_z  \varphi_\eta^{\dagger}(z),B=- \varphi_\eta(z), C=[\partial_z  \varphi_\eta^{\dagger}(z),\varphi_\eta(z)]$.

$$
\begin{aligned}
\partial_z \psi_\eta(z)= & \partial_z (F_\eta\left(\frac{2 \pi}{L}\right)^{1 / 2} e^{-  N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} e^{- \varphi_\eta(z)} ) \\
\sim &- N_\eta  e^{- \frac{2 \pi}{L} N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} e^{- \varphi_\eta(z)} -  e^{-  N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} \partial_z  \varphi_\eta^{\dagger}(z)  e^{- \varphi_\eta(z)} - e^{- \frac{2 \pi}{L} N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} e^{- \varphi_\eta(z)} \partial_z  \varphi_\eta(z) \\
e^{- \frac{2 \pi}{L} N_\eta z} e^{- \varphi_\eta^{\dagger}(z)}\partial_z  \varphi_\eta^{\dagger}(z) e^{- \varphi_\eta(z)}  &= e^{- \frac{2 \pi}{L} N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} e^{- \varphi_\eta(z)}(\partial_z  \varphi_\eta^{\dagger}(z)+[\partial_z  \varphi_\eta^{\dagger}(z),\varphi_\eta(z)]) \\
= & -e^{- \frac{2 \pi}{L} N_\eta z} e^{- \varphi_\eta^{\dagger}(z)} e^{- \varphi_\eta(z)} (N_\eta + \partial_z  \varphi_\eta^{\dagger}(z) +\partial_z  \varphi_\eta(z) + [\partial_z  \varphi_\eta^{\dagger}(z),\varphi_\eta(z)])
\end{aligned}
\tag{51}
$$

$$
\begin{aligned}
C = & \partial_z [\varphi_\eta^{\dagger}(z),\varphi_\eta(z')] (z=z') \\
= & \partial_z ln [1-e^{\pi(z-z'-a)/L}] = -\left(\frac{1}{a}-\frac{\pi}{L}\right) \quad \text{order 1/a}
\end{aligned}
\tag{52}
$$

$$
\begin{aligned}
& e^{N_\eta a} e^{i\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right)} e^{i\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right)} \\
=& (1+aN_\eta+\frac{1}{2}a^2N_\eta^2)(1+i a \partial_z \varphi_\eta^{\dagger}+\frac{(i a)^2}{2} \partial_z^2 \varphi_\eta^{\dagger})(1+i a \partial_z \varphi_\eta+\frac{(i a)^2}{2} \partial_z^2 \varphi_\eta) \quad  \\
= & 1++aN_\eta+\frac{1}{2}a^2N_\eta^2+i a\left(\partial_z \varphi_\eta^{\dagger}+\partial_z \varphi_\eta\right)+\frac{(i a)^2}{2}\left[\partial_z^2 \varphi_\eta^{\dagger}+\partial_z^2 \varphi_\eta+2 \partial_z \varphi_\eta^{\dagger} \cdot \partial_z \varphi_\eta\right]  \\
= & {\left[1+a\left(N_\eta+i \partial_z \phi_\eta(z)\right)+\frac{1}{2} a^2\left(N_\eta^2+2 N_\eta i \partial_z \phi_\eta(z)+\star \left(i \partial_z \phi_\eta(z)\right)^2 \star+i \partial_z^2 \phi_\eta(z)\right)\right] } \\
& (\text{normal order ignore}  \quad \partial_z \varphi_\eta \partial_z \varphi_\eta^{\dagger}) (\text{ To order} \quad a^2)\\
\end{aligned}
\tag{53}
$$

$$
\begin{aligned}
& -  \psi_\eta^{\dagger}(z+a) \partial_z \psi_\eta(z) \\
= & \frac{2 \pi}{L} e^{N_\eta(z+a)} e^{i \varphi_\eta^{\dagger}(z+a)} e^{i \varphi_\eta(z+a)} e^{-N_\eta z} e^{-i \varphi_\eta^{\dagger}(z)} e^{-i \varphi_\eta(z)} (N_\eta+i \partial_z \phi_\eta(z)+\left[\partial_z \varphi_\eta^{\dagger}(z), \varphi_\eta(z)\right] ) \\
= & \frac{2 \pi}{L} e^{N_\eta a} e^{i\left(\varphi_\eta^{\dagger}(z+a)-\varphi_\eta^{\dagger}(z)\right)} e^{i\left(\varphi_\eta(z+a)-\varphi_\eta(z)\right)}\left(\frac{L}{2 \pi a}+\frac{1}{2}\right) (N_\eta+i \partial_z \phi_\eta(z)-\left(\frac{1}{a}-\frac{\pi}{L}\right) ) \\
= & {\left[1+a\left(N_\eta+i \partial_z \phi_\eta(z)\right)+\frac{1}{2} a^2\left(N_\eta^2+2 N_\eta i \partial_z \phi_\eta(z)+\star \left(i \partial_z \phi_\eta(z)\right)^2 \star+i \partial_z^2 \phi_\eta(z)\right)\right] } \\
& \quad \times (\left(N_\eta+i \partial_z \phi_\eta(z)\right)\left(\frac{1}{a}+\frac{\pi}{L}\right)-\left(\frac{1}{a^2}+\frac{\pi^2}{L^2}\right) )
\end{aligned}
\tag{54}
$$

&emsp;&emsp; 当$a\rightarrow0$时，我们找到以下的不发散不为零的项：

$$
\begin{aligned}
& 1 \cdot (\frac{\pi}{L}\left(N_\eta+i \partial_z \phi_\eta(z)\right)-\frac{\pi^2}{L^2}) +a \cdot \frac{1}{a}\left(N_\eta+i \partial_z \phi_\eta(z)\right)\left(N_\eta+i \partial_z \phi_\eta(z)\right) \\
& + a^2 \cdot \frac{1}{2a^2} \left(N_\eta^2+2 N_\eta i \partial_z \phi_\eta(z)+\star \left(i \partial_z \phi_\eta(z)\right)^2 \star+i \partial_z^2 \phi_\eta(z)\right) \cdot (-1) \\
= & \frac{\pi^2}{L^2}(N_\eta^2+N_\eta+1 )+N_\eta i \partial_z \phi_\eta(z)+\frac{1}{2} \star \left( \partial_z \phi_\eta(z)\right)^{2} \star-\frac{1}{2} i \partial_z^2 \phi_\eta(z)-\left( \partial_z \phi_\eta(z)\right)^{2} \\
=& \frac{\pi^2}{L^2}(N_\eta^2+N_\eta+1 )+N_\eta i \partial_z \phi_\eta(z)-\frac{1}{2} \star \left( \partial_z \phi_\eta(z)\right)^{2} \star-\frac{1}{2} i \partial_z^2 \phi_\eta(z)-\langle \left( \partial_z \phi_\eta(z)\right)^{2} \rangle \\
\end{aligned}
\tag{54}
$$

&emsp;&emsp; 接下来就要求$-\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi}: \psi_\eta^{\dagger}(z) \partial_z \psi_\eta(z):$了，回顾上文正规序和点离散的定义，根据：$:(\star O \star):$=$:O: \quad :\langle O\rangle: = 0$。记号$N_\eta$已经是正规形式了。场对于$dx$的积分，由于场PBC连续，导数连续，则上式为：

$$
-\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi}: \psi_\eta^{\dagger}(z) \partial_z \psi_\eta(z):=\int_{-L / 2}^{L / 2} \frac{d x}{2 \pi} \frac{1}{2}:\left(i \partial_z \phi_\eta(z)\right)^2:+\frac{2 \pi}{L} \frac{1}{2} N_\eta\left(N_\eta+1-\delta_b\right)
\tag{55}
$$

&emsp;&emsp;对比式$(40)$这就是正规化得到的玻色哈密顿量形式，证明完毕。

#### <font color=blue>Green's Function</font>

&emsp;&emsp;下面说明自由费米子的两点格林函数可以由自由玻色子导出，当讨论松原-格林函数的时候，我们引入虚时$\psi_\eta^{\dagger}(\tau,x)$,讨论在线性色散下面，可以令$z=ix+\tau$，有$\psi_\eta(z) \equiv \psi_\eta(\tau, x)$，要注意这个假设只能在无相互作用下成立。下面先在零温，有限尺寸下面得到虚时自由费米和自由玻色的格林函数，令$y \equiv e^{-\frac{2 \pi}{L}(\sigma \tau+\sigma i x+a)}$，$\sigma \equiv \operatorname{sgn}(\tau)$，利用$\sigma \equiv \operatorname{sgn}(\tau)$的技巧可以把下面的两个对于$k>0$,$k<0$的求和统一,还要引入小量$a$,以防止求和发散：

$$
-G_{\eta \eta^{\prime}}^{>}(\tau, x) \equiv\left\langle\psi_\eta(\tau, x) \psi_{\eta^{\prime}}^{\dagger}(0,0)\right\rangle
$$

$$
G_{\eta \eta^{\prime}}^{<}(\tau, x) \equiv\left\langle\psi_{\eta^{\prime}}^{\dagger}(0,0) \psi_\eta(\tau, x)\right\rangle
\tag{55}
$$

$$
\begin{aligned}
-G_{\eta \eta^{\prime}}(\tau, x) & \equiv \theta(\tau) G_{\eta \eta^{\prime}}^{<}(\tau, x)+\theta(-\tau) G_{\eta \eta^{\prime}}^{<}(\tau, x) \\
& =\delta_{\eta \eta^{\prime}}\left[\theta(\tau) \frac{2 \pi}{L} \sum_{k>0} e^{-k(\tau+i x+\sigma a)}-\theta(-\tau) \frac{2 \pi}{L} \sum_{k<0} e^{-k(\tau+i x+\sigma a)}\right] \\
& =\delta_{\eta \eta^{\prime}} \frac{2 \pi}{L} \sigma  \sum_{n=1}^{\infty} y^n=\delta_{\eta \eta^{\prime}} \frac{2 \pi}{L} \sigma \frac{1}{1-y} \\
& =\frac{\delta_{\eta \eta^{\prime}} e^{\frac{\pi}{L}\sigma(\tau+i x)}}{\frac{L}{\pi} \sinh \left[\frac{\pi}{L}(\tau+i x+\sigma a)\right]} \xrightarrow{L \rightarrow \infty} \frac{\delta_{\eta \eta^{\prime}}}{\tau+i x+\sigma a} .
\end{aligned}
\tag{56}
$$

&emsp;&emsp; 对于玻色场也是类似的，玻色场的定义式$(9)$，

$$
-\mathcal G_{\eta \eta^{\prime}}^{>}(\tau, x) \equiv\left\langle\phi_\eta(\tau, x) \phi_{\eta^{\prime}}(0,0)\right\rangle
$$

$$
-\mathcal G_{\eta \eta^{\prime}}^{<}(\tau, x) \equiv\left\langle\phi_{\eta^{\prime}}(0,0) \phi_\eta(\tau, x)\right\rangle
\tag{57}
$$

$$
\begin{aligned}
& -\mathcal G_{\eta \eta^{\prime}}(\tau, x) \equiv \theta(\tau) \mathcal G_{\eta \eta^{\prime}}^{>}(\tau, x)+\theta(-\tau) \mathcal G_{\eta \eta^{\prime}}^{<}(\tau, x)=\mathcal G_{\eta \eta^{\prime}}^{>}(\sigma \tau, \sigma x) \\
& \quad=\delta_{\eta \eta^{\prime}} \sum_{q>0}^{\infty} \frac{1}{n_q} e^{-q(\sigma \tau+\sigma i x+a)}=\delta_{\eta \eta^{\prime}} \sum_{n_q=1}^{\infty} \frac{1}{n_q} y^{n_q}=-\delta_{\eta \eta^{\prime}} \ln (1-y) \\
& \quad=\quad-\delta_{\eta \eta^{\prime}} \ln \left(1-e^{-\frac{2 \pi}{L}(\sigma \tau+\sigma i x+a)}\right) \xrightarrow{L \rightarrow \infty}-\delta_{\eta \eta^{\prime}} \ln \left[\frac{2 \pi}{L}(\sigma \tau+\sigma i x+a)\right]
\end{aligned}
\tag{58}
$$

&emsp;&emsp; 一个结论就是这个线性色散下的自由玻色子格林函数会发散。玻色子和费米子格林函数发散性的差异其实就来源于无质量狄拉克费米场和无质量标量场在正则量子化时的差异，格林函数如何处理“$1/q$”项在$q=0$时的发散，下文“场论”模块会讨论。

&emsp;&emsp;因此在$T \rightarrow0$, $L \neq \infty$的极限下线性色散的无相互作用自由场的格林函数为：

$$
\begin{aligned}
\left\langle\mathcal{T} \psi_\eta(z) \psi_{\eta^{\prime}}^{\dagger}(0)\right\rangle_{T=0} & =\frac{\delta_{\eta \eta^{\prime}} e^{\frac{\pi}{L}\sigma z}}{\frac{L}{\pi} \sinh \left[\frac{\pi}{L}(z+\sigma a)\right]} \\
\left\langle\mathcal{T} \phi_\eta(z) \phi_{\eta^{\prime}}(0)\right\rangle_{T=0} & =-\delta_{\eta \eta^{\prime}} \ln \left(1-e^{-\frac{2 \pi}{L}(\sigma z+a)}\right)
\end{aligned}
\tag{59}
$$

&emsp;&emsp; 讨论$T \neq0$, $L = \infty$时的格林函数，会看到处理$1/q$发散时的数学技巧，费米场的情况是容易的，有限温的时候需要用到分布函数，令$\bar{y} \equiv e^{-2 \pi i(\sigma \tau+\sigma i x+a) / \beta}$，以及$\sigma \equiv \operatorname{sgn}(\tau)$，注意最后一个等号要用到奇点$\bar{y}^{(\bar{n}+1 / 2) \sigma} / \beta$的留数求和，取$k=2 \pi i(\bar{n}+1 / 2) / \beta$：

$$
\begin{aligned}
\left\langle c_{k \eta}^{\dagger} c_{k^{\prime} \eta^{\prime}}\right\rangle & =\frac{\delta_{\eta \eta^{\prime}} \delta_{k k^{\prime}}}{e^{\beta k}+1}, \\
\left\langle b_{q \eta}^{\dagger} b_{q^{\prime} \eta^{\prime}}\right\rangle & =\frac{\delta_{\eta \eta^{\prime}} \delta_{q q^{\prime}}}{e^{\beta q}-1},
\end{aligned}
\tag{60}
$$

$$
\begin{aligned}
-G_{\eta \eta^{\prime}}(\tau, x) & =\delta_{\eta \eta^{\prime}} \int_{-\infty}^{\infty} d k \frac{e^{-k(\tau+i x+\sigma a)}}{\sigma\left(1+e^{-\sigma \beta k}\right)} \\
& =\delta_{\eta \eta^{\prime}}(2 \pi i / \beta)\left[-\theta(x) \sum_{\bar{n}=-\infty}^0 \bar{y}^{(\bar{n}-1 / 2) \sigma}+\theta(-x) \sum_{\bar{n}=0}^{\infty} \bar{y}^{(\bar{n}+1 / 2) \sigma}\right] \\
& =\frac{\delta_{\eta \eta^{\prime}}}{\frac{\beta}{\pi} \sin \left[\frac{\pi}{\beta}(\tau+i x+\sigma a)\right]} \xrightarrow{T \rightarrow 0} \frac{\delta_{\eta \eta^{\prime}}}{\tau+i x+\sigma a}
\end{aligned}
\tag{61}
$$

&emsp;&emsp;下面处理玻色的格林函数，结合$(58)$式和$(60)$式，再在一维下取$q$的连续极限，但是这里我们先不取热力学极限下的$q=0$点，因为如上文这个点是一个发散点，以$\ln (L / a)$发散。先取一个有限下界，并以$L\rightarrow \infty$逼近热力学极限来计算。最后还需要把第二项的$e^{-qa}$替换为$e^{qa}$，这样可以做最后等号的正负对称，由于$a$的引入是小量只为了处理$\tau=0(q=\infty)$的情况，做如此的修改只会改变$a / \beta \simeq 0$的量级。

$$
\begin{aligned}
-\mathcal G_{\eta \eta^{\prime}}(\tau, x) & \equiv \theta(\tau) \mathcal G_{\eta \eta^{\prime}}^{>}(\tau, x)+\theta(-\tau) \mathcal G_{\eta \eta^{\prime}}^{<}(\tau, x) \\
\theta(\tau)\mathcal G_{\eta \eta^{\prime}}^{>}(\tau, x)& = - \theta(\tau) \left\langle\phi_\eta(\tau, x) \phi_{\eta^{\prime}}(0,0)\right\rangle =\theta(\tau) \langle \sum_{q>0} \frac{e^{-qa}}{n_q} (e^{-iqx-q\tau} b_{q\eta}+e^{iqx+q\tau} b_{q\eta}^{\dagger})(b_{q\eta}+b_{q\eta}^{\dagger})\rangle \\
= &\theta(\tau)  \sum_{q>0} \frac{e^{-qa}}{n_q} e^{-iqx-q\tau} \langle b_{q\eta} b_{q\eta}^{\dagger} \rangle + e^{iqx+q\tau} \langle b_{q\eta}^{\dagger} b_{q\eta} \rangle \\
= & \theta(\tau)\sum_{q>0} \frac{e^{-qa}}{n_q} ( e^{-iqx-q\tau} \frac{e^{\beta q}}{e^{\beta q}-1} + e^{iqx+q\tau} \frac{1}{e^{\beta q}-1} ) \\
= & \theta(\tau)\sum_{q>0} \frac{e^{-qa}}{n_q} ( e^{-iqx-q\tau} \frac{e^{\beta q}}{e^{\beta q}-1} + e^{iqx+q\tau} \frac{1}{e^{\beta q}-1} ) \\
= & \sum_{q>0} \frac{e^{-qa}}{n_q} ( e^{-iqx\sigma-q\tau\sigma} \frac{1}{-e^{-\beta q}+1} + e^{iqx\sigma+q\tau\sigma} \frac{1}{e^{\beta q}-1} ) \\
\theta(-\tau) \mathcal G_{\eta \eta^{\prime}}^{<}(\tau, x) = & \theta(-\tau) \sum_{q>0} \frac{e^{-qa}}{n_q} ( e^{iqx+q\tau} \frac{e^{\beta q}}{e^{\beta q}-1} + e^{-iqx-q\tau} \frac{1}{e^{\beta q}-1} ) \\
= &\sum_{q>0} \frac{e^{-qa}}{n_q} ( e^{-iqx\sigma-q\tau\sigma} \frac{1}{-e^{-\beta q}+1} + e^{iqx\sigma+q\tau\sigma} \frac{1}{e^{\beta q}-1} ) \\
-\mathcal G_{\eta \eta^{\prime}}(\tau, x)= & \delta_{\eta \eta^{\prime}} \int_{\frac{2 \pi}{L}}^{\infty} d q \frac{e^{-q a}}{q}\left[\frac{e^{-q(\sigma \tau+\sigma i x)}}{\left(1-e^{-\beta q}\right)}+\frac{e^{q(\sigma \tau+\sigma i x)}}{\left(e^{\beta q}-1\right)}\right] \\
\sim & \delta_{\eta \eta^{\prime}} \int_{\frac{2 \pi}{L}}^{\infty} d q \frac{1}{q}\left[\frac{e^{-q a}e^{-q(\sigma \tau+\sigma i x)}}{\left(1-e^{-\beta q}\right)}+\frac{e^{q a}e^{q(\sigma \tau+\sigma i x)}}{\left(e^{\beta q}-1\right)}\right] \\
= &  \delta_{\eta \eta^{\prime}} (\int_{\frac{2 \pi}{L}}^{\infty} + \int_{-\infty}^{-\frac{2 \pi}{L}}) d q \frac{1}{q}\frac{e^{-q a}e^{-q(\sigma \tau+\sigma i x)}}{\left(1-e^{-\beta q}\right)} \\
\end{aligned}
\tag{62}
$$

&emsp;&emsp; 这个积分可以先算$\int_{-\infty}^{\infty}dq$，利用围道积分的方法，注意要讨论$x>0,x<0$的情况决定围道积分的上下扇区所选取的奇点，再减去$q=0$处的发散奇点值。一阶奇点是：$q=2 \pi i \bar{n} / \beta (n\neq0)$ ，留数为$\bar{y}^{\bar{n}} /(2 \pi i \bar{n})$,其中$\bar{y} \equiv e^{-2 \pi i(\sigma \tau+\sigma i x+a) / \beta}$;二阶奇点是$q=0$,留数为$(\ln \bar{y}) /(2 \pi i)$

$$
\begin{aligned}
\int_{-\infty}^{\infty} d q \frac{1}{q}\frac{e^{-q a}e^{-q(\sigma \tau+\sigma i x)}}{\left(1-e^{-\beta q}\right)}  & =\delta_{\eta \eta^{\prime}}\left[-\theta(\sigma x)\left(\frac{1}{2} \ln \bar{y}+\sum_{\bar{n}=-\infty}^{-1} \frac{\bar{y}^{\bar{n}}}{\bar{n}}\right)+\theta(-\sigma x)\left(\frac{1}{2} \ln \bar{y}+\sum_{\bar{n}=1}^{\infty} \frac{\bar{y}^{\bar{n}}}{\bar{n}}\right)+C\right] \\
& =\delta_{\eta \eta^{\prime}}\left[-\theta(\sigma x)\left(\ln \bar{y}^{1 / 2}+\ln \left(1-\bar{y}^{-1}\right)\right)-\theta(-\sigma x)\left(\ln \bar{y}^{-1 / 2}+\ln (1-\bar{y})\right)+C\right] \\
& =\delta_{\eta \eta^{\prime}}\left[-\ln \left[sgn(\sigma x)\left(\bar{y}^{1 / 2}-\bar{y}^{-1 / 2}\right)\right]+C\right] \\
& =-\delta_{\eta \eta^{\prime}} \ln \left(\frac{2 \beta}{L} \sin \left[\frac{\pi}{\beta}(\sigma \tau+\sigma i x+a)\right]\right)
\end{aligned}
\tag{63}
$$

&emsp;&emsp;这里引入$C$，就对应了扣除的发散的部分，已知发散形式为$-\mathcal G_{\eta \eta^{\prime}}^{(T=0, L \neq \infty)}(0,0)=\delta_{\eta \eta^{\prime}} \ln (L / 2 \pi a)$，我们再极限下代入，对比$(58)$式的$T=0$情况，就得到了$C=\ln [-i L \operatorname{sgn}(\sigma x) / \beta]$。幸运的是两点关联函数通常不是可观测量，可观测量是其差值，通常发散会被抵消：

$$
\begin{aligned}
-\left[\mathcal G_{\eta \eta^{\prime}}(\tau, x)-\mathcal G_{\eta \eta^{\prime}}(0,0)\right] & =\delta_{\eta \eta^{\prime}} \ln \left(\frac{\pi a / \beta}{\sin \left[\frac{\pi}{\beta}(\sigma \tau+\sigma i x+a)\right]}\right) \\
& \xrightarrow{T \rightarrow 0} \delta_{\eta \eta^{\prime}} \ln \left(\frac{a}{\sigma \tau+\sigma i x+a}\right),
\end{aligned}
\tag{64}
$$

&emsp;&emsp; 最后想把费米的格林函数用玻色形式表示，需要以下的矩阵指数性质，对于这种单玻色子的算符，$\hat{B}=\sum_{q>0}\left(\lambda_q b_q^{\dagger}+\tilde{\lambda}_q b_q\right)$，有$\left\langle\hat{B}_0^{2 n+1}\right\rangle=0$，则有：

$$
\left\langle e^{B_0}\right\rangle=\sum_{n=0}^{\infty} \frac{1}{2 n!}\left\langle\ B_0^{2 n}\right\rangle=\sum_{n=0}^{\infty} \frac{1}{2 n!} \frac{(2 n-1)!}{2^{n-1}(n-1)!}{\left\langle B_0^2\right\rangle}^n=\sum_{n=0}^{\infty} \frac{1}{2^n n!}{\left\langle B_0^2\right\rangle}^n=e^{\left\langle B_0^2\right\rangle / 2}
\tag{65}
$$

&emsp;&emsp;同时再运用矩阵指数的BCH公式，得到了：

$$
\left\langle e^{\lambda_1 B_1} e^{\lambda_2 B_2}\right\rangle=e^{\left(\lambda_1 B_1 \lambda_2 B_2+\frac{1}{2}\left(\lambda_1^2 B_1^2+\lambda_2^2 B_2^2\right)\right\rangle}
\tag{66}
$$

&emsp;&emsp;最终得到了在$L\rightarrow \infty$下：

$$
\begin{aligned}
\left\langle\mathcal{T} \psi_\eta(z) \psi_{\eta^{\prime}}^{\dagger}(0)\right\rangle= & a^{-1}\left[\theta(\tau)\left\langle F_\eta e^{-\frac{2 \pi}{L}N_\eta z} e^{-i \phi_\eta(z)} e^{i \phi_{\eta^{\prime}}(0)} F_{\eta^{\prime}}^{\dagger}\right\rangle\right. \\
& \left.-\theta(-\tau)\left\langle e^{i \phi_{\eta^{\prime}}(0)} F_{\eta^{\prime}}^{\dagger} F_\eta e^{-\frac{2 \pi}{L}N_\eta z} e^{-i \phi_\eta(z)}\right\rangle\right] \\
= & \delta_{\eta \eta^{\prime}} \sigma a^{-1} e^{\left\langle\mathcal{T} \phi_\eta(z) \phi_\eta(0)-\phi_\eta(0) \phi_\eta(0)\right\rangle} .
\end{aligned}
\tag{67}
$$

#### <font color=blue>Vertex Operators </font>

&emsp;&emsp;顶点算子的定义是$V_\lambda^{(\eta)}(\tau, x) \sim \star e^{i \lambda \phi_\eta(\tau, x)}\star$它的深刻数学我不知道，但是好在玻色化中只需要用到它的结论就可以了。我这里就推导结论，为下面做RG提供公式。先表示出正规序的形式,如果按级数展开正规序，并利用正规序的定义：舍去非正规的部分，就知道$(69)$式的第一个等号成立，而其中：

$$
\begin{aligned}
\langle e^{i \lambda \phi_\eta(\tau, x)}\rangle = & e^{- \lambda^2/2 \langle\phi_\eta^2(z)\rangle}  \quad (\text{E.q. 64} ) \\
= &  (\frac{2\pi a}{L})^{\lambda^2/2}   \quad (\text{E.q. 63 at z=0} )
\end{aligned}
\tag{68}
$$

$$
\star e^{i \lambda \phi_\eta(\tau, x)}\star  =
e^{i \lambda \varphi_\eta^{\dagger}(z)} e^{i \lambda \varphi_\eta(z)}=\left(\frac{L}{2 \pi a}\right)^{\lambda^2 / 2} e^{i \lambda \phi_\eta(z)}=\frac{e^{i \lambda \phi_\eta(z)}}{\left\langle e^{i \lambda \phi_\eta(x)}\right\rangle} \quad (\text{E.q. 13 68} )
\tag{69}
$$

&emsp;&emsp;两个顶点算子的乘积，利用矩阵代数的性质，如果$[A,B]=C,[A,C]=[B,C]=0$有$e^{A}e^{B}=e^{B}e^{A}e^{C}$,再利用玻色场的对易关系:

$$
\begin{aligned}
\star e^{i \lambda \phi_\eta(z)} \star \star e^{i \lambda^{\prime} \phi_{\eta^{\prime}}\left(z^{\prime}\right)} \star & = e^{i \lambda \varphi_\eta^{\dagger}(z)} e^{i \lambda \varphi_\eta(z)} e^{i \lambda' \varphi_{\eta'}^{\dagger}(z)} e^{i \lambda \varphi_{\eta'}(z')} \\
& =e^{i\left(\lambda \varphi_\eta^{\dagger}(z)+\lambda^{\prime} \varphi_{\eta^{\prime}}^{\dagger}\left(z^{\prime}\right)\right)} e^{i\left(\lambda \varphi_\eta(z)+\lambda^{\prime} \varphi_{\eta^{\prime}}\left(z^{\prime}\right)\right)} e^{-\lambda \lambda^{\prime}\left[\varphi_\eta(z), \varphi_{\eta^{\prime}}\left(z^{\prime}\right)\right]} \\
& =\star e^{i\left(\lambda \phi_\eta(z)+\lambda^{\prime} \phi_{\eta^{\prime}}\left(z^{\prime}\right)\right) } \star \left[\frac{2 \pi}{L}\left(z-z^{\prime}+a\right)\right]^{\lambda \lambda^{\prime}} \quad (\text{E.q. 12 } )
\end{aligned}
\tag{70}
$$

&emsp;&emsp;我们以此定义vertex operator，会看到在正规序之前引入了一个和$L$有关的系数，下面会解释方便性。

$$
V_\lambda^{(\eta)}(z) \equiv\left(\frac{L}{2 \pi}\right)^{-\lambda^2 / 2}\star e^{i \lambda \phi_\eta(z) } \star=a^{-\lambda^2 / 2} e^{i \lambda \phi_\eta(z)} .
\tag{71}
$$

&emsp;&emsp; 求顶点的两点关联函数，其实就是求$\langle e^{i \lambda \phi_\eta(z)} e^{i \lambda \phi_{\eta'}(z')}\rangle$，其中$\sigma = sgn(\tau-\tau')$，从$(63)$式有推论：

$$
\langle T \phi_\eta(z) \phi_{\eta'}(z') \rangle = -\delta_{\eta \eta^{\prime}} \ln \left(\frac{2 \beta}{L} \sin \left[\frac{\pi}{\beta}(\sigma z-\sigma z'+a)\right]\right)
\tag{72}
$$

$$
\langle  \phi_\eta(z) \phi_{\eta'}(z) \rangle = \langle  \phi_\eta(0) \phi_{\eta'}(0) \rangle = -\delta_{\eta \eta^{\prime}} \ln  (2\pi a/L)
\tag{73}
$$

$$
\begin{aligned}
\left\langle\mathcal{T} V_\lambda^{(\eta)}(z) V_{\lambda^{\prime}}^{\left(\eta^{\prime}\right)}\left(z^{\prime}\right)\right\rangle & =\delta_{\eta \eta^{\prime}}\left(a^{-\frac{1}{2}\left(\lambda_1^2+\lambda_2^2\right)}\right)\left(e^{\lambda \lambda^{\prime} \ln \left[\frac{2 \beta}{L} \sin \left[\frac{\pi}{\beta}\left(\sigma z-\sigma z^{\prime}+a\right)\right]\right]}\right)\left(e^{\frac{1}{2}\left(\lambda_1^2+\lambda_2^2\right) \ln \left(\frac{2 \pi a}{L}\right)}\right) \\
& =\frac{\delta_{\eta \eta^{\prime}}(L / 2 \pi)^{-\left(\lambda+\lambda^{\prime}\right)^2 / 2}}{\left(\frac{\beta}{\pi} \sin \left[\frac{\pi}{\beta}\left(\sigma z-\sigma z^{\prime}+a\right)\right]\right)^{-\lambda \lambda^{\prime}}} \stackrel{L \rightarrow \infty, T \rightarrow 0}{\longrightarrow} \frac{\delta_{-\lambda, \lambda^{\prime}}}{\left(\sigma z-\sigma z^{\prime}+a\right)^{\lambda^2}} .
\end{aligned}
\tag{74}
$$

&emsp;&emsp;最后一个等号，在$L\rightarrow\infty$时，只有当$\lambda' = -\lambda$时才使得式子非零。因此之前在vertex operator定义中引入的参数$\left(\frac{L}{2 \pi}\right)^{-\lambda^2 / 2}$保证了这个两点关联函数会存在非零的情况。我们需要关注费米子系统如果具有$U(1)$规范对称性，也就是费米子系统在$\psi \rightarrow \psi e^{i\theta}$下不变，代入玻色恒等式：$\psi_\eta(x) = F_\eta a^{-1 / 2} e^{-i \Phi_\eta(x)}$。这说明玻色场具有一个常数的不变性，$\phi \rightarrow \phi +C$。这是符合无质量玻色场哈密顿量 $i \partial_z \phi_\eta(z)$的。在这个两点关联函数中，要满足这两种规范，就要求$\lambda' = -\lambda$。在零温下给出$\left\langle\mathcal{T} V_\lambda^{(\eta)}(z) V_{-\lambda}^{(\eta)}(0)\right\rangle_{T=0}=(\sigma z)^{-\lambda^2}$，这实际上说的是两个玻色场要想correlate ,有要求相同的scaling dimension $\lambda^2 / 2$。这个参数引入和$a$在玻色恒等式中类似，为了补偿玻色场与费米场scaling dimension (量纲)的不同(0和-1/2)。

&emsp;&emsp;当$z\rightarrow z'$时，可以对$z-z'$做小量展开，$\varphi_\eta(z)=\varphi_\eta\left(z^{\prime}\right)+\left(z-z^{\prime}\right) \partial_{z^{\prime}} \varphi_\eta\left(z^{\prime}\right)$。中间在添一个小量$a$。vertex的两点关联函数为,而且只讨论$\eta =\eta'$的情况，只有这种情况下式(70)才不是正规形式：

$$
\begin{aligned}
V_\lambda^{(\eta)}(z) V_{\lambda'}^{(\eta)}(z') & \sim \star e^{i\left(\lambda \phi_\eta(z)+\lambda^{\prime} \phi_{\eta}\left(z^{\prime}\right)\right) } \star \left[\frac{2 \pi}{L}\left(z-z^{\prime}+a\right)\right]^{\lambda \lambda^{\prime}} \quad (\text{E.q. 70 } ) \\
= & \star e^{i\left(\lambda \phi_\eta(z)+\lambda^{\prime} \phi_{\eta}\left(z\right)(z-z') \partial_{z'} \phi_\eta(z') \right) } \star \left[\frac{2 \pi}{L}\left(z-z^{\prime}+a\right)\right]^{\lambda \lambda^{\prime}} \\
= & \star e^{i\left(\lambda \phi_\eta(z)+\lambda^{\prime} \phi_{\eta}\left(z\right) \right) }  (1+ \lambda (z-z') \partial_{z'} \phi_\eta(z')) \star \left[\frac{2 \pi}{L}\left(z-z^{\prime}+a\right)\right]^{\lambda \lambda^{\prime}} \\
= & \frac{V_{\lambda+\lambda^{\prime}}^{(\eta)}\left(z^{\prime}\right)}{\left(z-z^{\prime}+a\right)^{-\lambda \lambda^{\prime}}}+\frac{\lambda \star V_{\lambda+\lambda^{\prime}}^{(\eta)}\left(z^{\prime}\right) i \partial_{z^{\prime}} \phi_\eta\left(z^{\prime}\right) \star}{\left(z-z^{\prime}+a\right)^{-\lambda \lambda^{\prime}-1}}
\end{aligned}
\tag{75}
$$

&emsp;&emsp;有一个不证的定理，上面的论述中$T\neq0$的无质量场correlator可以由$T=0$的无质量场correlator表出，通过把$z-z'$替换为$\frac{\beta}{\pi} \sin \left[\frac{\pi}{\beta}\left(z-z^{\prime}\right)\right]$。

&emsp;&emsp;利用玻色化恒等式，费米场也可以用vertex operator 表示：

$$
\psi_\eta(z)=F_\eta e^{-\frac{2 \pi}{L} N_\eta z} V_{1}^\eta(z)
$$

&emsp;&emsp; 计算费米场的correlator 在接近的时候用上面的级数展开，在热力学极限下面，这要求$\lambda=-\lambda'=1$代入$(75)$式的两项，利用Kiein系数性质$F^{\dagger}F=I$得到：

$$
\psi_\eta^{\dagger}(z) \psi_\eta\left(z^{\prime}\right) \xrightarrow{z \rightarrow z^{\prime}} \frac{1}{\left(z-z^{\prime}+a\right)}+i \partial_{z^{\prime}} \phi\left(z^{\prime}\right)+\operatorname{Order}\left(\frac{1}{L}, a\right)
\tag{76}
$$

&emsp;&emsp; 下面计算多vertex算符期望，比如$\langle e^{i \lambda \phi_\eta(z)} e^{i \lambda \phi_{\eta'}(z')}e^{i \lambda \phi_{\eta''}(z'')} e^{i \lambda \phi_{\eta'''}(z''')}……\rangle$，先验证矩阵指数公式，根据如果$[A,B]=C,[A,C]=[B,C]=0$有$e^{A}e^{B}=e^{A+B}e^{C/2}$，推论：

$$
e^{B_1} e^{B_2} \ldots e^{B_n}=e^{\sum_{j=1}^n B_j} e^{\frac{1}{2} \sum_{i<j}\left[B_i, B_j\right]}
\tag{77}
$$

&emsp;&emsp;如果$B$算符是自由玻色算符的线性组合，即满足$(65)(66)$式之条件，而$[B_i,B_j]$又是c-number一个数，从中有推论：

$$
\left\langle e^{B_1} e^{B_2} \ldots e^{B_n}\right\rangle=e^{\frac{1}{2}\left\langle\left(\sum_{j=1}^n B_j\right)^2\right\rangle} e^{\frac{1}{2} \sum_{i<j}\left[B_i, B_j\right]}=e^{\frac{1}{2} \sum_{j=1}^n\left\langle B_j^2\right\rangle} e^{\sum_{i<j}\left\langle B_i B_j\right\rangle}
\tag{78}
$$

&emsp;&emsp; 现在考虑$V_{\lambda_j}^{(\eta)}\left(z_j\right) \equiv a^{-\lambda^2 / 2} e^{i \lambda_j \phi_\eta\left(z_j\right)}$指数上面就是$B$算符，代入$(78)$式的推论，代入$(72)(73)$式的$\langle T \phi_\eta(z) \phi_{\eta'}(z') \rangle$和$\langle  \phi_\eta(z) \phi_{\eta'}(z) \rangle$即$\langle B_j^2\rangle$和$\langle B_iB_j \rangle$形式，令$s\left(z_i, z_j\right) \equiv \frac{\beta}{\pi} \sin \left(\frac{\pi}{\beta}\left[\left(z_i-z_j\right) \operatorname{sgn}\left(\tau_i-\tau_j\right)+a\right]\right)$，有：

$$
\begin{aligned}
\left\langle\mathcal{T} V_{\lambda_1}^{(\eta)}\left(z_1\right) \ldots V_{\lambda_n}^{(\eta)}\left(z_n\right)\right\rangle & =\left[a^{-\frac{1}{2} \sum_j \lambda_j^2}\right]\left[e^{\sum_{i<j} \lambda_i \lambda_j \ln \left[\frac{2 \pi}{L} s\left(z_i, z_j\right)\right]}\right]\left[e^{\frac{1}{2} \sum_j \lambda_j^2 \ln \left(\frac{2 \pi a}{L}\right)}\right] \\
& =\left(\frac{2 \pi}{L}\right)^{\frac{1}{2}\left(\sum_{j=1}^n \lambda_j\right)^2} \prod_{i<j}\left[s\left(z_i, z_j\right)\right]^{\lambda_i \lambda_j}
\end{aligned}
\tag{79}
$$

&emsp;&emsp;和上文一致，在$L\rightarrow \infty$下面只有， $\sum_{j=1}^n \lambda_j=0$这个correlator才非零，也是玻色规范不变性的体现。为了利用玻色恒等式，设有考虑 $2n$ 个顶点算符，其中一半是$\lambda$，一半是$-\lambda$,满足上述约束。可以展开上述算符，并观察到这实际上就是费米子场$\langle \psi \psi ……\rangle$的形式，所以可以做Wick定理，最后用费米场两点关联函数表出整个算符期望：

$$
\prod_{i<j} s\left(z_i, z_j\right)^{\lambda_i \lambda_j}=\sum_{\sigma \in S_n} \operatorname{sgn}(\sigma) \prod_{k=1}^n \frac{1}{s\left(z_{\sigma(k)}^{(+)}, z_k^{(-)}\right)} .
$$

$$
\begin{aligned}
& \left\langle V_{+\lambda}^{(\eta)}\left(z_1^{(+)}\right) V_{-\lambda}^{(\eta)}\left(z_1^{(-)}\right) V_{+\lambda}^{(\eta)}\left(z_2^{(+)}\right) V_{-\lambda}^{(\eta)}\left(z_2^{(-)}\right) \ldots\right\rangle \\
& \quad=\left[\sum_{z_i^{(+)}, z_j^{(-)}} \frac{1}{s\left(z_1^{(+)}, z_1^{(-)}\right) s\left(z_2^{(+)}, z_2^{(-)}\right) \ldots}+\frac{1}{s\left(z_1^{(+)}, z_2^{(-)}\right) s\left(z_1^{(-)}, z_2^{(+)}\right) \ldots}+\ldots\right]^{\lambda^2}
\end{aligned}
\tag{80}
$$

<img src="https://54749110.github.io/assets/2025-11-15-bosonization-part-2/1.png" width = "590" height = "600" alt="图片名称" align=center />

## Field Discription of Bosonization
---

&emsp;&emsp; 低能近似下，考虑一维格点系统，无相互作用哈密顿量具有色散关系$cosk$, 靠近费米面的能带，其低能激发正比于$\pm k$，这就是无质量狄拉克场的两个元素$\pm p$。
原始费米子间的相互作用,在低能极限下，都可以用这两个狄拉克分量的相互作用项来描述,再回顾上一次讨论连续极限下场算符在低能下有良定义，因此我们可以用场论来描述玻色化的过程。在玻色化的语言下，无质量狄拉克场和无质量标量场互相变换，相互作用变得可解，而质量项会变为sine-Gordon模型下的余弦相互作用$\frac{1}{\pi a} \cos (\sqrt{4 \pi} \phi)$，下面的内容就讨论这一过程，并最终引入RG求解相变。场论这一整套我还在学，现在就写一些结论性的东西。

#### <font color=blue>Properties of Massless Dirac Fermion</font>

&emsp;&emsp; 这是从Dirac方程出发的结论，我们在低能下讨论，记号$\psi$为二分量场算符，再记$\bar{\psi}=\psi^{\dagger}\sigma_2$，一维无质量狄拉克场的哈密顿量为：

$$
\begin{aligned}
H & =\int \psi^{\dagger}(x)(\sigma_3 P) \psi(x) d x \\
& =\int \psi_{+}^{\dagger}(x)\left(-i \partial_x\right) \psi_{+}(x) d x+\int \psi_{-}^{\dagger}(x)\left(i \partial_x\right) \psi_{-}(x) d x
\end{aligned}
\tag{81}
$$

&emsp;&emsp;场算符要满足对易关系：

$$
\psi_{ \pm}^{\dagger}(x)\psi_{ \pm}(y)+\psi_{ \pm}(y) \psi_{ \pm}^{\dagger}(x)=\delta(x-y)
\tag{82}
$$

&emsp;&emsp; 在动量空间也是一样的,傅里叶变换及其逆变换(要引入截断参数$\alpha$)为：

$$
\psi_{ \pm}(p)=\int_{-\infty}^{\infty} \psi_{ \pm}(x) e^{i p x} d x
\tag{83}
$$

$$
\psi_{ \pm}(x)=\int_{-\infty}^{\infty} \frac{d p}{2 \pi} \psi_{ \pm}(p) e^{i p x} e^{-\frac{1}{2} \alpha|p|}
$$

&emsp;&emsp; 得到：

$$
\psi_{ \pm}^{\dagger}(p) \psi_{ \pm}(q)+\psi_{ \pm}(q)\psi_{ \pm}^{\dagger}(p)=2 \pi \delta(p-q)
\tag{84}
$$

$$
H=\int \psi_{+}^{\dagger}(p) p \psi_{+}(p) \frac{d p}{2 \pi}+\int \psi_{-}^{\dagger}(p)(-p) \psi_{-}(p) \frac{d p}{2 \pi}
\tag{85}
$$

&emsp;&emsp; 海森堡表象下的表示为：

$$
\psi_{ \pm}(x ,t)=\int_{-\infty}^{\infty} \frac{d p}{2 \pi} \psi_{ \pm}(p) e^{i p(x \mp t)} e^{-\frac{1}{2} \alpha|p|}
\tag{86}
$$

&emsp;&emsp; 等时关联函数为，注意利用了费米海只在$p<0$处填充，这个结论和$(56)$式一致：

$$
\begin{aligned}
\left\langle\psi_{+}(x) \psi_{+}^{\dagger}(0)\right\rangle & =\int_{-\infty}^{\infty} \frac{d p}{2 \pi} e^{-\frac{1}{2} \alpha|p|} \int_{-\infty}^{\infty} \frac{d q}{2 \pi} e^{-\frac{1}{2} \alpha|q|} e^{i p x} \underbrace{\left\langle\psi_{+}(p) \psi_{+}^{\dagger}(q)\right\rangle}_{2 \pi \delta(p-q) \theta(q)} \\
& =\int_0^{\infty} \frac{d p}{2 \pi} e^{i p x} e^{-\alpha|p|} \\
& =\frac{1}{2 \pi} \frac{1}{\alpha-i x}
\end{aligned}
\tag{87}
$$

&emsp;&emsp; 更多的结论：

$$
\begin{aligned}
\left\langle \psi_{ \pm}(x) \psi_{ \pm}^{\dagger}(0)\right\rangle & =\frac{ \pm i / 2 \pi}{x \pm i \alpha}, \\
\left\langle \psi_{ \pm}^{\dagger}(0) \psi_{ \pm}(x)\right\rangle & =\frac{\mp i / 2 \pi}{x \mp i \alpha} \\
\left\langle\psi_{ \pm}(x) \psi_{ \pm}^{\dagger}(0)+\psi_{ \pm}^{\dagger}(0) \psi_{ \pm}(x)\right\rangle= & \frac{\alpha / \pi}{x^2+\alpha^2}  \simeq \delta(x) \\
\end{aligned}
\tag{88}
$$

#### <font color=blue>Properties of Free Massless Scalar Field</font>

&emsp;&emsp; 这是从$KG$方程出发的结论，标量场的哈密顿密度可以由一组共轭的正则变量表示$\Pi(x, t)=\partial_t \phi(x, t)$：

$$
H_{\mathrm{B}}=\frac{1}{2} \int\left(\Pi^2+\left(\partial_x \phi\right)^2\right) d x
\tag{89}
$$

&emsp;&emsp; 场算符可以傅里叶变换，回顾谐振子的哈密顿量和代数关系，知道这些说法的合理性：

$$
\begin{aligned}
\phi(x) & =\int_{-\infty}^{\infty} \frac{d p}{2 \pi \sqrt{2|p|}}\left[\phi(p) e^{i p x}+\phi^{\dagger}(p) e^{-i p x}\right] e^{-\frac{1}{2} \alpha|p|}, \\
\Pi(x) & =\int_{-\infty}^{\infty} \frac{d p|p|}{2 \pi \sqrt{2|p|}}\left[-i \phi(p) e^{i p x}+i \phi^{\dagger}(p) e^{-i p x}\right] e^{-\frac{1}{2} \alpha|p|},
\end{aligned}
\tag{90}
$$

&emsp;&emsp; 并满足对易关系：

$$
\left[\phi(p), \phi^{\dagger}\left(p^{\prime}\right)\right]=2 \pi \delta\left(p-p^{\prime}\right) .
$$

$$
[\phi(x), \Pi(y)]=i \delta(x-y)
\tag{91}
$$

&emsp;&emsp;哈密顿量为：

$$
H=\int_{-\infty}^{\infty} \frac{d p}{2 \pi} \phi^{\dagger}(p) \phi(p)|p|
\tag{92}
$$

&emsp;&emsp;接下来定义左右行的玻色场：

$$
\begin{aligned}
\phi_{ \pm}(x) & =\frac{1}{2}\left[\phi(x) \mp \int_{-\infty}^x \Pi\left(x^{\prime}\right) d x^{\prime}\right] \\
& =\frac{1}{2} \int_{-\infty}^{\infty} \frac{d p}{2 \pi \sqrt{2|p|}} e^{-\frac{1}{2} \alpha|p|}\left[\phi(p)(1 \pm|p| / p) e^{i p x}+\text { h.c. }\right] \\
& = \pm \int_0^{ \pm \infty} \frac{d p}{2 \pi \sqrt{2|p|}}\left[e^{i p x} \phi(p)+\text { h.c. }\right] e^{-\frac{1}{2} \alpha|p|} .
\end{aligned}
\tag{93}
$$

&emsp;&emsp;这个式子其实就是$\phi(x)$只取正实轴积分。做导数就可以看出物理含义：$\partial_x \phi_{ \pm}=\frac{1}{2}\left[\partial_x \phi \mp \Pi(x, t)\right]=\frac{1}{2}\left[\partial_x \phi \mp \partial_t \phi\right]$，这说明$\partial_t \phi_{+}=-\partial_x \phi_{+}, \quad \partial_t \phi_{-}=+\partial_x \phi_{-}$。这两个方程就是左行和右行波方程其解具有形式：$\phi_{+}(x, t)=\phi_{+}(x-t)$和$\phi_{-}(x, t)=\phi_{-}(x+t)$，对应动量部分，是一正一负，符合左行和右行场的定义。满足对易关系$(16)$式已证明：

$$
\begin{aligned}
{\left[\phi_{ \pm}(x), \phi_{ \pm}(y)\right] } & = \pm \frac{i}{4} \varepsilon(x-y) \equiv \pm \frac{i}{4} \operatorname{sgn}(x-y), \\
{\left[\phi_{+}(x), \phi_{-}(y)\right] } & =\frac{i}{4} .
\end{aligned}
\tag{94}
$$

&emsp;&emsp; 关联函数为：

$$
\begin{aligned}
G_{ \pm}(x) & =\left\langle\phi_{ \pm}(x) \phi_{ \pm}(0)-\phi_{ \pm}^2(0)\right\rangle \\
& =\frac{1}{4 \pi} \ln \frac{\alpha}{\alpha \mp i x}, \\
G(x) & =\left\langle\phi(x) \phi(0)-\phi^2(0)\right\rangle \\
& =\frac{1}{4 \pi} \ln \frac{\alpha^2}{\alpha^2+x^2} .
\end{aligned}
\tag{95}
$$

&emsp;&emsp; 证明上式，其中最后一步的积分可以拆为两项，第一项先求关于$x$的导数，这样消掉分母上的$p$好积，第二项是一个正常的$ln$形式，这个证明也可以代入$(72)(73)$式看出：

$$
\begin{aligned}
G_{+}(x) & =\int_0^{\infty} \frac{d p}{2 \pi \sqrt{2|p|}} e^{-\frac{1}{2} \alpha|p|} \int_0^{\infty} \frac{d q}{2 \pi \sqrt{2|q|}} e^{-\frac{1}{2} \alpha|q|}\left\langle\left(\phi(p) \phi^{\dagger}(q)\right\rangle\left(e^{i p x}-1\right)\right. \\
& =\int_0^{\infty} \frac{d p}{4 \pi|p|}\left(e^{i p x}-1\right) e^{-\alpha p} \\
& =\frac{1}{4 \pi} \ln \frac{\alpha}{\alpha-i x}
\end{aligned}
$$

&emsp;&emsp;下面计算vertex operator $G_\beta(x) \equiv\left\langle e^{i \beta \phi(x)} e^{-i \beta \phi(0)}\right\rangle$，之前已经有过计算了，现在再给一种方法，先验证矩阵指数，仍然$A$是单玻色子算符组合，所有$A$的对对易关系为c-number即等于期望，一个数;再利用算符$AB$仅$A^{-}B^{+}$起作用：

$$
\begin{aligned}
e^A & =e^{A^{+}+A^{-}}=e^{A^{+}} e^{A^{-}} e^{-\frac{1}{2}\left[A^{-}, A^{+}\right]} = : e^A : e^{-1/2 A^2} \\
e^{A}e^{B} & = :e^A::e^B:e^{-1/2 \langle A^2+B^2 \rangle} \\
& = e^{A^{+}} e^{A^{-}} e^{B^{+}} e^{B^{-}} e^{-1/2 \langle A^2+B^2 \rangle} \\
& = e^{A^{+}} e^{B^{+}} e^{A^{-}} e^{B^{-}} e^{\left[A^{-}, B^{+}\right]} e^{-1/2 \langle A^2+B^2 \rangle} \\
& = :e^{A+B}: e^{\langle 1/2 (A^2+ B^2) +AB \rangle}
\end{aligned}
\tag{95}
$$

&emsp;&emsp;再利用$\langle: O :\rangle=0$得到，$\langle:e^O:\rangle=1$：

$$
\begin{aligned}
G_\beta(x) & \equiv\left\langle e^{i \beta \phi(x)} e^{-i \beta \phi(0)}\right\rangle \\
& =\left\langle: e^{i \beta(\phi(x)-\phi(0))}:\right\rangle e^{\beta^2\left[\left\langle\phi(x) \phi(0)-\frac{\phi^2(0)+\phi^2(x)}{2}\right\rangle\right]} \\
& =e^{\beta^2 \frac{1}{4 \pi} \ln \frac{\alpha^2}{\alpha^2+x^2}} \\
& =\left(\frac{\alpha^2}{\alpha^2+x^2}\right)^{\beta^2 / 4 \pi} \\
\end{aligned}
\tag{96}
$$

&emsp;&emsp;类似的有,这个式子和$(74)$式类似：

$$
\left\langle e^{i \beta \phi_{ \pm}(x)} e^{-i \beta \phi_{ \pm}(0)}\right\rangle=\left(\frac{\alpha}{\alpha \mp i x}\right)^{\beta^2 / 4 \pi}
\tag{97}
$$

&emsp;&emsp;对于$\phi=\phi_{-}+\phi_{+}$,可以定义dual field 为：

$$
\theta=\phi_{-}-\phi_{+}
\tag{98}
$$

&emsp;&emsp;可以得到：

$$
\begin{aligned}
& \theta(x)=\int_{-\infty}^x \Pi\left(x^{\prime}\right) d x^{\prime} \\
& \Pi(x)=\frac{d \theta}{d x}
\end{aligned}
\tag{99}
$$

&emsp;&emsp;dual field 的vertex operator为：

$$
\begin{aligned}
\left\langle e^{i \beta \theta(x)} e^{-i \beta \theta(0)}\right\rangle & =\left\langle e^{i \beta\left(\phi_{-}(x)-\phi_{+}(x)\right)} e^{-i \beta\left(\phi_{-}(0)-\phi_{+}(0)\right)}\right\rangle \\
& =\left\langle e^{i \beta \phi_{-}(x)} e^{-i \beta \phi_{-}(0)}\right\rangle\left\langle e^{-i \beta \phi_{+}(x)} e^{i \beta \phi_{+}(0)}\right\rangle \\
& =e^{\beta^2 G_{-}(x)} e^{\beta^2 G_{+}(x)} \\
& =\left(\frac{\alpha^2}{\alpha^2+x^2}\right)^{\beta^2 / 4 \pi},
\end{aligned}
\tag{100}
$$

&emsp;&emsp; 这是因为Wick 定理的另一项的一部分是$e^{\beta^2\langle \phi_{+}(x)\phi_{+}(x)-\phi_{-}(0)\phi_{-}(0)-\phi_{+}(x)\phi_{-}(x)\rangle}$,利用(72)(73)式的结论，应当只余下了$(2\pi a/L)^{\beta^2/4\pi}$这一项，在热力学极限下为零。这也符合上文只有$\lambda=-\lambda'$correlator 才非零这个结论，Wick定理一项$\lambda=-\lambda'$另一项$\lambda=\lambda'$为零，所以可以按照$(100)$式做contract.

#### <font color=blue>Deriving Bosonic Identity Again</font>

&emsp;&emsp; 在场论的框架下，由于并未定义Klein Factor，所以不能严格的导出 bosonic identity，而是只能通过格林函数的一致性等来验证，注意这里和上文的区别来源于场算符的定义，傅里叶变换中会出一个$1/2\pi$变量：

$$
\psi_{ \pm}(x)=\frac{1}{\sqrt{2 \pi \alpha}} e^{ \pm i \sqrt{4 \pi} \phi_{ \pm}(x)}
\tag{101}
$$

&emsp;&emsp; 验证关联函数,代入式$(96)(95)$,上文也证明过了，这样仍然满足所有的对易关系：

$$
\begin{aligned}
\left\langle\psi_{+}(x) \psi_{+}^{\dagger}(0)\right\rangle & =\frac{1}{2 \pi} \frac{1}{\alpha-i x} \\
& = \left\langle\frac{1}{\sqrt{2 \pi \alpha}} e^{i \sqrt{4 \pi} \phi_{+}(x)} \frac{1}{\sqrt{2 \pi \alpha}} e^{-i \sqrt{4 \pi} \phi_{+}(0)}\right\rangle \\
& =\frac{1}{2 \pi \alpha}\left\langle: e^{i \sqrt{4 \pi} \phi_{+}(x)} e^{-i \sqrt{4 \pi} \phi_{+}(0)}:\right\rangle e^{4 \pi\left\langle\phi_{+}(x) \phi_{+}(0)-\phi_{+}^2\right\rangle} \\
& =\frac{1}{2 \pi \alpha} e^{4 \pi G_{+}(x)} \\
& =\frac{1}{2 \pi \alpha} \frac{\alpha}{\alpha-i x}
\end{aligned}
\tag{102}
$$

&emsp;&emsp;下面会给出许多重要的数学公式,第一个公式，中间一步利用了BCH公式，并代入$(94)$式的对易关系：

$$
\begin{aligned}
\bar{\psi} \psi(x) & = \psi^{\dagger}(x)\sigma_2 \psi(x) \\
& = -i \psi_{+}^{\dagger}(x) \psi_{-}(x)+i\psi_{-}^{\dagger}(x) \psi_{+}(x) \\
& =\frac{1}{2 \pi \alpha}\left[e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{-i \sqrt{4 \pi} \phi_{-}(x)}(-i)+\text { h.c. }\right] \\
& =\frac{1}{2 \pi \alpha}\left(e^{-i \sqrt{4 \pi} \phi(x)} e^{\frac{1}{2} 4 \pi(-1) \frac{i}{4}}(-i)+\text { h.c. }\right) \\
& = \frac{1}{2 \pi \alpha}(-ie^{i(-\pi/2-\sqrt{4\pi}\phi(x))}+ie^{-i(-\pi/2-\sqrt{4\pi}\phi(x))}) \\
& = \frac{1}{2 \pi \alpha} (2\sin (-\pi/2-\sqrt{4\pi}\phi(x))) \\
& =-\frac{1}{\pi \alpha} \cos \sqrt{4 \pi} \phi
\end{aligned}
\tag{103}
$$

&emsp;&emsp;类似的有第二个公式：

$$
\begin{aligned}
\bar{\psi} i \gamma^5 \psi & =\psi^{\dagger}(x)i\sigma_2\sigma_3 \psi(x)
=-\left[\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right] \\
& =-\frac{1}{2 \pi \alpha}\left[e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{-i \sqrt{4 \pi} \phi_{-}(x)}+\text { h.c. }\right] \\
& = -\frac{1}{2 \pi \alpha}(e^{i(-\pi/2-\sqrt{4\pi}\phi(x))}+e^{-i(-\pi/2-\sqrt{4\pi}\phi(x))}) \\
& = -\frac{1}{2 \pi \alpha} (2\cos (-\pi/2-\sqrt{4\pi}\phi(x))) \\
& =\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi .
\end{aligned}
\tag{104}
$$

&emsp;&emsp;第三个公式，是上文费米子验证满足scaling dimension 的公式，代入$(96)$式入第一个等号，再代入$(97)$式入第二个等号，第三个等号中，我们仿照上文做小量近似，最终得到第四个等号。需要注意的是，即使在$x\rightarrow0$的极限下面，也需要认为$x>>a$从而可以丢掉$a$。这个做法其实就等价于point splitting，先取一个有限差异，再取零的极限。这实际上就是如何取双极限，讨论重整化参数$\alpha$和连续场论里的$x$的关系。$x$之所以可以去连续场论，是因为取了$\alpha$截断。回顾上一次笔记的公式$\psi(x)=\sum_n f(x-n a) \psi_n$要想对于剧变的晶格场$\psi_n$定义一个缓变的连续场$\psi(x)$,如果想傅里叶分解只考虑波数$|k| \ll \pi / a$的情况，就要求$x>>\alpha$，也就是说实空间波长的尺度要远大于$\alpha$，也就是说$x$的极限远大于$\alpha$的极限。在这里取双极限，实际上是固定小量$x$，取$\alpha$零的极限。总之，对于每个$x_0$的连续尺度，总需要取一个更小的$\alpha$让系统更连续以至于$x_0$确实在连续场论的范围内。

&emsp;&emsp;那就有说法，$\alpha$趋于零玻色化恒等式不是发散的吗。其实这个恒等式下一次说重整化框架下要以可重整化算符等价表示，那时它本身和格林函数在标度率下都不是发散的。

$$
\begin{aligned}
\psi_{+}^{\dagger}(0) \psi_{+}(0) & =\lim_{x \rightarrow 0} \frac{1}{2 \pi \alpha} e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{i \sqrt{4 \pi} \phi_{+}(0)} \\
& =\lim_{x \rightarrow 0} \frac{1}{2 \pi \alpha}: e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{i \sqrt{4 \pi} \phi_{+}(0)}: e^{4 \pi G_{+}(x)} \\
& =\lim_{x \rightarrow 0} \frac{i}{2 \pi(x+i \alpha)}: 1-i \sqrt{4 \pi} \frac{\partial \phi_{+}}{\partial x} x+\cdots: \\
& =\lim_{x \rightarrow 0} \frac{i}{2 \pi x}+\frac{1}{\sqrt{\pi}} \frac{\partial \phi_{+}}{\partial x}+\cdots
\end{aligned}
\tag{105}
$$

&emsp;&emsp;这个式子对所有$x$都可以这么做，丢掉真空零点能的正规序则是：

$$
: \psi_{+}^{\dagger}(x) \psi_{+}(x):=\frac{1}{\sqrt{\pi}} \frac{\partial \phi_{+}}{\partial x}
\tag{106}
$$

&emsp;&emsp; 第四个公式，也是代表了玻色化语言下的上文$(53)$式哈密顿量以$1/\alpha^2$衰减：

$$
\left[\frac{-1}{\pi \alpha} \cos \sqrt{4 \pi} \phi\right]^2=-\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2+\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi,
\tag{107}
$$

&emsp;&emsp; 证明：

$$
\begin{aligned}
& \frac{1}{2 \pi^2 \alpha^2} \lim _{x \rightarrow 0} \cos \sqrt{4 \pi}(\phi(x)-\phi(0)) \\
& =\lim _{x \rightarrow 0} \frac{1}{2 \pi^2 \alpha^2}: \cos \sqrt{4 \pi}(\phi(x)-\phi(0)): \frac{\alpha^2}{x^2+\alpha^2} \\
& =\lim _{x \rightarrow 0} \frac{1}{2 \pi^2 \alpha^2}: 1-\frac{x^2}{2}(4 \pi)\left(\partial_x \phi\right)^2+\cdots: \frac{\alpha^2}{x^2+\alpha^2} \\
& =-\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2+c \text {-number, }
\end{aligned}
$$

$$
\begin{aligned}
\left[\frac{-1}{\pi \alpha} \cos \sqrt{4 \pi} \phi(0)\right]^2 & =\frac{1}{4 \pi^2 \alpha^2} \lim _{x \rightarrow 0}\left[e^{i \sqrt{4 \pi} \phi(x)}+c c\right] \cdot\left[e^{i \sqrt{4 \pi} \phi(0)}+c c\right] \\
& = \frac{1}{2 \pi^2 \alpha^2} \lim _{x \rightarrow 0}[\cos (\sqrt{4 \pi}(\phi(x)+\phi(0)))+\cos (\sqrt{4 \pi}(\phi(x)-\phi(0)))] \\
& = -\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2+\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi,
\end{aligned}
$$

&emsp;&emsp;类似的有第五个公式：

$$
\left[\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi\right]^2=-\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2-\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi
\tag{108}
$$

&emsp;&emsp; 最后，可以再次验证一维无质量狄拉克场和无质量自由标量场的等价性，和$(55)$式的超级复杂的证明类似，或可看上一次的笔记，不再证明。

$$
\begin{aligned}
H_{\mathrm{F}} & =\int\left(\psi_{+}^{\dagger}(x)\left(-i \partial_x\right) \psi_{+}(x)+\psi_{-}^{\dagger}(x)\left(i \partial_x\right) \psi_{-}(x)\right) d x \\
& =\frac{1}{2} \int\left(\Pi^2+\left(\partial_x \phi\right)^2\right) d x=H_{\mathrm{B}} .
\end{aligned}
\tag{109}
$$

## [PDF Download](/assets/2025-11-15-bosonization-part-2/bosonization2.pdf)
