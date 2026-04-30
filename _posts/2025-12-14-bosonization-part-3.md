---
layout: post
title:  "Bosonization part 3"
description: "Renormalization of 1-D interaction fermion models using the sine-Gordon action , showing the CDW and Bond-Order phases. Comparsion to classical 2-D XY model and elctron gases. Discuss the doped sine-Gordon action that cna lead to C-IC and LL-IC transitions "
pin: true
math: true
mermaid: true
categories: [Bosonization, Renormalization of sine-Gordan Action]
tags: [Bosonization, sine-Gordan, Renormalization Group, ICDW, XY-model]
author: Xuan
---

## REF
---

[1]Shankar R. Quantum Field Theory and Condensed Matter: An Introduction. Cambridge University Press; 2017.(Chap17. Chap18)
[2] T. Giamarchi. Quantum physics in one dimension, Oxford University Press, Oxford, 2004.(Chap2. Chap4, AppendixE)
[3]Altland A, Simons BD. Condensed Matter Field Theory. 2nd ed. Cambridge University Press; 2010.(Chap8)
[4]Jan von Delft, Herbert Schoeller. Bosonization for Beginners --- Refermionization for Experts,	arXiv:cond-mat/9805275
[5]Mariana Malard,Sine-Gordon Model - Renormalization Group Solutions and Applications,	arXiv:1202.3481
[6]Drouin-Touchette Victor,The Kosterlitz-Thouless phase transition: an introduction for the intrepid student, arXiv:2207.13748
[7]Suhas Gangadharaiah, Bernd Braunecker, Pascal Simon, and Daniel Loss,
Majorana Edge States in Interacting One-Dimensional Systems, Phys. Rev. Lett. 107, 036801 (2011)
[8]Iman Mahyaeh, Eddy Ardonne , Study of the phase diagram of the Kitaev-Hubbard chain ,Phys. Rev. B 101, 085125 (2020)

## Deriving and RG Sine-Gordan Hamiltonian [1][3][6]
---

&emsp;&emsp;这一部分会得到如下结论，一维玻色化的luttinger液体，和二维库仑气体，和二维经典XY模型同属于一个普适类：sine-gordan普适类。二维经典XY模型和玻色化luttinger液体RG方法相似，RG流也相似，具有相似的关联函数。前者描述涡旋相解离的BKT相变，后者描述luttinger相到CDW相或peierls相的相变。

&emsp;&emsp;讨论一个一维链的低能激发，在$t-V$模型的spinless fermion基上讨论，激发都位于$\pm K_F/2$附近，可以展开为左/右行的场。先处理无相互作用部分，用连续场展开：

$$
\begin{aligned}
H_0 & =-\frac{1}{2} \sum_j \psi^{\dagger}(j+1) \psi(j)+\text { h.c. } \\
= & -\frac{1}{2} a \sum_j\left[-i e^{-i \frac{\pi}{2} j} \psi_{+}^{\dagger}(x=j a+a)+i e^{i \frac{\pi}{2} j} \psi_{-}^{\dagger}(x=j a+a)\right] \\
& \times\left[e^{i \frac{\pi}{2} j} \psi_{+}(x=j a)+e^{-i \frac{\pi}{2} j} \psi_{-}(x=j a)\right]+\text { h.c. } \\
= & \frac{a}{2} \sum_j\left[i \psi_{+}^{\dagger}(x) \psi_{+}(x)-i \psi_{-}^{\dagger}(x) \psi_{-}(x)+i a \frac{\partial \psi_{+}^{\dagger}(x)}{\partial x} \psi_{+}(x)-i a \frac{\partial \psi_{-}^{\dagger}(x)}{\partial x} \psi_{-}(x)\right] +h.c \\
H_{0 \mathrm{c}} & =\frac{H_0}{a}=\int d x\left[\psi_{+}^{\dagger}(x)\left(-i \partial_x\right) \psi_{+}(x)+\psi_{-}^{\dagger}(x)\left(i \partial_x \right) \psi_{-}(x)\right]
\end{aligned}
\tag{1}
$$

&emsp;&emsp; 对于相互作用，正规序扣除了费米海占据：

$$
\begin{aligned}
H_{\mathrm{I}} & =\Delta \sum_j\left(\psi^{+}(j) \psi(j)-\frac{1}{2}\right)\left(\psi^{\dagger}(j+1) \psi(j+1)-\frac{1}{2}\right) \\
& \equiv \Delta \sum_j: \psi^{\dagger}(j) \psi(j):: \psi^{\dagger}(j+1) \psi(j+1): \\
\psi^{\dagger}(j) \psi(j)-\frac{1}{2} &=: \psi^{\dagger}(j) \psi(j):,
\end{aligned}
\tag{2}
$$

&emsp;&emsp; 对相互作用做玻色化：

$$
\begin{aligned}
H_{\mathrm{Ic}}= & \frac{H_{\mathrm{I}}}{a} \\
= & a \Delta \sum_j\left[ : \psi_{+}^{\dagger}(x) \psi_{+}(x)+\psi_{-}^{\dagger}(x) \psi_{-} : +(-1)^j\left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)\right] \\
& \times\left[ : \psi_{+}^{\dagger}(x) \psi_{+}(x)+\psi_{-}^{\dagger}(x) \psi_{-}(x) : -(-1)^j\left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)\right] \\
= & a \Delta \sum_j\left[\frac{1}{\sqrt{\pi}} \partial_x \phi\right]^2-\left[\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right]^2+(-1)^j \text { oscillations } \\
= & \Delta \int d x\left[\frac{\left(\partial_x \phi\right)^2}{\pi}-\left[\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi\right]^2\right] \\
= & \Delta \int d x\frac{2\left(\partial_x \phi\right)^2}{\pi}+\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi
\end{aligned}
\tag{3}
$$

&emsp;&emsp;我们可以得到玻色化的哈密顿量：

$$
H_{\mathrm{c}}=\int d x\left(\frac{1}{2}\left[\Pi^2+\left(1+\frac{4 \Delta}{\pi}\right)\left(\partial_x \phi\right)^2\right]+\frac{\Delta}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi\right)
\tag{4}
$$

&emsp;&emsp;定义Luttinger Parameter：$K=\left[1+\frac{4 \Delta}{\pi}\right]^{-\frac{1}{2}}$,有：

$$
H_{\mathrm{c}} K=\int d x\left(\frac{1}{2}\left[K \Pi^2+\frac{1}{K}\left(\partial_x \phi\right)^2\right]+\frac{K \Delta}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi\right)
\tag{5}
$$

&emsp;&emsp;定义：$y=K \cdot \Delta=\frac{\Delta}{\sqrt{1+\frac{4 \Delta}{\pi}}}$，我们看作$K,y$是二维重整化流平面上的变量，即使它们都由共同的$\Delta$参数关联。

&emsp;&emsp; 通过定义新的场，这个定义仍然保证了场的正则对易关系：

$$
\begin{aligned}
\phi^{\prime} & =\frac{1}{\sqrt{K}} \phi, \\
\Pi^{\prime} & =\sqrt{K} \Pi,
\end{aligned}
$$

$$
H_{\mathrm{SG}}=\int d x\left[\frac{1}{2}\left[\Pi^2+\left(\partial_x \phi\right)^2\right]+\frac{y}{2 \pi^2 \alpha^2} \cos \beta \phi\right]
\tag{6}
$$

&emsp;&emsp; 我们有sine-Gordon 哈密顿量，在Luttinger 液体中，$\beta^2=16 \pi K$。这个哈密顿量的第一部分，展示一个无质量的标量场；第二项则展示$(-1)^{2K_Fj}\left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)$，为左右两支间的散射$(RR\rightarrow LL)$散射。这项是所谓的umklapp process，只在半填充的时候$(-1)^{2K_Fj}=1$起作用。我们想知道什么时候umklapp process对无质量标量场起作用，即重整化判断什么时候umklapp term 是 relevant。

&emsp;&emsp;  回顾重整化的方法，要写出作用量，求得配分函数，分离配分函数中快/慢部分做$coarse-graining , rescaling ,renormalizing$，利用积分前后的自相似性得到重整化流方程，最终从图上分析相。

&emsp;&emsp; 首先，写出配分函数，利用路径积分的方法，作用量$S=\int \Pi\partial \phi-H[\Pi,\phi]$，线性色散$x,it$等价:

$$
S=\int\left(\frac{1}{2}(\nabla \phi)^2+\frac{y \Lambda^2}{2} \cos \beta \phi\right) d^2 x
\tag{7}
$$

&emsp;&emsp; 其中$\frac{1}{\pi \alpha}=\Lambda$是一个截断，配分函数：

$$
Z=\int d \phi \exp \left[-\int\left[\frac{1}{2}\left(\nabla \phi\right)^2\right] d^2 x-\frac{y \Lambda^2}{2} \int d^2 x \cos \beta\phi\right]
\tag{8}
$$

&emsp;&emsp;  然后，在重整化的框架下，要分离快慢模式，低能理论本身有一个动量上限$\Lambda$ .这个上限的选取表明了高能模式被"冻结"，只通过虚过程影响低能物理。在critical的区域积分快模式之后具有自相似性，取这个上限附近的动量作为快模式$f$，远离属于慢模式$s$，对应于$|k|$属于$[(1-dt) \Lambda,\Lambda]$与$[0,(1-dt )\Lambda]$。对于自由标量场的快慢模式,是分离的，$S_0[\phi_s+\phi_f]=S_0[\phi_s]+S_0[\phi_f]$，从动量的傅里叶分解就可以看出，不同模式的傅里叶分解由于$k$属于不同模式此项为零。

$$
\begin{aligned}
S_0[\phi_s+\phi_f] & = \int\left(\frac{1}{2}(\nabla \phi)^2 \right) d^2 x = \int\left(\frac{1}{2}(\nabla \phi_f)^2 \right)+ \left(\frac{1}{2}(\nabla \phi_s)^2 \right) d^2 x = S_0[\phi_s]+S_0[\phi_f] \\
\int \nabla \phi_f \nabla \phi_x d^2 x & = \int kk' \exp(i(k+k')x) \phi_k \phi_{k'} \sim \delta(k+k') = 0
\end{aligned}
\tag{9}
$$

&emsp;&emsp; 因此：

$$
\begin{aligned}
Z & = \int d \phi_f d \phi_s \exp(-S_0[\phi_f+\phi_s]-S_{int}[\phi_f+\phi_s]) \\
& = \int d \phi_s \exp(-S_0[\phi_s]) Z_{eff}
\end{aligned}
$$

$$
Z_{eff} = \int d \phi_f \exp (  \int d^2 x -\frac{1}{2}(\nabla \phi_f)^2 - \frac{y \Lambda^2}{2} \int d^2 x \cos \beta\left(\phi_{\mathrm{s}} +\phi_{\mathrm{f}}\right)
\tag{10}
$$

&emsp;&emsp;已知：第一： 代入正则量子化的自由标量场的形式，知道$\phi^2$在自由标量场的期望$\langle \phi^2 \rangle$为：$\int \frac{dp}{2\pi} \frac{1}{E_p}$；第二：$\langle e^{A} \rangle \sim e^{\langle A\rangle}$这是因为快模式只在一个$dt$壳层上做积分，这两者最大阶相差它们的方差$\langle A^2 \rangle - \langle A \rangle^2$,对应于$dt^2$阶，为小量；第三：通过展开期望，发现是个奇函数的积分，则$\langle \sin\beta\phi\rangle=0$;第四，利用先前的结论$\left\langle e^{i \beta \phi}\right\rangle=e^{-\frac{1}{2} \beta^2\left\langle\phi^2\right\rangle}$

$$
\begin{aligned}
Z_{eff} &= \left\langle \exp \left[-\frac{y \Lambda^2}{2} \int d^2 x \cos \beta\left(\phi_{\mathrm{s}}+\phi_{\mathrm{f}}\right)\right]\right\rangle_{\mathrm{f}} \\
& S_{eff} =  \int d^2x -\frac{y \Lambda^2}{2} \cos \beta \phi_{\mathrm{s}}\left\langle\cos \beta \phi_{\mathrm{f}}\right\rangle_{\mathrm{f}} \quad \text{(性质2)}\\
& = Re \int d^2x -\frac{y \Lambda^2}{2} \cos \beta \phi_{\mathrm{s}}\left\langle e^{i\beta \phi_f}\right\rangle_{\mathrm{f}} \quad \text{(性质3)} \\
& = \int d^2x -\frac{y \Lambda^2}{2} \cos \beta \phi_{\mathrm{s}} e^{i\beta^2 \langle \phi_f^2\rangle} \quad \text{(性质4)} \\
& = \int d^2x -\frac{y \Lambda^2}{2} \cos \beta \phi_{\mathrm{s}} \exp \left[-\frac{\beta^2}{2} \int_{\Lambda(1-d t)}^{\Lambda} \frac{ d k }{2 \pi} \frac{1}{k}\right] \quad \text{(性质1)} \\
& = \int d^2x -\frac{y \Lambda^2}{2} \cos \beta \phi_{\mathrm{s}} (1-\frac{\beta^2}{4 \pi} d t) \quad \text{(展开到一阶)}
\end{aligned}
$$

&emsp;&emsp;我们得到：

$$
S_{\text {eff }}\left[\phi_s\right]=\int d^2 x\left[\frac{1}{2}\left(\nabla \phi_s\right)^2+\frac{y \Lambda^2}{2}\left(1-\frac{\beta^2}{4 \pi} d t\right) \cos \left(\beta \phi_s\right)\right]
\tag{11}
$$

&emsp;&emsp; 然后，我们做rescaling ,现在积分区间是$[0,(1-dt)\Lambda]$，相当于动量乘上了$[1-dt]$,对应于坐标除以$[1-dt]$，有：

$$
d^2 x=s^2 d^2 x^{\prime}=(1+2 d t) d^2 x^{\prime}
\tag{12}
$$

&emsp;&emsp; 变换有效作用量，无质量自由标量场的scaling dimension是零，具有标度不变性，则：

$$
\int d^2 x \frac{1}{2}\left(\nabla_x \phi_s\right)^2=\int d^2 x^{\prime} b^2 \cdot \frac{1}{2} b^{-2}\left(\nabla_{x^{\prime}} \phi^{\prime}\right)^2=\int d^2 x^{\prime} \frac{1}{2}\left(\nabla_{x^{\prime}} \phi^{\prime}\right)^2
$$

$$
\begin{aligned}
\int d^2 x\left[\frac{y \Lambda^2}{2}\left(1-\frac{\beta^2}{4 \pi} d t\right) \cos \left(\beta \phi_s\right)\right] & = \int d^2 x' (1+2dt)\left[\frac{y \Lambda^2}{2}\left(1-\frac{\beta^2}{4 \pi} d t\right) \cos \left(\beta \phi_s'\right)\right]  \\
& = \int d^2 x'\left[\frac{y \Lambda^2}{2}\left(1+2dt-\frac{\beta^2}{4 \pi} d t\right) \cos \left(\beta \phi_s'\right)\right]
\end{aligned}
$$

&emsp;&emsp; 再者，我们进行对比，现在的作用量是：

$$
S_{\text {eff }}\left[\phi\right]=\int d^2 x\left[\frac{1}{2}\left(\nabla \phi\right)^2+\frac{y \Lambda^2}{2}\left(1+2dt-\frac{\beta^2}{4 \pi} d t\right) \cos \left(\beta \phi\right)\right]
\tag{11}
$$

&emsp;&emsp; 先前的作用量是：

$$
S=\int\left(\frac{1}{2}(\nabla \phi)^2+\frac{y \Lambda^2}{2} \cos \beta \phi\right) d^2 x
\tag{7}
$$

&emsp;&emsp; 在这个标度变换中，实际上就是把$(y,\beta)$沿着重整化流到了$(y' ,\beta')$，由于它们只是单一参数$K$的形式，变换$y$就可以,critical 时，为了满足自相似性，作用量一致，则参数$y\rightarrow y'$应当满足：

$$
y^{\prime}=y\left[1+\left(2-\frac{\beta^2}{4 \pi}\right) d t\right]
$$

&emsp;&emsp; 由于这是在$dt$小壳层上的积分，$y'\rightarrow y$，在Luttinger 液体中参数$\beta^2=16 \pi K$就得到了：

$$
\begin{aligned}
\frac{d y}{d t} & =\left[2-\frac{\beta^2}{4 \pi}\right] y \\
& =(2-4 K) y
\end{aligned}
\tag{12}
$$

&emsp;&emsp; 因此，称$K>1/2$，不论如何调整初始点，都会落到$y=0$这个attraction basin,从而流向fixed point,即同时属于一个普适类，此时$K$为微观自由度，为$irrelevant$；而$K<1/2$为$relevant$，之后会讨论重整化流区分的相。如果要想画出$(K,y)$平面的重整化流，在普遍的sine-Gordan模型中看作$(K,y)$是两个独立变量，但是现在重整化的过程中只有$y$随着$dt$变化，要看到$K$的变化，需要更高阶的重整化，这个方程文献里没有推导，直接得到结论。观察这个$\cos\phi$场的形式其实和$BKT$相变比较类似，从$Altland$书的重整化部分有相关的论述。

&emsp;&emsp; 现在结合$Altland$书的内容从头做一遍这个RG。会看到，二维经典XY模型的相变可以由RG描述，是BKT相变。这个模型一维量子对应与tomonaga Luttinger模型很相似。它们两者的相流也是类似的，所以我们结合二维经典XY模型的RG，推导上述模型RG的第二方程。否则，按照本文的方法，就要展开$\cos \beta \phi$这一项到二阶。这和$\phi^4$的推导还不太相似，项数太多我尚没能推出第二方程。	真的用场论严格第二方程推导有一篇文章[5]

&emsp;&emsp;  二维经典XY模型描述一个经典自旋间的相互作用，不过自旋被局限在二维平面上，即：$\mathbf{S}_i=\left(\cos \theta_i, \sin \theta_i\right), \quad \theta_i \in[0,2 \pi)$

$$
H_{\text {classical XY }}=-J \sum_{\langle i j\rangle} S_i \cdot S_j=-J \sum_{\langle i j\rangle} \cos \left(\theta_i-\theta_j\right)
\tag{13}
$$

$$
Z=\int_{2\pi} \prod_i \frac{d \theta_i}{2 \pi} e^{-\beta H}, \quad \beta=\frac{1}{k_B T}
$$

&emsp;&emsp; 可以先观察自旋关联函数的行为。在高温下，$J\beta$是一个小量，配分函数可以以此展开：

$$
Z=\int_{2\pi} \prod_i \frac{d \theta_i}{2 \pi} \prod_{\langle i j\rangle}\left[1+\frac{J}{k_B T} \cos \left(\theta_i-\theta_j\right)+\mathcal{O}\left(\left(\frac{J}{T}\right)^2\right)\right]
\tag{14}
$$

&emsp;&emsp;  处理这个配分函数有一个图形上的直观技巧，已知两个积分公式：
$\int_0^{2 \pi} d \theta_1 \cos \left(\theta_1-\theta_2\right)=0$ 以及$\int_0^{2 \pi}\left(d \theta_2 / 2 \pi\right) \cos \left(\theta_1-\theta_2\right) \cos \left(\theta_2-\theta_3\right)=(1 / 2) \cos \left(\theta_1-\theta_3\right)$
。配分函数其实就连接着$i,j$点，要么是$1$，要么是$\cos \left(\theta_i-\theta_j\right)$。在这个二维平面上散落着大量的所有$i,j$之间的连线。如果连线很长，就会两两缩并，如果连线经过一个$1$,就会变为单独的$\int_0^{2 \pi} d \theta_1 \cos \left(\theta_1-\theta_2\right)=0$ ，就会是零，因此，配分函数里面只有closed loop 存在，而关联函数里面只有$\left\langle S_0 \cdot S_r\right\rangle=\left\langle\cos \left(\theta_{\mathbf{r}}-\theta_0\right)\right\rangle$，它有了一条线了，它和剩下的要组成closed loop。因此对应于$0,r$两点开放，连接这两点的loop 才非零。这个loop最短也需要$r$个连线，在上式中就对应了$J^r$。因此使用领头阶，关联函数高温下如下，关联长度为$\xi^{-1}=\ln (2 / J)$

$$
\left\langle S_0 \cdot S_{\mathbf{x}}\right\rangle \sim\left(\frac{J}{2}\right)^{|\mathbf{x}|} \sim \exp \left[-\frac{|\mathbf{x}|}{\xi}\right]
\tag{15}
$$

&emsp;&emsp;  而在低温下，自由能由能量主导，经典自旋倾向于同向能量最低，即$\theta_i \rightarrow \theta_j$,$\theta_i-\theta_j = \nabla \theta$,就可以用连续场论积分代替求和：$\frac{1}{2} \int d^2 r J(\nabla \phi)^2$，利用场论的数学知识进行计算，连续场论高斯积分公式为.

$$
\int \mathcal{D} \phi e^{-\frac{1}{2} \phi^T A \phi+J^T \phi} =\int \mathcal{D} \phi e^{-\frac{1}{2} \phi^T A \phi} \cdot \exp \left(\frac{1}{2} J^T A^{-1} J\right)
\tag{16}
$$

$$
\begin{aligned}
\langle S_0 \cdot S_r \rangle = & Re \langle e^{i(\theta(0)-\theta(r))} \rangle = \frac{1}{Z} \int \mathcal{D} \theta e^{i(\theta(0)-\theta(r)) + \int (\nabla \theta)^2 d^2r  } \\
= & \frac{1}{Z} \int \mathcal{D} \theta e^{\int i(\delta^2(0)-\delta^2(r) )\theta(r) d^2r + \int \theta (-\nabla^2) \theta d^2r +\theta^2(2\pi)-\theta^2(0)} \\
\end{aligned}
$$

&emsp;&emsp;  有$A=-\nabla^2$，定义$A^{-1}=G$,满足$AG=-\nabla^2G(x,y)=\delta^2(x-y)$,这就是二维拉普拉斯方程的解：$-\nabla^2 G(\mathbf{r})=\delta^2(\mathbf{r})$，$G(r)=-\frac{1}{2 \pi} \ln \left(\frac{|r|}{a}\right)$，其中$a$作为截断是连续场论必须的，所以不会有$G(0)$发散，上式的$A^{-1}$就代入$G(x,y)$。

$$
\begin{aligned}
= & \frac{1}{Z} \cdot Z \cdot \exp (\frac{1}{2} \int d^2x d^2 y (\delta^2(x)-\delta^2(x-r))G(x,y)(\delta^2(y)-\delta^2(y-r))) \\
=& \exp (\frac{1}{2} G(0,0)-G(r,0)-G(0,r)+G(r,r)) \\
\langle\mathbf{S}(0) \cdot \mathbf{S}(\mathbf{r})\rangle \simeq & \left(\frac{a}{|\mathbf{r}|}\right)^{\frac{1}{2 \pi J}}
\end{aligned}
\tag{17}
$$

&emsp;&emsp; 即高温下不存在长程序，低温下存在准长程序。mermin-wigner表明二维有限温没有长程序，但不禁止此模型中的准长程序形成的SDW。K-T相变认为，SDW形成是因为系统进入了拓扑涡旋的相，即经典自旋的偏转角满足一个涡旋的结构，$\oint \nabla \theta \cdot d \mathbf{l}=2 \pi n,$ $\nabla \theta=\frac{n}{r} \hat{\mathbf{e}}_z \times \hat{\mathbf{e}}_r$：

$$
S_n=S_n^{\text {core }}(a)+\frac{J}{2} \int_a d^2 r(\nabla \theta)^2=S_n^{\text {core }}(a)+\pi J n^2 \ln \left(\frac{L}{a}\right)
\tag{18}
$$

&emsp;&emsp; 其中$n$为缺陷涡旋的拓扑数(topological charge)。升温时，能量被涡旋吸收，从而改变涡旋构型，系统处于单涡旋相。温度继续升高，单涡旋相和双涡旋相竞争，双涡旋相在基态能量下面会形成束缚的偶极对从而降低能量，而两种相的构型数目即熵是双涡旋更大，自由能从而看出$F=U-TS$低温倾向单涡旋，高温倾向双涡旋，随着温度越来越大，倾向于四涡旋……,最终进入无序相。整个过程中，没有对称性的变化，但伴随着缺陷对的解离，下面的RG是更详细的分析，先要得到涡旋的配分函数，先要定义涡旋。

&emsp;&emsp;哈密顿量里面有$\theta_i$这一项，是$i$格点处自旋相对于$x$轴的角度，同时，$i$格点本身，通过定义原点，存在方位角$\phi$。对于上文的$\oint \nabla \theta \cdot d \mathbf{l}=2 \pi n,$ ，其实解就是$\theta=n\phi+C$.单涡旋$n=1$，画张图就能看出来，比如$C=0$的自旋朝向就是完全无旋的，即场$u=\nabla \theta$的旋量，$\nabla \times u=0$,另外的$C=\pi/2$的情况就是完全涡旋的场。总的来说，可以把自旋场类比为电场,对于中心存在着$n_i$涡旋的场$u=\nabla\theta$，其类比于只位于中心处的一个电荷，其电荷量为$n_i$，所对应的电荷分布：$\nabla \times \mathbf{u}=2 \pi \hat{\mathbf{e}}_z \sum_i n_i \delta^2\left(\mathbf{r}-\mathbf{r}_i\right),$。我们可以定义”电势“场$\psi$满足：
$\mathbf{u}=\mathbf{u}_0-\nabla \times\left(\hat{\mathbf{e}}_z \psi\right)$，即方程：$\nabla^2 \psi=2 \pi \sum n_i \delta^2\left(\mathbf{r}-\mathbf{r}_i\right)$.这又是一个二维拉普拉斯方程的解：$\psi(\mathbf{r})=\sum_i n_i \ln \left(\left|\mathbf{r}-\mathbf{r}_i\right|\right)$.。和二维点电荷的电势形式非常像。利用电势场，可以把经典作用量进行改写：

$$
\begin{aligned}
S[\mathbf{u}] & =\frac{1}{2} \int d^2 r J \mathbf{u}^2 \\
& =\frac{J}{2} \int d^2 r\left[(\nabla \phi)^2-\left(\nabla \times\left(\hat{e}_z \psi\right)\right)^2\right] \\
& =\frac{J}{2} \int d^2 r\left[(\nabla \phi)^2-2 \nabla \phi \cdot \nabla \times\left(\hat{\mathbf{e}}_z \psi\right)+\left(\nabla \times \hat{\mathbf{e}}_z \psi\right)^2\right]
\end{aligned}
\tag{19}
$$

&emsp;&emsp;在满足总拓扑电荷为零下$\sum_i n_i=0$第二项为零，而第三项：

$$
\begin{aligned}
S_{\mathrm{t}} \equiv \frac{J}{2} \int d^2 r\left(\nabla \times e_z \psi\right)^2 & =-\frac{J}{2} \int d^2 r \psi \nabla^2 \psi=-2 \pi^2 J \sum_{i j} n_i n_j C\left(r_i-r_j\right) \\
& = \sum_i S_{n_i}^{\text {core }}-4 \pi^2 J \sum_{i<j} n_i n_j C\left(\mathbf{r}_i-\mathbf{r}_j\right) .
\end{aligned}
\tag{20}
$$

&emsp;&emsp;其中$C(\mathbf{x})=\ln |\mathbf{x}| / 2 \pi$，注意要在取截断下面分离$i=j$的发散部分为core项，因此可以写出配分函数$Z=Z_0 \cdot Z_t$,前者提供无旋的自旋波部分，后者提供涡旋。进一步简化，只讨论$n_i=\pm 1$的涡旋，涡旋一正一负配对的所有涡旋数目的构型，其中$y_0 \equiv \exp \left[-S_{ \pm 1}^{\text {core }}\right]$。注意这里相互作用部分还是离散的形式：

$$
Z_0=\int D \phi \exp \left[-\frac{J}{2} \int d^2 r(\nabla \phi)^2\right], \quad Z_t=\sum_{N=0}^{\infty} \frac{1}{(N!)^2} \int\left(\prod_{i=1}^{2 N} d^2 r_i\right) e^{-S_{\mathrm{t}}}
\tag{21}
$$

$$
Z_{\mathrm{t}}=\sum_{N=0}^{\infty} \frac{y_0^{2 N}}{(N!)^2} \int\left(\prod_{i=1}^{2 N} d^2 r_i\right) \exp \left[4 \pi^2 J \sum_{i<j} \sigma_i \sigma_j C\left(r_i-r_j\right)\right]
\tag{22}
$$

&emsp;&emsp;我们需要二维库仑电子气体做一个类比，并且说明低温下这两者同属于二维sine-gordan普适类，并且在最后，说明玻色化的luttinger液体也属于这个普适类。这个普适类的作用量可以写作$\theta + \int d^2 r \cos \theta$。观察$Z_0$与$Z_t$的形式。动能对于无相互作用的第一项，对于相互作用项的假设，正负涡旋相同数目对应电中性，涡旋拓扑数对应电荷，涡旋相互作用和二维库仑相互作用形式一致。

&emsp;&emsp; 下面做RG，直接处理这个配分函数仍然太复杂了，不过我们可以利用和二维库仑气体的类比计算“介电常数”。在体系中引入两个电荷(涡旋对)，这个电荷对置于体系外，为$ext$。这两个电荷之间的相互作用会受到这个相互作用电子气的screening，从而真空介电常数变为介质中的介电常数。对应于配分函数中就是$J$变为$J_{eff}$。我们因此计算两点关联函数$Z[r,r']$，实际上就是利用格林函数的标度率，其中$r,r'$就是两个外电荷的位置，得到$J_{eff}$，这是一个和距离无关的观测量，应当具有RG不变性。所以对于$J_{eff}(J,y)$，保证$J_{eff}$不变，计算标度变换$(J,y)$可以得到RG流，$\exp(-S_{eff})=Z[有这两个外电荷r,r']/Z[无这两个外电荷0]$。相互作用为：两个外电荷之间的，内电荷之间的，内电荷与外电荷之间的，写为：

$$
\begin{aligned}
Z\left[\mathbf{r}, \mathbf{r}^{\prime}\right] & =\sum_N \frac{y_0^{2 N}}{(N!)^2} \int \prod d^2 r_i e^{4 \pi^2 J\left[C\left(\left|\mathbf{r}-\mathbf{r}^{\prime}\right|\right)+\sum_i \sigma_i\left(C\left(\left|r_i-r\right|\right)-C\left(\left|r_i-r^{\prime}\right|\right)\right)+\sum_{i<j} \sigma_i \sigma_j C\left(r_{i j}\right)\right]} \\
Z_0 & = Z_t
\end{aligned}
\tag{23}
$$

&emsp;&emsp; 电四极子，电八极子的效果对介电常数太微弱了，所以就展开到$y_0^2$阶：

$$
\begin{aligned}
& e^{-S_{\text {eff. } .}\left(\mathbf{r}-\mathbf{r}^{\prime}\right)+4 \pi^2 J C\left(\mathbf{r}-\mathbf{r}^{\prime}\right)} \\
& \quad=\frac{1+y_0^2 \int d^2 s d^2 y^{\prime} e^{-4 \pi^2 J C\left(\mathbf{s}-\mathbf{s}^{\prime}\right)+4 \pi^2 J\left[C(\mathbf{r}-\mathbf{s})-C\left(\mathbf{r}-\mathbf{s}^{\prime}\right)-C\left(\mathbf{r}^{\prime}-\mathbf{s}\right)+C\left(\mathbf{r}^{\prime}-\mathbf{s}^{\prime}\right)\right]}+\mathcal{O}\left(y_0^4\right)}{1+y_0^2 \int d^2 s d^2 s^{\prime} e^{-4 \pi^2 J C\left(\mathbf{s}-\mathbf{s}^{\prime}\right)}+\mathcal{O}\left(y_0^4\right)} \\
& =1+y_0^2 \int d^2 s d^2 s^{\prime} e^{-4 \pi^2 J C\left(\mathbf{s}-\mathbf{s}^{\prime}\right)}\left(e^{4 \pi^2 J D\left(\mathbf{r}, \mathbf{r}^{\prime}, \mathbf{s}, \mathbf{s}^{\prime}\right)}-1\right)+\mathcal{O}\left(y_0^4\right)
\end{aligned}
\tag{24}
$$

&emsp;&emsp;其中$D\left(\mathbf{r}, \mathbf{r}^{\prime}, \mathbf{s}, \mathbf{s}^{\prime}\right)=C(\mathbf{r}-\mathbf{s})-C\left(\mathbf{r}-\mathbf{s}^{\prime}\right)-C\left(\mathbf{r}^{\prime}-\mathbf{s}\right)+C\left(\mathbf{r}^{\prime}-\mathbf{s}^{\prime}\right)$，体系就是一对外电荷$r,r'$和电偶极子$s,s'$。利用如下的数学公式，定义：$\mathbf{X}=\left(\mathbf{s}+\mathbf{s}^{\prime}\right) / 2$,令$\mathbf{x}=\mathbf{s}^{\prime}-\mathbf{s}$小量，$D\left(\mathbf{r}, \mathbf{r}^{\prime}, \mathbf{s}, \mathbf{s}^{\prime}\right) \simeq-\mathbf{x} \cdot \nabla_{\mathbf{X}} C(\mathbf{r}-\mathbf{X})+\mathbf{x} \cdot \nabla_{\mathbf{X}} C\left(\mathbf{r}^{\prime}-\mathbf{X}\right)+\mathcal{O}\left(x^3\right)$，利用$\nabla^2 C(\mathbf{r})=\delta^2(\mathbf{r})$,$\int d^2 X\left[\nabla_{\mathbf{X}}\left(C(\mathbf{r}-\mathbf{X})-C\left(\mathbf{r}^{\prime}-\mathbf{X}\right)\right)\right]^2=2\left(C\left(\mathbf{r}-\mathbf{r}^{\prime}\right)-C(0)\right)$,最终得到($x_i \neq x_j$最小是1)：

$$
e^{-S_{\mathrm{eff}}\left(\mathbf{r}-\mathbf{r}^{\prime}\right)}=e^{-4 \pi^2 J C\left(\mathbf{r}-\mathbf{r}^{\prime}\right)}\left[1+16 \pi^5 J^2 y_0^2 C\left(\mathbf{r}-\mathbf{r}^{\prime}\right) \int_1^{\infty} d x x^3 e^{-2 \pi J \ln x}+\mathcal{O}\left(y_0^4\right)\right]
$$

&emsp;&emsp;因为$S_{\mathrm{eff}}\left(\mathbf{r}-\mathbf{r}^{\prime}\right) \simeq 4 \pi^2 J_{\mathrm{eff}} C\left(\mathbf{r}-\mathbf{r}^{\prime}\right)$，把第二项指数化，得到：

$$
J_{\mathrm{eff}}=J-4 \pi^3 J^2 y_0^2 \int_1^{\infty} d x x^{3-2 \pi J}+\mathcal{O}\left(y_0^4\right)
\tag{25}
$$

&emsp;&emsp; 或者

$$
J_{\mathrm{eff}}^{-1}=J^{-1}+4 \pi^3  y_0^2 \int_1^{\infty} d x x^{3-2 \pi J}+\mathcal{O}\left(y_0^4\right)
\tag{26}
$$

&emsp;&emsp; 会看到，在$J<J_{\mathrm{c}}=2 / \pi$，微扰论会失效，即对于$J=J_0\beta$,反映高温下多涡旋作用难以用微扰论描述。做rescale:

$$
J_{\mathrm{eff}}^{-1}=\widetilde{J}^{-1}+4 \pi^3 y_0^2 \int_b^{\infty} d x x^{3-2 \pi J}+\mathcal{O}\left(y_0^4\right)
\tag{27}
$$

&emsp;&emsp; 把$\int_1^{\infty}$,分为$\int_1^{b}与\int_b^{\infty}$两部分，其中$\widetilde{J}^{-1}=J^{-1}+4 \pi^3 y_0^2 \int_1^b d x x^{3-2 \pi J}$。做renormalize:

$$
J_{\mathrm{eff}}^{-1}=\widetilde{J}^{-1}+4 \pi^3 \widetilde{y}_0^2 \int_1^{\infty} d x x^{3-2 \pi J}+\mathcal{O}\left(y_0^4\right)
\tag{28}
$$

&emsp;&emsp;做$(x\rightarrow x/b)$，其中$\widetilde{y}_0=b^{2-\pi J} y$，小量展开
$b=e^{\ell} \approx 1+d\ell$，得到：

$$
\begin{aligned}
dJ^{-1}= 4 \pi^3 y_0^2 \int_1^b d x x^{3-2 \pi J} & = 4 \pi^3 y_0^2  \frac{(1+dl)^{4-2 \pi J}-1}{3-2\pi J} & = 4 \pi^3 y_0^2 dl \\
\frac{d y_0}{d \ell}=(2-\pi J) y_0
\end{aligned}
$$

&emsp;&emsp;定义$t=J^{-1}-\pi / 2$，会得到和上面sine-gordan RG非常相似的形式的，这就是上面需要的第二方程：

$$
\begin{aligned}
& \frac{d t}{d \ell}=4 \pi^3 y^2+\mathcal{O}\left(t y^2, y^4\right) \\
& \frac{d y}{d \ell}=\frac{4}{\pi} t y+\mathcal{O}\left(t^2 y, y^3\right)
\end{aligned}
\tag{29}
$$

&emsp;&emsp; 得到相流应满足$\frac{d}{d \ell}\left(t^2-\pi^4 y^2\right)=0$，是$t$轴或$y$轴上的双曲线。在$t$轴上的双曲线，当$t<0$时，全部流向$y=0$的线，而$t>0$的部分全部流向$t\rightarrow \infty$的高温相，critical 在$\beta J_0 =2/\pi$。低温下相流趋于$y=exp \left[-S_{ \pm 1}^{\text {core }}\right]=0$,这说明没有独立的，自由的涡旋，至少是一组正负涡旋对，说明偶极$x_i\rightarrow x_j$。而高温相，涡旋对逐渐解离，变得无序。而相流的$c>0  t>0$区域描述涡旋从$y=0$开始凭空产生，这个区域是unphysical的。

&emsp;&emsp;分析正负电荷相等数目的库仑电子气模型。低温下系统形成束缚态，高温时是经典等离子体。三维下，相变发生连续对称性破缺，配对形成超流，BEC凝聚。二维下，没有连续对称性破缺，但是正负电荷也会如上文“靠近束缚”，靠的是形成正负的拓扑涡旋，这种BKT形成的超流具有准长程序。

&emsp;&emsp;我们回到玻色化luttinger液体的哈密顿量，我们知道它属于sine-gordan普适类，其关联函数也应当是一个准长程序，回顾上一次的一系列推导无相互作用的情况：

&emsp;&emsp; 无质量自由标量场的玻色化恒等式：

$$
\psi_{ \pm}(x)=\frac{1}{\sqrt{2 \pi \alpha}} e^{ \pm i \sqrt{4 \pi} \phi_{ \pm}(x)}
$$

&emsp;&emsp; 其中：

$$
\phi_{ \pm}(x)=\frac{1}{2}\left[\phi(x) \mp \int_{-\infty}^x \Pi\left(x^{\prime}\right) d x^{\prime}\right] \equiv \frac{1}{2}(\phi \mp \theta)
$$

&emsp;&emsp; 其中定义的dual field为：

$$
\begin{aligned}
\phi & =\phi_{+}+\phi_{-}, \\
\theta & =\phi_{-}-\phi_{+},
\end{aligned}
$$

$$
H=\int d x\left[\frac{K}{2} \Pi^2+\frac{1}{2 K}\left(\partial_x \phi\right)^2\right] d x
$$

&emsp;&emsp;定义如下的玻色场做玻色化变换，注意变换的是$\phi,\theta$,而不是左右行的场：

$$
\phi=K^{\frac{1}{2}} \phi^{\prime}, \quad \Pi=K^{-\frac{1}{2}} \Pi^{\prime}, \quad \theta=K^{-\frac{1}{2}} \theta^{\prime}
\tag{30}
$$

&emsp;&emsp; 玻色化恒等式变为：

$$
\begin{aligned}
\phi_+ & = \frac{1}{2}(K^{\frac{1}{2}} \phi^{\prime} - K^{-\frac{1}{2}} \theta^{\prime})= (K^{\frac{1}{2}}+K^{\frac{-1}{2}}) \phi_+' + (K^{\frac{1}{2}}-K^{\frac{-1}{2}}) \phi_-' \\
\psi_{ \pm}(x) & =\frac{1}{\sqrt{2 \pi \alpha}} \exp \pm i \sqrt{\pi}\left[\left(K^{\frac{1}{2}} \pm K^{-\frac{1}{2}}\right) \phi_{+}^{\prime}+\left(K^{\frac{1}{2}} \mp K^{-\frac{1}{2}}\right) \phi_{-}^{\prime}\right] .
\end{aligned}
\tag{31}
$$

&emsp;&emsp; 在上一次，还得到了无质量自由标量场关联函数的形式，现在只是做相似的事情，注意其中的Wick定义消掉了几项：

$$
\begin{aligned}
\left\langle\psi_{ \pm}^{\dagger}(x) \psi_{ \pm}(0)\right\rangle & \simeq\left[\frac{1}{\alpha \mp i x}\right]^{\frac{(K \pm 1)^2}{4 K}} \cdot\left[\frac{1}{\alpha \pm i x}\right]^{\frac{(K \mp 1)^2}{4 K}} \\
& =\frac{1}{\alpha \mp i x} \cdot\left[\frac{1}{\alpha^2+x^2}\right]^\gamma \\
\gamma & =\frac{(K-1)^2}{4 K} .
\end{aligned}
\tag{32}
$$

&emsp;&emsp;  这是一个准长程序,下面观察sine-gordan模型的相流，由于它的RG方程和XY模型的RG方程一致，它们相流的图也应当一致：

<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/2.png" width = "290" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/1.png" width = "290" height = "200" alt="图片名称" align=center />

$$
\begin{aligned}
& \frac{d y}{d t}=x y, \\
& \frac{d x}{d t}=y^2 .
\end{aligned}
\tag{33}
$$

$$
H_{\mathrm{c}} K=\int d x\left(\frac{1}{2}\left[K \Pi^2+\frac{1}{K}\left(\partial_x \phi\right)^2\right]+\frac{y}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi\right)
\tag{5}
$$

&emsp;&emsp; 参数$K=\frac{1}{\sqrt{4\Delta/\pi+1}}$,$y=K\Delta$.在RG图上，$K=1,\Delta=0$在$x<0 ,y=0$的直线上，该点的这个相是最原始的一维无相互作用体系，对应了Luttinger液体，这个相的规律满足第一次叙述玻色化的情况。对于TL液体，可以用一个参数描述的，图上的虚线就是TL液体的参数能处于TL相的范围。两条分界线对应了$y=-x$和$y=x$,求解方程$2-4\frac{1}{\sqrt{4\Delta/\pi+1}}=\Delta \frac{1}{\sqrt{4\Delta/\pi+1}}$,解为$\Delta =0.99$，对应另一支为吸引势$\Delta<0$的解理论存在，但是TL模型不适用没有解。总之，对于TL模型，在$\Delta<1$为$TL$相。y要想得到完整的RG流图要采用一般的sine-gordan模型，要求如果采用sine-gordan普适类的话，利用公式$5$，看作$K,y$是两个独立变量$K ,y=K\Delta$，则这条直线上对应$K>1/2 ，  \Delta=0$的相都属于Tomonaga-Luttinger 液体，如果这个相想要是TL相，需要计算Luttinger 参数$K$，至少要满足$K>1/2$。

&emsp;&emsp;  最右侧的区域是unphysical的，因为相流不可能既$\Delta<-1$又$\Delta>1$。对于分离线$y=-x$上面的区域，为$\Delta>1$的区域，在这个相中，$y$很大，对应于$5$式第二项占主导，而第二项存在一个极值：

$$
\begin{aligned}
&\cos \sqrt{16 \pi} \phi=\frac{1}{2}\left(1-2 \sin ^2 \sqrt{4 \pi} \phi\right)\\
&\sin ^2 \sqrt{4 \pi} \phi  =1 \\
&\sin \sqrt{4 \pi} \phi  = \pm 1
\end{aligned}
\tag{34}
$$

&emsp;&emsp; 为了确定CDW相，观察$\langle n_i \rangle$随$i$的函数关系，利用了上一次的公式$(104)$,第一项对应$\partial_x \phi$是一个平滑的场，第二项振荡。可以看到确实呈现CDW相，而CDW序参量就可以表示为$\left\langle i \bar{\psi} \gamma^5 \psi\right\rangle= \pm \mathcal{D}_{\mathrm{CDW}}$,。公式$34$两个解就对应了010101……和101010……。在强耦合极限下面，一空一占据以避免最近邻排斥，任意对电荷移动的行为需要能量，这是一个二重简并的gapped phase.

$$
\begin{aligned}
\langle n(x)\rangle &=\langle : \psi^{\dagger}(x) \psi(x):\rangle \\
&=\langle : \psi_{+}^{\dagger}(x) \psi_{+}(x)+\psi_{-}^{\dagger}(x) \psi_{-}(x):\rangle +(-1)^j\langle \left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)\rangle \\
& = 0 + \langle \sin \sqrt{4 \pi} \phi \rangle = \pm 1
\end{aligned}
\tag{35}
$$

&emsp;&emsp; 对于分离线$y=x$下面的区域，为$\Delta<-1$的区域，这时候有一个很大的负的$y$，也存在一个极值，现在第二项期望是大的正数：

$$
\begin{aligned}
& \cos \sqrt{16 \pi} \phi=\frac{1}{2}\left(-1+2 \cos ^2 \sqrt{4 \pi} \phi\right) \\
& \cos ^2 \sqrt{4 \pi} \phi  =1 \\
& \cos \sqrt{4 \pi} \phi  = \pm 1
\end{aligned}
\tag{36}
$$

$$
\begin{aligned}
\psi(j) &=a^{1 / 2}\left[e^{i \frac{\pi}{2} j} \psi_{+}(x)+e^{-i \frac{\pi}{2} j} \psi_{-}(x)\right] \\
\psi^{\dagger}(j+1) \psi(j)+h.c.& =a\left[e^{-i \frac{\pi}{2}} \psi_{+}^{\dagger}(x+a) \psi_{+}(x)+e^{i \frac{\pi}{2}} \psi_{-}^{\dagger}(x+a) \psi_{-}(x)\right. \\
&\left.\quad+e^{-i \pi j} e^{-i \frac{\pi}{2}} \psi_{+}^{\dagger}(x+a) \psi_{-}(x)+e^{i \pi j} e^{i \frac{\pi}{2}} \psi_{-}^{\dagger}(x+a) \psi_{+}(x)\right] +h.c. \\
\psi_{+}^{\dagger}(x+a) \psi_{+}(x) +\psi_{-}^{\dagger}(x+a) \psi_{-}(x)  = & 0 \quad \text{平滑场，期望为零}  \\
\langle  \psi_+^{\dagger}\left(-i \partial_x\right) \psi_++\psi_-^{\dagger}\left(+i \partial_x\right) \psi_- \rangle &= const \quad \text{常数作为背景丢掉}\\
\langle \psi^{\dagger}(j+1) \psi(j)+h.c.\rangle & = (-1)^{j}(-i\psi_+^{\dagger}(x)\psi_-(x)+h.c)+const \\
& = \frac{(-1)^j}{2 \pi \alpha}\langle\cos \sqrt{4 \pi} \phi\rangle +const \quad \text{(上次 E.q. 103)} \\
& = (-1)^j \mathcal{D}_{\mathrm{P}} +const
\end{aligned}
\tag{37}
$$

&emsp;&emsp; $\mathcal{D}_{\mathrm{P}}$为Peierls参数，“键强”。$\langle \psi^{\dagger}(j+1) \psi(j)+h.c.\rangle$其实就是$j$与$j+1$之间的hopping 键的大小，会看到这个hopping 会出现周期性的变化$(-1)^j$，化学键强弱强弱……或弱强弱强……变化，这是一维peierls相的性质。因此形成了二聚体“dimer",移动一个电荷需要打破dimer配对，需要能量，这也是一个二重简并的gapped phase。

#### <font color=blue>APPENDIX : RG Sine-Gordan to the Second Order - Partition Function Method </font>

&emsp;&emsp;作用量为：

$$
S=\frac{1}{2 \pi K} \int d x d \tau\left[\frac{1}{u}\left(\partial_\tau \phi\right)^2+u\left(\partial_x \phi\right)^2\right]  +\frac{2 g}{(2 \pi \alpha)^2} \int d x d \tau \cos (\sqrt{8} \phi(x, \tau))
\tag{38}
$$

&emsp;&emsp; 配分函数指数展开到二阶，分为快慢模式得到：

$$
\begin{gathered}
\quad \frac{Z}{Z_0}=\frac{1}{Z_0} \int \mathcal{D} \phi e^{-S_0^{>}-S_0^{<}}\left[1-\frac{2 g}{(2 \pi \alpha)^2 u} \int d^2 r \cos \left(\sqrt{8}\left(\phi^{>}(r)+\phi^{<}(r)\right)\right)\right. \\
\left.+\frac{2 g^2}{(2 \pi \alpha)^4 u^2} \int d^2 r_1 \int d^2 r_2 \cos \left(\sqrt{8}\left(\phi^{>}\left(r_1\right)+\phi^{<}\left(r_1\right)\right)\right) \cos \left(\sqrt{8}\left(\phi^{>}\left(r_2\right)+\phi^{<}\left(r_2\right)\right)\right)\right]
\end{gathered}
\tag{39}
$$

&emsp;&emsp;快模式取期望，得到有效作用量,利用了公式$11$的性质$1,2,3,4$，以及下面的性质：

$$
\begin{aligned}
& \left\langle \cos \left(\sqrt{8}\left(\phi^{>}\left(r_1\right)+\phi^{<}\left(r_1\right)\right)\right) \cos \left(\sqrt{8}\left(\phi^{>}\left(r_2\right)+\phi^{<}\left(r_2\right)\right)\right) \right\rangle (f) \\
& = \left\langle \cos \sqrt{8} \phi^{>}+ \phi^{<}\right\rangle + \left\langle \cos \sqrt{8} \phi^{>}(r_1)-\phi^{>}(r_2)+ \phi^{<}(r_1)-\phi^{<}(r_2)\right\rangle \\
& = \sum_{\epsilon=\pm 1}(\cos \sqrt{8} \phi^{<}(r_1)+ \epsilon \phi^{<}(r_2) )e^{-4\left\langle\left(\phi^{>}(r_1)+\epsilon \phi^{>}(r_2)\right)^2\right\rangle(f)}
\end{aligned}
$$

$$
\begin{gathered}
\frac{Z}{Z_0}=\frac{1}{Z_0^{<}} \int \mathcal{D} \phi e^{-S^{<}} \left[1-\frac{2 g}{(2 \pi \alpha)^2 u} \int d^2 r \cos \left(\sqrt{8} \phi^{<}(r)\right) e^{-4\left\langle\left(\phi^{>}(r)\right)^2\right\rangle(f)}\right] \\
\left.+\frac{g^2}{(2 \pi \alpha)^4 u^2} \sum_{\epsilon= \pm} \int d^2 r_1 \int d^2 r_2 \cos \left(\sqrt{8}\left(\phi^{<}\left(r_1\right)+\epsilon\phi^{<}\left(r_2\right)\right)\right) e^{-4\left\langle\left(\phi^{>}\left(r_1\right)+\epsilon \phi^{>}\left(r_2\right)\right)^2\right\rangle(f)}\right]
\end{gathered}
\tag{40}
$$

&emsp;&emsp; 还原指数能够得到有效作用量，利用：

$$
1+gA+g^2B=\exp \left[gA+g^2B-\frac{1}{2} g^2A^2+O\left(g^3\right)\right]
$$

$$
\begin{aligned}
\frac{Z}{Z_0} & =\frac{1}{Z_0^{<}} \int \mathcal{D} \phi e^{-S^{<}}\exp -\frac{2 g}{(2 \pi \alpha)^2 u} \int d^2 r \cos \left(\sqrt{8} \phi^{<}(r)\right) e^{-4\left\langle\phi^{>}(r)^2\right\rangle} \\
&\exp \frac{g^2}{(2 \pi \alpha)^4 u^2} \int d^2 r_1 \int d^2 r_2\sum_{\epsilon= \pm} \cos (\sqrt{8}(\phi^{<}(r_1)+\epsilon \phi^{<}(r_2))) e^{-4 \langle(\phi^{>}(r_1)+\epsilon \phi^{>}(r_2))^2\rangle } \\
& \exp-\frac{2 g^2}{(2 \pi \alpha)^4 u^2} \int d^2 r_1 \int d^2 r_2 \cos \left(\sqrt{8} \phi^{<}\left(r_1\right)\right) e^{\left.-4\langle\phi^{>2}\left(r_1\right)\right\rangle}\cos \left(\sqrt{8} \phi^{<}\left(r_2\right)\right) e^{\left.-4\left\langle\phi^{>2}\left(r_2\right)\right\rangle\right\rangle}
\end{aligned}
\tag{41}
$$

&emsp;&emsp;  $41$式第一行就是有效作用量的一阶修正，第二第三行就是二阶修正，计算中间的期望,取零温，连续极限，利用：

$$
\phi(x, \tau)=\frac{1}{\beta \Omega} \sum_{k, \omega_n} e^{i\left(k x-\omega_n \tau\right)} \phi\left(k, \omega_n\right)
$$

$$
S_0=\frac{1}{2 \pi K} \frac{1}{\beta \Omega} \sum_{\mathbf{q}}\left[\omega_n^2 / u+u k^2\right] \phi(\mathbf{q})^* \phi(\mathbf{q})
$$

$$
\begin{aligned}
-4\left\langle\left(\phi^{>}(r)\right)^2\right\rangle(f) & =\frac{1}{\beta \Omega} \sum_{\Lambda^{\prime}<|\mathbf{q}|<\Lambda}\langle\phi(\mathbf{q}) \phi(-\mathbf{q})\rangle =-\frac{4}{\beta \Omega} \sum_{\Lambda^{\prime}<||q||<\Lambda} \frac{\pi K u}{\omega_n^2+u^2 k^2} \\
& = -2 \int_{\Lambda^{\prime}<\|q\|<\Lambda} d q \frac{K}{q} = -2 K \log \left(\Lambda / \Lambda^{\prime}\right)
\end{aligned}
\tag{42}
$$

&emsp;&emsp;从这里也可以看到一阶的修正，就是公式$41$的第一行，修正参数$g$(Umklapp作用)：

$$
\begin{aligned}
g(\Lambda') &=\left(\frac{\Lambda}{\Lambda^{\prime}}\right)^2 g(\Lambda) e^{-2 K \log \left(\Lambda / \Lambda^{\prime}\right)} \\
\frac{d g(l)}{d l} & =g(l)(2-2 K(l))
\end{aligned}
\tag{43}
$$

&emsp;&emsp; 二阶修正有三部分，$\epsilon=1$,$\epsilon=-1$以及平方项$-1/2A^2$。其中加号产生$\cos \sqrt{32}\phi$这一项，这一项从scaling dimension来看在$K>0.25$而不是$K>1$时就是无关的，分析XY相变时不用考虑这一项。$\epsilon=1$和$-1/A^2$的一部分会产生这一项，丢掉后剩下了二阶修正为：

$$
\begin{aligned}
& \delta I=\frac{g^2}{(2 \pi \alpha)^4 u^2} \int d^2 r_1 \int d^2 r_2 \cos \left(\sqrt{8}\left(\phi^{<}\left(r_1\right)-\phi^{<}\left(r_2\right)\right)\right) \\
& \quad\left[e^{-4\left\langle\left(\phi^{>}\left(r_1\right)-\phi^{>}\left(r_2\right)\right)^2\right\rangle(f)}-e^{-8\left\langle\left(\phi^{>}\right)^2\right\rangle(f)}\right]
\end{aligned}
\tag{44}
$$

&emsp;&emsp; 利用以下性质计算,令$R=r_1+r_2, r=r_1-r_2$，注意这里$r$需要是个小量，因为快场只包含动量在小壳层的积分，关联长度正比于$1/\Lambda$ ,只有$r$小于这个尺度，即为小量，关联函数才非零：

$$
\begin{gathered}
\phi^{>}\left(r_1\right)-\phi^{>}\left(r_2\right)=\frac{1}{\beta \Omega} \sum_{\mathbf{q}} \phi(\mathbf{q})\left[e^{i \mathbf{q} \cdot r_1}-e^{i \mathbf{q} \cdot r_2}\right] \\
=\frac{1}{\beta \Omega} \sum_{\mathbf{q}} \phi(\mathbf{q}) e^{i \mathbf{q} \cdot R}\left[e^{i \mathbf{q} \cdot r / 2}-e^{-i \mathbf{q} \cdot r / 2}\right] \\
=\frac{2 i}{\beta \Omega} \sum_{\mathbf{q}} \phi(\mathbf{q}) e^{i \mathbf{q} \cdot R} \sin \left(\frac{\mathbf{q} \cdot r}{2}\right)
\end{gathered}
\tag{45}
$$

$$
\begin{aligned}
\left\langle\left(\phi^{>}\left(r_1\right)-\phi^{>}\left(r_2\right)\right)^2\right\rangle(f) &=\frac{4}{(\beta \Omega)^2} \sum_{\mathbf{q}, \mathbf{q}^{\prime}} e^{i\left(\mathbf{q}+\mathbf{q}^{\prime}\right) \cdot R} \sin \left(\frac{\mathbf{q} \cdot r}{2}\right) \sin \left(\frac{\mathbf{q}^{\prime} \cdot r}{2}\right)\left\langle\phi(\mathbf{q}) \phi\left(\mathbf{q}^{\prime}\right)\right\rangle(f) \\
= & -\frac{4}{\beta \Omega} \sum_{\Lambda^{\prime}<\|\mathbf{q}\|<\Lambda}[2-2 \cos (\mathbf{q} r)] \frac{\pi K u}{\omega_n^2+u^2 k^2}
\end{aligned}
\tag{46}
$$

&emsp;&emsp; 得到：

$$
\begin{aligned}
\delta I= & \frac{g^2}{(2 \pi \alpha)^4 u^2} \int d^2 r_1 \int d^2 r_2 \cos \left(\sqrt{8}\left(\phi^{<}\left(r_1\right)-\phi^{<}\left(r_2\right)\right)\right) \\
& \exp -\frac{4}{\beta \Omega} \sum_{\Lambda^{\prime}<\|\mathbf{q}\|<\Lambda}[2-2 \cos (\mathbf{q} r)] \frac{\pi K u}{\omega_n^2+u^2 k^2}\left(1-e^{-\frac{4}{\beta \Omega} \sum_{\Lambda^{\prime}}<\|\mathbf{q}\|<\Lambda[2 \cos (\mathbf{q} r)] \frac{\pi K u}{\omega_n^2+u^2 k^2}}\right)
\end{aligned}
\tag{47}
$$

&emsp;&emsp; 其中的求和式可以用球贝塞尔函数表示：

$$
\frac{4}{\beta \Omega} \sum_{\Lambda^{\prime}<||\mathbf{q}||<\Lambda}[2 \cos (\mathbf{q} r)] \frac{\pi K u}{\omega_n^2+u^2 k^2}=4 K \int_{\Lambda^{\prime}}^{\Lambda} \frac{d q}{q} J_0(q r)
$$

$$
F_{1, \Lambda}(r)=\frac{1}{\beta \Omega} \sum_{\|\mathbf{q}\|<\Lambda}[2-2 \cos (\mathbf{q} r)] \frac{\pi u}{\omega_n^2+u^2 k^2}=\int_0^{\Lambda} \frac{d q}{q}\left[1-J_0(q r)\right]
\tag{48}
$$

&emsp;&emsp;对于小的$d l=\log \left(\Lambda / \Lambda^{\prime}\right)$,积分为$\int_{\Lambda^{\prime}}^{\Lambda} \frac{d q}{q} J_0(q r) \approx J_0(\Lambda r) d l$，可以把$47$式最后一项指数展开并保留到$dl$第一阶。另外，对易第一项$\cos$部分，对于$r_1\sim r_2$两者接近的时候，令$R=r_1+r_2, r=r_1-r_2$，可以小量$r$展开，到$\cos$二阶项，得到（正规化之后）：

$$
\cos (\phi)=: \cos (\phi): e^{-\frac{1}{2}\left\langle\phi^2\right\rangle}
$$

$$
\cos \left(\sqrt{8}\left(\phi^{<}\left(r_1\right)-\phi^{<}\left(r_2\right)\right)\right) \simeq 4\left(r \cdot \nabla_R \phi(R)\right)^2 e^{-\frac{4}{\beta \Omega} \sum_{\|\mathbf{q}\|<\Lambda^{\prime}}[2-2 \cos (\mathbf{q} r)] \frac{\pi K u}{\omega_n^2+u^2 k^2}}
\tag{49}
$$

&emsp;&emsp; 得到,这里的时空是等价的：

$$
\begin{aligned}
\delta I & =\frac{g^2 16 K d l}{(2 \pi \alpha)^4 u^2} \int d^2 R \int d^2 r\left(r \cdot \nabla_R \phi^{<}(R)\right)^2 e^{-4 K F_{1, \Lambda}(r)} J_0(\Lambda r) \\
& =d l \frac{g^2 8 K}{(2 \pi \alpha)^4 u^2} \int d^2 R\left[\left(\partial_X \phi\right)^2+\left(\partial_Y \phi\right)^2\right]\left[\int d^2 r r^2 e^{-4 K F_{1, \Lambda}(r)} J_0(\Lambda r)\right]
\end{aligned}
\tag{50}
$$

&emsp;&emsp;之前的作用量为：

$$
S_0=\frac{1}{2 \pi K} \int d^2 r(\nabla \phi)^2
$$

&emsp;&emsp;即修正参数$K$得到：

$$
\frac{1}{2 \pi K'}-\frac{1}{2 \pi K}= d l \frac{g^2 8 K}{(2 \pi \alpha)^4 u^2} \left[\int d^2 r r^2 e^{-4 K F_{1, \Lambda}(r)} J_0(\Lambda r)\right]
$$

&emsp;&emsp;现在要做rescale,renormalize,标度率已经涵盖在$dl$部分里了，

$$
\frac{d K^{-1}(l)}{d l}=\frac{g^2 8 K(l)}{(2 \pi)^2(\Lambda \alpha)^4 u^2} \Lambda^4 \int_0^{\infty} d r r^3 e^{-4 K F_{1, \Lambda}(r)} J_0(\Lambda r)
\tag{51}
$$

$$
\begin{aligned}
\Lambda^4 \int_0^{\infty} d r r^3 e^{-4 K F_{1, \Lambda}(r)} J_0(\Lambda r) &= \int_0^{\infty} d (\Lambda r) {(\Lambda r)}^3 e^{-4 K F_{1}(\Lambda r)} J_0(\Lambda r) \\
C & =\int_0^{\infty} d z z^3 e^{-4 K F_1(z)} J_0(z)
\end{aligned}
$$

$$
\frac{d K^{-1}(l)}{d l}=\frac{g^2 2 K(l)}{(\pi u)^2(\Lambda \alpha)^4} \mathrm{C}
\tag{52}
$$

## The origin of ICDW phase -- doped 1-D interacting system [2]
---

&emsp;&emsp;在处理一维相互作用Kitaev链模型的诸多文章中，我现在读到了四篇采用了玻色化+RG的方法，它们多是采用scaling-dimension的方法去做RG的。在一阶RG下面求出微扰项的scaling-dimension就能得到RG流的方程。这样做RG的方法和上面类似，写出哈密顿量，求出两个微扰项各自的标度维数，做一阶RG得到RG流。

&emsp;&emsp;第一篇文章，之前做过报告。讨论ANNNI模型和kitaev-hubbard模型的相似性，给出了Jordan-Wigner变换前后的哈密顿量：

$$
H(h, U)=-\sum_{j=1}^{L-1} \sigma_j^x \sigma_{j+1}^x-h \sum_{j=1}^L \sigma_j^z+U \sum_{j=1}^{L-1} \sigma_j^z \sigma_{j+1}^z
\tag{53}
$$

$$
\begin{aligned}
H(h, U)= & -\sum_{j=1}^{L-1}\left(c_j^{\dagger}-c_j\right)\left(c_{j+1}^{\dagger}+c_{j+1}\right) \\
& -h \sum_{j=1}^L\left(1-2 c_j^{\dagger} c_j\right)
 +U \sum_{j=1}^{L-1}\left(1-2 c_j^{\dagger} c_j\right)\left(1-2 c_{j+1}^{\dagger} c_{j+1}\right)
\end{aligned}
\tag{54}
$$

<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/3.png" width = "290" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/4.png" width = "200" height = "200" alt="图片名称" align=center />

&emsp;&emsp; 直接用$39$式做连续化物理并不直观。我们先唯象的分析相的变化，就先考虑$\mu=0$的情况，文中揭示了拓扑平庸相，到拓扑相，到CDW相的变化。两个相变点在$\pm 1$附近，$\mu=0$时低能激发是自由玻色类型的，由上文所述$c=1$的XY类型相变描述，相变点在$U=\pm1$,发生gap closing。远离critical,其它相无法拟合central charge,但是在ICDW相中，系统是gapless，而且存在纠缠，可以拟合接近1的central charge。

&emsp;&emsp;查询AI和一些相关文献，尝试做一些argument。之前的luttinger理论系统从gapless的luttinger相进入gapped的CDW 或者peierls相，发生XY的 $c=1$相变。现在kitaev作用的加入定死了中间是拓扑超导相，而且在$\mu=0$下面低能激发，这时候半填充时Umklapp作用占主导，Umklapp主导的时候费米速度是$k_F=\pi/2$，是一个公度的周期。使得相变就是拓扑-CDW相变，干掉了luttinger相。luttinger相想要出现就要远离Umklapp的区域，到传统的费米类型的激发区域，它在一维低能下由玻色激发描述，所以需要加一点化学势。所以这时候拓扑相转变$4k_F \neq 2\pi$，激发是非公度的，系统中形成一系列的畴壁，这一系列畴壁的整体由于非公度可以做连续平移，作为零能激发形成gapless。之后会看到kitaev-hubbard连续化后的哈密顿量可以写作：

$$
H(h, 1+\delta U)= H_0-c_1 \delta U \int \cos (\sqrt{4 \pi} \theta) d x +c_2 h \int \cos (\sqrt{\pi} \theta) d x
\tag{55}
$$

&emsp;&emsp;其中$h=0$对应公度相变，也就是第二项由$k_F=\pi/2$的Umklapp主导，而第三项带来了不同周期的$cos$，用和差化积总的作用量，再做展开，里面就会有这一项：$\cos (\beta \phi-Q x)$，这一项写入sine-gordan总作用量中就是：

$$
S=\frac{1}{2} \int d^2 x\left[\left(\partial_\mu \phi\right)^2-g \cos (\beta \phi-\delta x)\right]
\tag{56}
$$

&emsp;&emsp;定义新的场$\tilde{\phi}(x)=\phi(x)-\frac{\delta}{\beta} x$,有：

$$
S=\frac{1}{2 \pi K} \int d^2 x\left[\left(\partial_\tau \tilde{\phi}\right)^2+\left(\partial_x \tilde{\phi}\right)^2+\frac{2 \delta}{\beta} \partial_x \tilde{\phi}+\frac{\delta^2}{\beta^2}\right]+g \int d^2 x \cos (\beta \tilde{\phi})
\tag{57}
$$

&emsp;&emsp; 会多出一项一阶导数项，这一项积分全导数不起作用，所以系统还是XY类型的相变，还原到原来的sine-gordan普适类，但是这个定义新的场会改变边界条件，之后会看到$\partial_x \tilde{\phi}$在其中被称为“平均密度的偏离”的作用。

&emsp;&emsp; 下面先回顾Mott transition形成CDW的过程,在晶格体系里面，电阻的产生伴随着电子和晶格的散射过程，晶格吸收动量一定是$2\pi/a$即的整数倍（离散平移G不变性），这个散射过程动量的改变就是$k_1+k_2-k_3-k_4=Q=Z 2\pi/a$，在一维中这些$k$的选择是很有限的，只有$|k|=\pi/2a$，即四分之一布里渊区，即电子为半填充。这个散射过程称为umklapp散射，只在半填充明显。远离这个填充数的散射过程，系统呈金属相。在上文的讨论中相互作用项就可以写为这样的玻色场形式,这个形式在$4k_F=2\pi$时是以$\sqrt{8}$为代表周期的$\cos$形式：

$$
\begin{aligned}
H_U & =\int d x U \frac{1}{(2 \pi \alpha)^2}\left[e^{-i 4 k_F x} e^{i 2 \sqrt{2} \phi_\rho(x)}+\text { h.c. }\right] \\
H & =H_0+\frac{2 g_3}{(2 \pi \alpha)^2} \int d x \cos \left(\sqrt{8} \phi_\rho(x)\right)
\end{aligned}
\tag{58}
$$

&emsp;&emsp; 我们可以先粗看dope的作用，就是令新的动量为$4 k_F=2 \pi / a+\delta$，则$e^{i 4 k_F x}=e^{i \delta x}$，原来的哈密顿量就会变为$H_u=\frac{2 g_3}{(2 \pi \alpha)^2} \int d x \cos \left(\sqrt{8} \phi_\rho(x)-\delta x\right)$如果回看这个哈密顿量：

$$
H=\int d x V(x) \rho(x)=V_0 \int \cos \left(4 k_F x\right) \rho(x)
\tag{59}
$$

&emsp;&emsp;可以看到Umklapp项取代的$V_0$的位置，其物理上类似于这个一维体系中有一个$4k_F$为周期的势。注意$43$式是连续场论的结果，在连续场论里面引入半填充的条件，umklapp作用使得我们可以从连续场论出发引入晶格定义为作用在电子上的周期势。实际上所有的CDW哈密顿量都可以写作一个普遍的形式：

$$
H_{\frac{1}{2 n}}=g_{\frac{1}{2 n}} \int d x \cos \left(n \sqrt{8} \phi_\rho(x)-\delta x \right)
\tag{60}
$$

&emsp;&emsp;$n$代表了公度的部分。$n=1$代表了一个格点上一个电子，$n=2$代表两个格点上一个电子……$\delta$项产生非公度的部分。比如说在$n=2$时，高阶umklapp过程为$k_F=\pi/8$,在高阶微扰论中，可以出现两个电子和两个电子之间的散射，即可以把四个电子从$-k_F$散射到$k_F$从而整体动量改变为$G$被晶格吸收产生CDW电阻。如果计算基态粒子数，改变化学势，比如先到了四分之一填充的CDW相，一个gapped相。再增加化学势先要跨过这个gap,就会发现基态总粒子数不变的化学势范围，然后才能进入非公度相，改变基态总粒子数，然后才进入半填充的CDW相，这个哈密顿量是非常普适的。

&emsp;&emsp; 这个哈密顿量就描述了两类相变LL-Mott和C-IC相变。LL-Mott相变第一次就推导过了，这里有一个关键点：Gap从能带色散看出：$E_{\bar{u}, \bar{l}}= \pm \sqrt{(u k)^2+\Delta^2}$，是否有这样一个结论，相互作用足够大的时候，Gap足够大可以跨越两个公度相之间的非公度部分，使得非公度相消失，是否只要是足够大的$U$，一定能看到ICDW-CDW的相变？在我的结果中$U$较小的ICDW相大的周期，$U$大的ICDW周期为2，有CDW的周期，但是纠缠熵仍然呈现ICDW的gapless结论，并非CDW。

&emsp;&emsp;描述公度和非公度作用量的方法可以参照$23$式，目标是求格林函数的标度率，用玻色场表示格林函数为$R\left(r_1-r_2\right)=\left\langle e^{i \beta \phi\left(r_1\right)} e^{-i \beta \phi\left(r_2\right)}\right\rangle$，现在加入非公度部分，$42$式表明可以还原原来的sine-gordan作用量，只要做变量代换$\tilde{\phi}(x)=\phi(x)-\frac{\delta}{\beta} x$，因此此时的格林函数为：

$$
R\left(r_1-r_2\right)=\left\langle e^{i \beta \tilde{\phi}\left(r_1\right)} e^{-i \beta \tilde{\phi}\left(r_2\right)}\right\rangle = \left\langle e^{i \beta \phi\left(r_1\right)} e^{-i \beta \phi\left(r_2\right)} e^{i\delta(x_1-x_2)}\right\rangle
\tag{61}
$$

&emsp;&emsp;所以完全可以按照$23$式的处理方法来做RG，只要加入以$e^{i\delta(x_1-x_2)}$表示的 $\cos (\delta x)$项进入作用量部分就可以了，$47$式中，已经做了一阶的微扰展开得到：

$$
\begin{aligned}
R_{eff}\left(r_1-r_2\right)= & e^{-a^2 K F_1\left(r_1-r_2\right)}\left[1+\frac{g^2}{2(2 \pi \alpha)^4 u^2} \sum_{\epsilon_1} \iint d^2 r^{\prime} d^2 r^{\prime \prime} e^{-4 K F_1\left(r^{\prime}-r^{\prime \prime}\right)}\right. \cos(\delta x) \\
& \left.\left(e^{2 a \epsilon_1 K\left[F_1\left(r_1-r^{\prime}\right)-F_1\left(r_1-r^{\prime \prime}\right)+F_1\left(r_2-r^{\prime \prime}\right)-F_1\left(r_2-r^{\prime}\right)\right]}-1\right)\right]
\end{aligned}
\tag{62}
$$

&emsp;&emsp; 这里计算上有一个关键点：原来自由玻色子关联函数具有时空等价性，因为线性色散下二维欧式空间坐标$(x ,u\tau), x\equiv u\tau$,现在的这个非公度势的加入，只作用在实空间，不会随时间改变。就像经典的一个弹簧的运动，给它一个非公度的周期势，看他随时间的变化。因此$\delta x$项的引入会破坏时空等价性，做重标度的时候时空要分别标度：$x \rightarrow e^l x, \quad \tau \rightarrow e^{z l} \tau$。所以这样的话有三个参数参与重整化，之前的$(K,y)$,和时空的差距$u$,$49$式中的$cos\theta$就是认为引入的，反映二维欧氏空间中$r,r'$演化不在处于一条线上：

$$
S=S_0+g \int d x \int d \tau \cos (\sqrt{8} \phi(x, \tau)-\delta x)
\tag{63}
$$

$$
F\left(r-r^{\prime}\right)=\frac{1}{2} \log \left[\frac{\left(x-x^{\prime}\right)^2+\left(u\left(\tau-\tau^{\prime}\right)\right)^2}{\alpha^2}\right]+\frac{t}{K} \cos \left(2 \theta_{r-r^{\prime}}\right)
\tag{64}
$$

&emsp;&emsp;仍然采用和$25$式相似的方法，可以得到和$25$非常相似的式子，只不过多了一个时间重标度，以及一个额外的$J$项,来源于积分$\int_0^{2 \pi} d \theta e^{-i \delta r \cos \theta}$过程中出现的球贝塞尔函数$J_0 J_2$:

$$
\begin{aligned}
K^{\mathrm{eff}} & =K-\frac{g^2}{2} K^2 \int_\alpha^{+\infty} \frac{d r}{\alpha}\left(\frac{r}{\alpha}\right)^{3-4 K} J_0(\delta r) \\
t^{\mathrm{eff}} & =t+\frac{g^2}{4} K^2 \int_\alpha^{+\infty} \frac{d r}{\alpha}\left(\frac{r}{\alpha}\right)^{3-4 K} J_2(\delta r)
\end{aligned}
\tag{65}
$$

&emsp;&emsp; 得到相似的重整化流，其中$\delta(l)=\delta e^l$在RG的过程中保留了$l$部分：

$$
\begin{aligned}
\frac{d K}{d l} & =-\frac{1}{2} y^2 K^2 J_0(\delta(l) \alpha) \\
\frac{d y}{d l} & =(2-2 K) y \\
\frac{d u}{d l} & =-\frac{y^2}{2} u K J_2(\delta(l) \alpha)
\end{aligned}
\tag{66}
$$

&emsp;&emsp; 讨论球贝塞尔项的作用，实际就反映了判断系统处于C或IC相和系统尺度密切相关。球贝塞尔函数满足$x \sim 0 , J_0(x) \sim 1$以及$x \rightarrow \infty ,J_0(x) \sim 0$ 。这启发可以定义系统中的一个尺度$L=1/\delta$,当$x<<L$时，系统$J=1$,RG流退回sine-gordan模型的RG流，系统呈现CDW相，也就是x在远小于非公度周期的尺度上系统表现得如同公度一样，系统至少要$L$的大小才能感受非公度的特征。另外，当$x>>L$时，$\cos \left(n \sqrt{8} \phi_\rho(x)-\delta x \right)$振荡非常迅速，平均效应是零，系统呈现Luttinger特征。

&emsp;&emsp; 在上面的过程中，我们是固定了参杂，调整参杂的过程中，只要它非零总有非公度相。实际上我们调节的是化学势，并不固定总粒子数，在调整化学势的过程中参杂和化学式应当有一个关系$\delta(\mu)$,在无相互作用时这个关系应当是线性的。有些化学势形成非公度相，另一些形成公度相。所以可以把$\delta(\mu_0)$看作在给定化学式下面的粒子总数，可以作为标度不变量。而观察非公度参杂部分$\delta_Q(\mu_0)$的标度变换，什么时候RG流会流到$\delta_Q(\mu_0)=0$的公度相。取巨正则系综，给出系统总粒子数，其中$F=-\log (Z) / \beta$：

$$
\delta=\frac{-2 \pi}{L} \frac{\partial F}{\partial \mu}
$$

&emsp;&emsp;再做一遍RG的过程，其中$H=H_0+H_u-\mu N$,只需要玻色化新的$n_i$这一项，从上一次的$105$式看出为：$\partial_x \phi$,因此这一项可以和自由玻色场配完全平方，使得$\tilde{\phi}=\phi+const$，得到下面的配分函数。从这个过程得到的结果对比之前的非公度部分的作用量，两者一致可以看出参杂和调化学势都是可做的,所以参杂表示为$\delta_Q=\frac{4 K \mu}{u}$

$$
Z=\int \mathcal{D} \tilde{\phi} e^{-\beta H[\tilde{\phi}]} \exp \left[-g \int_0^\beta d \tau \int d x \cos \left(\sqrt{8} \tilde{\phi}-\delta_Q x\right)\right]
$$

$$
\begin{aligned}
\delta &= -\frac{2 \pi}{L} \frac{\partial F}{\partial \mu}=\frac{2 \pi}{\beta L} \frac{\partial}{\partial \mu} \ln Z \\
&=\delta_Q-\frac{4 K g}{u \pi \alpha^2} \frac{1}{\beta L} \int d x \int^\beta d \tau x\left\langle\sin \left(\sqrt{8} \tilde{\phi}-\delta_Q x\right)\right\rangle
\end{aligned}
\tag{67}
$$

&emsp;&emsp; 仍然是仿照上文的方法做展开，如上文做到二阶，最终可以得到方程,以及RG流的方程：

$$
\delta=\delta_Q-y^2 K \int_\alpha^{+\infty} \frac{d r}{\alpha}\left(\frac{r}{\alpha}\right)^{2-4 K} \frac{1}{\alpha} J_1(\delta r)
$$

$$
\frac{d \delta_Q}{d l}=\delta_Q(l)-\frac{y^2}{\alpha} J_1\left(\delta_Q(l) \alpha\right)
\tag{68}
$$

&emsp;&emsp; 如果没有第二项，RG流就如同自由玻色场的RG流，此时得到的化学势就是正比于参杂。第二项也即$\cos$项倾向于让斜率变为零，从而降低$\delta_Q$到零的公度CDW项。可以看到右边这两项的竞争决定在$\mu$和$y$的大小，大的$y$即相互作用使得系统往公度CDW，而改变$\delta_Q$即$\mu$系统可能处于LL也可能处于CDW，因为如上文所说CDW是要跨越Gap的。上面的说法一个问题是我们是对$y$的小量展开，而之前的说法形成CDW需要相互作用$\delta e^l >>1$。在RG流流向无穷之前，它已经进入了强耦合区域。大的$y$相互作用形成CDW本身理论上就不是微扰论能做的。也就是说，玻色化-RG的方法可以处理LL相，但是C-IC相变位于强相互作用区域，系统是Gapped，找不到低能激发。

&emsp;&emsp; 为此，Luther, Emery有一个解析的方法，利用refinement，先从公度的情况出发，关键是关注到了在一个特殊的相互作用参数下哈密顿量是可解的，我们回顾玻色化的过程公式$3-5$:

&emsp;&emsp; 对相互作用做玻色化：

$$
\begin{aligned}
H_{\mathrm{Ic}}= & \frac{H_{\mathrm{I}}}{a} \\
= & a \Delta \sum_j\left[ : \psi_{+}^{\dagger}(x) \psi_{+}(x)+\psi_{-}^{\dagger}(x) \psi_{-} : +(-1)^j\left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)\right] \\
& \times\left[ : \psi_{+}^{\dagger}(x) \psi_{+}(x)+\psi_{-}^{\dagger}(x) \psi_{-}(x) : -(-1)^j\left(\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right)\right] \\
= & a \Delta \sum_j\left[\frac{1}{\sqrt{\pi}} \partial_x \phi\right]^2-\left[\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right]^2+(-1)^j \text { oscillations } \\
= & \Delta \int d x\left[\frac{\left(\partial_x \phi\right)^2}{\pi}-\left[\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi\right]^2\right] \\
= & \Delta \int d x\frac{2\left(\partial_x \phi\right)^2}{\pi}+\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi
\end{aligned}
\tag{3}
$$

&emsp;&emsp;我们可以得到玻色化的哈密顿量：

$$
H_{\mathrm{c}}=\int d x\left(\frac{1}{2}\left[\Pi^2+\left(1+\frac{4 \Delta}{\pi}\right)\left(\partial_x \phi\right)^2\right]+\frac{\Delta}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi\right)
\tag{4}
$$

&emsp;&emsp;定义Luttinger Parameter：$K=\left[1+\frac{4 \Delta}{\pi}\right]^{-\frac{1}{2}}$,有：

$$
H_{\mathrm{c}} K=\int d x\left(\frac{1}{2}\left[K \Pi^2+\frac{1}{K}\left(\partial_x \phi\right)^2\right]+\frac{K \Delta}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi\right)
\tag{5}
$$

&emsp;&emsp; $K=1$就是这个特殊点，我们现在讨论一个普遍的一维相互作用体系，$K,\Delta$独立，而在$t-V$模型中就对应了$\Delta=2$。数学上，公式5取K=1的时候，前半部分回到了无相互作用的情况，可以用一个无相互作用的费米哈密顿量表示；后半部分只要稍作变量代换$\phi'=2\phi$就可以发现回到了无相互作用二费米子的情况$[\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi]^2 \rightarrow \cos \sqrt{16 \pi} \phi$对应四费米子项,$\cos \sqrt{16 \pi} \phi$对应二费米子项。物理上，我们考虑一维低能激发能带来的所有散射类型，$\Delta$的含义就是左右行场之间的Umklapp相互作用，这从$3$式可以看出，$K$项带来的就是一般的interband,intraband相互作用。相互作用的第一项$(\partial_x \phi)^2$我们确实无法写成二费米子的形式，但是当$K=1$时原式前半部分就会回到无相互作用的形式，这时候只剩下了Umklapp过程，如前所述，Umklapp过程如同施加晶格周期的势能场，电子在这个固定背景中运动，彼此无相互作用。现在对$K=1$公度(Half-filling)情况求解,第一项就是无相互作用，另一项，利用：

$$
\psi_R^{\dagger}(x) \psi_L(x)=\frac{1}{2 \pi \alpha} e^{-i[\bar{\phi}(x)+\bar{\theta}(x)]} e^{-i[\bar{\phi}(x)-\bar{\theta}(x)]}=\frac{1}{2 \pi \alpha} e^{-i 2 \bar{\phi}(x)}
$$

$$
V= \cos (2 \bar{\phi}(x)) \sim \int d x\left[\psi_R^{\dagger}(x) \psi_L(x)+\text { h.c. }\right]
\tag{69}
$$

&emsp;&emsp;得到：

$$
H_0=\sum_k u k\left(c_{R, k}^{\dagger} c_{R, k}-c_{L, k}^{\dagger} c_{L, k}\right)+\left(\pi \alpha g_{\frac{1}{2 n}}\right) \sum_k c_{R, k}^{\dagger} c_{L, k}+\text { h.c. }
\tag{70}
$$

&emsp;&emsp; 这是个无相互作用哈密顿量，可以对角化，其中$\Delta=\pi \alpha g_{\frac{1}{2 n}}$：

$$
\begin{aligned}
c_{\bar{u}, k}^{\dagger} & =\alpha_k c_{R, k}^{\dagger}+\beta_k c_{L, k}^{\dagger} \\
c_{\bar{l}, k}^{\dagger} & =-\beta_k c_{R, k}^{\dagger}+\alpha_k c_{L, k}^{\dagger}
\end{aligned}
\tag{71}
$$

$$
\begin{aligned}
& \alpha_k=\left[\left(1+u k / \sqrt{(u k)^2+\Delta^2}\right) / 2\right]^{1 / 2} \\
& \beta_k=\left[\left(1-u k / \sqrt{(u k)^2+\Delta^2}\right) / 2\right]^{1 / 2}
\end{aligned}
\tag{72}
$$

$$
E_{\bar{u}, \bar{l}}= \pm \sqrt{(u k)^2+\Delta^2}
\tag{73}
$$

&emsp;&emsp;可以看到Umklapp项对打开Gap的贡献，这也符合它如同施加晶格周期的势能场形成CDW的性质，能带图为：

<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/5.png" width = "290" height = "180" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/6.png" width = "290" height = "180" alt="图片名称" align=center />

&emsp;&emsp; 可以给一定的化学势，如果仍然在这个GAP中，系统是公度的。重要的是此时$K=1$对应于$K_c=1/2n^2$而LL-C相变点为$K_c=1/n^2$（这篇文献RG K定义小为CDW），可以说系统处于CDW中，因此可以以LE线的解作为“无相互作用”的情况，这是一个CDW相中的“无相互作用”，可以以此为基准做CDW相中的RG，微小偏离LE线只是会改变Gap的大小。

&emsp;&emsp; 现在处理非公度的情况，这等于说化学势跨过了Gap,进入了Upper bond。讨论非公度比较弱的时候，化学势刚跨过上能带底，此时观察到如果考察低能激发，在上能带底的激发仍然是线性的。因此我们看到LE线附近的低能ICDW相，在一组新的基下面$(u,l)$,具有LL相类似的性质。因此上文的LE无相互作用哈密顿量只取$c_u^{\dagger}$部分，分解为左右行的场$\alpha=c_{uR},\beta=c_{uL}$，因此无相互作用的部分为,其中$v_c$现在是上能带的费米速度，这里面等价于原来的H_0和Umklapp作用：

$$
v_c=\frac{\partial E_1(k)}{\partial k}=\frac{v^2 k_c}{\sqrt{\left(v k_c\right)^2+\Delta^2}}
\tag{74}
$$

$$
H_0=\sum_k v_c k\left(\alpha_k^{\dagger} \alpha_k-\beta_k^{\dagger} \beta_k\right)
\tag{75}
$$

&emsp;&emsp; 现在的相互作用部分：

$$
H_{\mathrm{int}}=\frac{1}{L} \sum_{k_1, k_2, q} V\left(k_1, k_2, q\right) c_{k_1+q}^{\dagger} c_{k_2-q}^{\dagger} c_{k_2} c_{k_1}
$$

$$
c_{uk}= [\frac{1}{2}\left(1+\frac{v k}{\sqrt{(v k)^2+\Delta^2}}\right)]^{1/2} \alpha_k +
[\frac{1}{2}\left(1-\frac{v k}{\sqrt{(v k)^2+\Delta^2}}\right)]^{1/2} \beta_k
$$

$$
H_{int}=2 \pi  (k_c^2) \sum_p \rho_R(p) \rho_L(-p)
\tag{76}
$$

$$
\rho_R(p)=\sum_k \alpha_{k-p}^{\dagger} \alpha_k \text { and } \rho_L(p)=\sum_k \beta_{k-p}^{\dagger} \beta_k
$$

&emsp;&emsp;处理相互作用仍然到这里的四费米子部分，就是最通常的用新的一组基表示相互作用。在此略去许多步骤，最后对这个哈密顿量考察临界指数可以得到，无相互作用的时候：

$$
A(x)=\left\langle\psi^{\dagger}(x) \psi(0)\right\rangle=\left(\frac{\alpha}{x}\right)^{4 n^2 K^*}
\tag{77}
$$

&emsp;&emsp; 注意这里只对小的doping有效。在LL相中，$K^*=1 /\left(2 n^2\right)$，ICDW的类LL相中：$
K=\frac{1}{2 n^2}\left[1-\frac{2 u k_c}{\Delta} \sinh (2 \vartheta)\right]
$，中间一些常数不重要，总之有一个$k_c/\Delta$的修正项，来源还是最开始的变换系数。

&emsp;&emsp; 最后，来讨论此时准粒子激发的图像。在最后的费米表象下，称为空穴子(Holon)，在dope较小时，holon表现就如同自由费米子。在先前的玻色场下表象下，称为孤子(Soliton)。从玻色化的结论中，电子密度可以由玻色场给出：

$$
\rho(x)=\rho_0+\frac{\sqrt{2}}{\pi} \partial_x \phi_\rho+ \cos \left(2 k_F x+\sqrt{2}  \phi_\rho\right)
\tag{78}
$$

&emsp;&emsp; 从上文哈密顿量极小化的两项可以看出，参杂项希望玻色场线性变化，而公度Umklapp希望玻色场是一个常数。从$63$式可以看到，公度的CDW，玻色场期望是常数，对应于密度是一个确定的周期。现在加入参杂，许多参杂玻色场会连续，现在如果只有一个空穴子激发，即一个参杂。从holon的角度是$101010……$变为了$1010110101……$，CDW序反号，系统中出现筹壁。从soliton的角度原本是一个平台的玻色场变为了两个平台在$x_c >x$时不变，仍为$1010……$,而在$x>x_c$区域密度给出$\rho(x)=\rho_0+\frac{\sqrt{2}}{\pi} \partial_x (\phi_\rho+C) +\cos \left(2 k_F x+\sqrt{2}  \phi_\rho+C\right)$，第二项仍然是零，第三项常数的引入跳跃了一个周期，电子密度为$0101……$。标量场$
\lim _{x \rightarrow-\infty} \phi(x)=\phi_1, \quad \lim _{x \rightarrow+\infty} \phi(x)=\phi_2$，称中间产生了一个扭结(Kink)(静态拓扑缺陷)，定义为：

$$
Q=\frac{\sqrt{2}}{\pi} \int \partial_x \phi_\rho=N_{\mathrm{kink}}
\tag{79}
$$

&emsp;&emsp; 这说明一个激发holon，产生一个kink，玻色场向上跳一个平台，有限的参杂在无穷系统中产生无穷的holon,产生无穷的kink，这些kink连接着玻色场的平台，如上图所示。ICDW相中间有一系列的筹壁，非公度排列形成了非公度的CDW序，筹壁移动还几乎不消耗能量。对应玻色场中一系列可移动的跳跃点，对应于一系列的孤子激发。

## Deriving and RG Spinless Kitaev-Hubbard Hamiltonian
---

&emsp;&emsp;第一篇文章[8]，利用转移矩阵方法处理经典ANNNI模型得到一维量子模型，用JW变换到spinless fermion表象，两种等价的哈密顿量为,其中$\delta U=U+1$：

$$
H(h, U)= -\sum_{j=1}^{L-1}\left(c_j^{\dagger}-c_j\right)\left(c_{j+1}^{\dagger}+c_{j+1}\right) -h \sum_{j=1}^L\left(1-2 c_j^{\dagger} c_j\right) \\
+U \sum_{j=1}^{L-1}\left(1-2 c_j^{\dagger} c_j\right)\left(1-2 c_{j+1}^{\dagger} c_{j+1}\right)
\tag{80}
$$

$$
H(h, U)  =\sum_j\left(\sigma_j^x \sigma_{j+1}^x+\sigma_j^y \sigma_{j+1}^y\right)  +\sum_j\left[-\delta U \sigma_j^x \sigma_{j+1}^x-h(-1)^j \sigma_j^x\right]
\tag{81}
$$

&emsp;&emsp; 第一项就是XY模型，上文说了XY模型等价于无相互作用LL作用量，它的玻色化形式也应当相同。第二项：

$$
\begin{aligned}
\sigma_j^x \sigma_{j+1}^x &=\left(c_j^{\dagger}-c_j\right)\left(c_{j+1}^{\dagger}+c_{j+1}\right) \\
&= [e^{-ij\pi/2} \psi_{+}^{\dagger}(x)+e^{ij\pi/2} \psi_{-}^{\dagger}(x)-e^{ij\pi/2} \psi_{+}(x)-e^{-ij\pi/2}\psi_{-}(x)] \\
& \cdot [e^{-i(j+1)\pi/2} \psi_{+}^{\dagger}(x)+e^{i(j+1)\pi/2} \psi_{-}^{\dagger}(x)+e^{i(j+1)\pi/2} \psi_{+}(x)+e^{-i(j+1)\pi/2} \psi_{-}(x)] \\
& =(-1)^j \cdot ……+i\psi_{+}^{\dagger}(x)\psi_{-}^{\dagger}(x)-i\psi_{-}^{\dagger}(x)\psi_{-}^{\dagger}(x) \\
-\delta U \sum_j \sigma_j^x \sigma_{j+1}^x & = -\delta U\int dx i\psi_{+}^{\dagger}(x)\psi_{-}^{\dagger}(x)-i\psi_{-}^{\dagger}(x)\psi_{+}^{\dagger}(x) +h.c\\
& = i \delta U \frac{1}{2 \pi \alpha} \int dx  e^{-i \sqrt{\pi}[  \phi(x)-\theta(x)]} e^{-i \sqrt{\pi}[ - \phi(x)-\theta(x)]} + e^{i \sqrt{\pi}[  \phi(x)-\theta(x)]}e^{i \sqrt{\pi}[  -\phi(x)-\theta(x)]} \\
& = c_1 \delta U \int \cos (\sqrt{4 \pi} \theta) d x
\end{aligned}
\tag{82}
$$

&emsp;&emsp; 第三项，知道$(-1)^j \sigma_j^{-} \rightarrow e^{-i \sqrt{\pi} \theta(x)}$，则为：$\int \cos (\sqrt{\pi} \theta) d x$，总的哈密顿量为：

$$
H(h, 1+\delta U)=  H_0-c_1 \delta U \int \cos (\sqrt{4 \pi} \theta) d x  +c_2 h \int \cos (\sqrt{\pi} \theta) d x
\tag{83}
$$

&emsp;&emsp; 现在做一阶RG，幸运的是在一阶RG中，参数$\delta U$和参数$h$是分离的，因此只需要考察各自的标度关系就可以了，利用$(11)$式的结论，以及无质量标量场的标度维数为零，可以由下式看出：

$$
\begin{aligned}
Z &= \int D[\phi_s,\theta_s] D[\phi_f,\theta_f] e^{-S_{0s}}e^{-S_{0f}} \exp [-\int d^2 x c_1 \delta U \cos (\sqrt{4 \pi} \theta_s+\theta_f)   +c_2 h  \cos (\sqrt{\pi} \theta_s+\theta_f)] \\
& = \int D[\phi_s,\theta_s] e^{-S_{0s}} \exp -\int d^2 x c_1 \delta U \langle \cos \sqrt{4\pi} \theta \rangle(f) \cos \sqrt{4\pi} \theta_s + c_2 h  \langle \cos \sqrt{\pi} \theta \rangle(f) \cos (\sqrt{\pi} \theta_s) \\
& =  \int D[\phi_s,\theta_s] e^{-S_{0s}} \exp -\int d^2 x c_1 \delta U (1-\frac{4}{4}dt) \cos \sqrt{4\pi} \theta_s + c_2 h  (1-\frac{1}{4}dt) \cos (\sqrt{\pi} \theta_s) \\
& = \int D[\phi,\theta] e^{-S_{0}} \exp -\int [d^2 x(1+2dt)] c_1 \delta U (1-\frac{4}{4}dt) \cos \sqrt{4\pi} \theta + c_2 h  (1-\frac{1}{4}dt) \cos (\sqrt{\pi} \theta) \\
\end{aligned}
\tag{84}
$$

$$
\begin{aligned}
\delta U ' & = \delta U (1+dt) \\
h' & = h(1+\frac{7}{4} dt)
\end{aligned}
\tag{85}
$$

&emsp;&emsp;相变分界线为：

$$
h \sim(U+1)^{7 / 4}
\tag{86}
$$

&emsp;&emsp; 用DMRG，可以通过拟合纠缠熵看到相变，拓扑相为Gapped,相变时关闭能隙，系统gapless。可以用CC公式拟合central-charge，理论上整条线上为Ising相变,$c=1/2$,除了在$x$轴上，为XY相变$c=1$,在整个ICDW相中，拟合central-charge是接近1的值，其余central-charge 都是零。

<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/7.png" width = "190" height = "150" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/8.png" width = "190" height = "150" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/9.png" width = "190" height = "150" alt="图片名称" align=center />

</br>
</br>
</br>

&emsp;&emsp;第二篇文章[7]，分析了majorana的稳定性，将其归因于体态超导能隙的稳定性，在弱相互作用区间用RG分析超导能隙是如何被重整化的，对Luttinger Parameter $K$的分析有启发性。上一篇是$\mu$的作用，这一篇就是$U$对于超导能隙$\Delta$的作用，化学势为零，哈密顿量为：

$$
H=-\sum_{i=1}^{N-1}\left[t c_i^{\dagger} c_{i+1}+\Delta c_i^{\dagger} c_{i+1}^{\dagger}+\text { h.c. }\right]
$$

$$
H_{int}=“U” \sum_{i=1}^{N-1}\left(n_i-1 / 2\right)\left(n_{i+1}-1 / 2\right)
\tag{87}
$$

&emsp;&emsp;可以用上文相似的方法做玻色化，我这里就略去过程，在半填充下，得到玻色化哈密顿量相互作用一是提供luttinger parameter $K$,代表前向散射；二是提供Umklapp process $U$，代表周期势场：

$$
H=\int \frac{d r}{2}\left[v_F K\left(\partial_r \theta\right)^2+\frac{v_F}{K}\left(\partial_r \phi\right)^2+\frac{4 \Delta}{\pi a} \sin (2 \sqrt{\pi} \theta)\right.
\left.-\frac{U}{\pi^2 a} \cos \left(4 \sqrt{\pi} \phi\right)\right]
\tag{88}
$$

&emsp;&emsp; 做RG由于前向散射的引入，不得不做到二阶RG,仍然仿照上文去做，可以去猜结论。因为我们已经有了$U$项的结论，而且$U$项对应$\phi$和$\Delta$项对应$\theta$是独立的，所以可以直接变量代换，$\theta'=\theta\sqrt{K}$以及$\phi'=\phi/\sqrt{K}$看出两者的一致性，直接给出：

$$
\begin{aligned}
& \frac{d \ln K}{d l}=\frac{\delta^2}{2 K}-2 K y^2, \\
& \frac{d \delta}{d l}=\left(2-\frac{1}{K}\right) \delta, \quad \frac{d y}{d l}=(2-4 K) y
\end{aligned}
\tag{89}
$$

&emsp;&emsp; 其中$l=\ln \left[a / a_0\right]$
,$a_0$为晶格常数,$\delta(l)=4 a \Delta(l) / v_F$ 以及s $y(l)=U(l) a / \pi v_F$.分析相变，对于$U$的部分仍然是和之前一致，以$K=1/2$分界的$XY$相变。远离half-filling时，U的作用很弱，可以忽略$y$项，我们可以求解RG流,不同于上文，现在求解的是$\Delta$的作用：

$$
\begin{aligned}
\frac{d \delta}{d l}&=\left(2-\frac{1}{K}\right) \delta \\
\frac{dK}{d l}&=\frac{\delta^2}{2 }
\end{aligned}
\tag{90}
$$

$$
\Delta(l)=\Delta_0 \frac{\sqrt{8\left[K(l)-K_0\right]-4 \ln \left[K(l) / K_0\right]+\delta_0^2}}{\delta_0 \exp [l]}
\tag{91}
$$

&emsp;&emsp; 可以用数值积分的方法，给定一组初始值$(\Delta_0 ,K_0)$画出RG流:

<img src="https://54749110.github.io/assets/2025-12-14-bosonization-part-3/10.png" width = "300" height = "300" alt="图片名称" align=center />

&emsp;&emsp;  这里的几个参数$\Delta$代表了p波超导配对项，也代表了超导能隙。$K$代表了前向散射，$K>1$是吸引相互作用，$K<1$代表了排斥。总体上来看，RG流上对于$K_0>1/2$时，$K$都会流向强吸引区域，$\Delta$会减小到一个有限值，有限的超导能隙保护了majorana,这是一个拓扑超导相。对于$K_0<1/2$时，RG会流经$K=1/2$,而且流经$K=1/2$时对应GAP最小的时候，从公式$91$代入$K=1/2， \Delta=0$看出，如果$\delta_0>2 \sqrt{2 K_0-\ln \left(2 K_0 \right)}$，在此时GAP也不会闭合，也就是在$K_0<1/2,\delta_0>2 \sqrt{2 K_0-\ln \left(2 K_0 e\right)}$系统仍然保护majorana。在理想情况下，这两种RG流都会流经$K=1$这个Kiteav Chain的点，呈现明确的majorana。下一个区域对应$K_0<1 / 2 ， \delta_0<2 \sqrt{2 K_0-\ln \left(2 K_0 \right)}$，这个区域中最终都会流向$\Delta=0$ ，$K_0<K<1 / 2$.这是一个Luttinger液体相,系统gapless,关联函数power decay。

## [PDF Download](/assets/2025-12-14-bosonization-part-3/bosonization3.pdf)
