---
layout: post
title:  "Kitaev Chain Model"
description: "Introduction to the Kitaev Chain Model and its properties."
pin: true
math: true
mermaid: true
categories: [flat band superconductivity, kitaev chain]
tags: [Kitaev chain, topological superconductor, pfaffian]
author: Xuan
---

## REF
---
[1]A. Yu Kitaev, Unpaired Majorana fermions in quantum wires, Phys. Usp. 44, 131 (2001).
[2]Xingyao Guo, Xinglei Ma, Xuzhe Ying, K. T. Law.Majorana Zero Modes in the Lieb-Kitaev Model with Tunable Quantum Metric 	arXiv:2406.05789
[3]B. Andrei Bernevig, Topological Insulators and Topological Superconductors

## Introduction
---

&emsp;&emsp; 在平带超导中的Lieb-Kitaev模型中，由于开放边界条件发现了边界态的奇特模式。边界态marjorana波函数在靠近边界的地方按照BCS的衰减模式，在体内按照QML的衰减模式。具体可以在我的上一篇介绍中看到，从一个比大小的角度来看，这是因为QML:$\sqrt{2} a J / V$ $J>>V$ , BCS: $\xi_{\mathrm{BCS}}=-2 a / \ln \left(\frac{t-\Delta}{t+\Delta}\right)=2a/lnO(1)$，表示对于衰减函数$e^{-x/\xi}$来说，boundary附近对应了x=0,应当由小的BCS主导，内部由大的QML主导。在这篇文章中我将介绍为什么Kiatev模型对应非平带超导时，它的edge mode是BCS的衰减模式。在引入了平带时，BCS衰减失效，torma(2016)认为superfluid density可以描述一个多带超导，在平带的时候superfluid density中的QML项留存了下来，以描述平带超导。

## Kitaev Model
---

#### <font color=purple> BCS localization length </font>

&emsp;&emsp;考虑一个开放一维链,存在hopping和pairing：

$$
H_1=\sum_j\left(-w\left(a_j^{\dagger} a_{j+1}+a_{j+1}^{\dagger} a_j\right)-\mu\left(a_j^{\dagger} a_j-\frac{1}{2}\right)+\Delta a_j a_{j+1}+\Delta^* a_{j+1}^{\dagger} a_j^{\dagger}\right)
\tag{1}
$$

&emsp;&emsp;其中$\Delta=|\Delta| e^{i \theta}$，定义：

$$
c_{2 j-1}=e^{i \frac{\theta}{2}} a_j+e^{-i \frac{\theta}{2}} a_j^{\dagger}, \quad c_{2 j}=-i e^{i \frac{\theta}{2}} a_j+i e^{-i \frac{\theta}{2}} a_j^{\dagger}
\tag{2}
$$

&emsp;&emsp;容易发现，这些majorana算符满足：

$$
c_ic_j+c_jc_i=2 \delta_{i j}
$$

$$
{c_i}^{\dagger}=c_i
$$

&emsp;&emsp;Kitaev模型想要模拟的是存在一对majorana的p-wave超导体系，不妨假设体系存在于某个三维超导体表面上的一条量子线。我们需要这个哈密顿量至少满足一些条件来产生马约拉纳算符。第一是该哈密顿量破坏了$U(1)$对称性到$Z_2$对称性。因为马约拉纳算符$c=a^{\dagger}+a$在$a \rightarrow ae^{i\theta}$下规范变化。而$c$只能满足$c \rightarrow -c$的变化下，产生的majorana配对才不变，才能产生$c_ic_j$这样一对。那么超导体系满足$Z_2$而不满足$U(1)$。第二需要模拟的是p-wave超导，从宇称的角度来看，p-wave空间轨道角动量l=1奇宇称，则自旋应当三重态，可以不妨假设自旋同向，从而不把自旋写入哈密顿量中。把该变换代入原哈密顿量中得到：

$$
H_1=\frac{i}{2} \sum_i\left(-\mu c_{2 j-1} c_{2 j}+(w+|\Delta|) c_{2 j} c_{2 j+1}+(-w+|\Delta|) c_{2 j-1} c_{2 j+2}\right)
\tag{3}
$$

&emsp;&emsp;注意到majorana算符$c_{2 j-1}$和$c_{2 j}$属于同一个格点$j$，而算符$c_{2 j}$和$c_{2 j+1}$属于不同格点$j$与$j+1$。如果希望在开放边界一维链的两端空余了两个majorana，应当做的是把属于不同格点的majorana算符配对,如下图$b$。因此需要$|\Delta|=w>0, \mu=0$，$H_1=i w \sum_j c_{2 j} c_{2 j+1}$。

<img src="https://54749110.github.io/assets/2025-04-20-kitaev-chain-model/1.png" width = "700" height = "140" alt="图片名称" align=center />

&emsp;&emsp; 这个哈密顿量可以对角化，定义$a_j=\frac{1}{2}\left(c_{2 j}+i c_{2 j+1}\right), a_j^{\dagger}=\frac{1}{2}\left(c_{2 j}-i c_{2 j+1}\right)$, $H=2 w \sum_{j=1}^{L-1}\left({a_j}^{\dagger} a_j-\frac{1}{2}\right)$。算符$a$实际代表了"bond"。比如图b的$c_2,c_3$之间连线，总共有$L-1$个bond。而$c_1,c_{2L}$，不被配对，不存在于哈密顿量中，但仍然存在于希尔伯特空间中。求解哈密顿量给出波函数$2$至$2L-1$格点情况，对于波函数在$1,2L$格点存在两种情况,$H,c_1=0;H,c_{2L}=0$,在kitaev链的两端存在两个零能的激发，称为两个(majorana zero modes;MZM),对应两个E=0的能级  $d=\frac{1}{2}\left(c_1+i c_{2 L}\right), \quad d^{\dagger}=\frac{1}{2}\left(c_1-i c_{2 L}\right),$

<img src="https://54749110.github.io/assets/2025-04-20-kitaev-chain-model/3.png" width = "300" height = "250" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-04-20-kitaev-chain-model/4.png" width = "300" height = "250" alt="图片名称" align=center />

&emsp;&emsp;下面要求解majorana波函数，得到kitaev模型的bulk的性质是容易的，这就是一个PBC条件下的BDG哈密顿量，把PBC的公式(1)变换到K空间就能得到：

$$
H_{B d G}=\tau^z(-\mu-2\omega \cos k)-\Delta \tau^y \sin k
\tag{3}
$$

&emsp;&emsp; 其中有特征值$\epsilon(k)= \pm \sqrt{(2 w \cos k+\mu)^2+4|\Delta|^2 \sin ^2 k}$ 。在上一次读书会上的文章中，求解boundary性质是构造哈密顿量$H = H_{BDG}+H_1$,$H_1$就是一维链边界上的相互作用，从PBC中扣掉这部分构造OBC，但同时可以利用PBC的能带线性组合出OBC的零能边界态。过程中OBC需要不同对于K求和，由于实空间波函数是一系列bloch函数的组合：$\psi=\sum_k w_{n \boldsymbol{k}} g_{n, \alpha}(\boldsymbol{k}) e^{i \boldsymbol{k} r} .$,求和可以通过奇点求和完成。

&emsp;&emsp; 在这里用一种抓住majorana物理的近似去做。直接写出majorana波函数的待定系数形式，它肯定是指数衰减的：$(q<1)$

$$
\psi(x) \rightarrow\binom{u}{v} e^{-q x}
$$

&emsp;&emsp; 在边界点$x=0$处，边界外面就是无限高势垒，边界点处波函数肯定是零，这说明整体波函数是两支majorana波函数的相减：

$$
\psi=\binom{u}{v}\left(e^{-q_1 x}-e^{-q_2 x}\right)
$$

&emsp;&emsp;在这里并不会引入OBC的哈密顿量，而是对PBC的哈密顿量做bulk到boundary的演变，解$q$完全可以是bulk哈密顿量的解，只要让波函数呈现出衰减的形式就可以了。实际上，对比bulk波函数与boundary波函数：

$$
\psi=\sum_k w_{n \boldsymbol{k}} g_{n, \alpha}(\boldsymbol{k}) e^{i \boldsymbol{k} r} .
$$

$$
\psi=\binom{u}{v}\left(e^{-q_1 x}-e^{-q_2 x}\right)
$$

&emsp;&emsp;前者呈现波动的性质，后者呈现指数衰减的性质，无非是前者指数上是$ik$后者是实数$q$,就是同一个bulk波函数的两类解。把BDG哈密顿量的$ik$部分替换为$q$就可以得到解，实际上就是求解哈密顿量的指数$e^{Ax}$波动解无穷远处不为零，则$A$实部为零，否则解出$A$的实部。

$$
H \rightarrow \tau^z\left(-\mu/2-\omega\left(e^q+q^{-q}\right)\right)+i \frac{\Delta}{2} \tau_y\left(e^{-q}-e^q\right)
$$

$$
e^{-2 q}(\omega+\Delta)+2 e^{-q} \mu+(\omega-\Delta)=0
$$

$$
e^{-q}=\frac{-\mu/2 \pm \sqrt{\mu^2/4-\left(\omega^2-\Delta^2\right)}}{(\omega+\Delta)}
\tag{4}
$$

&emsp;&emsp;定义这两个解为$x_+,x_-$对比Lieb-Kiatev模型解出的BCS衰减长度$\xi_{\mathrm{BCS}}=-2 a / \ln \left(\frac{t-\Delta}{t+\Delta}\right)$。这里让$\mu=2\omega$两者一致，这就是平带情况($\epsilon$和t的尺度接近)。之前说两个majorana波函数可以表达为两个零能majorana算符的激发：$c_1|0\rangle$ 和 $c_{2L}|0\rangle$，现在这两个算符可以表示为：

$$
\begin{aligned}
c_1 & =\sum_j\left(\alpha_{+}^{\prime} x_{+}^j+\alpha_{-}^{\prime} x_{-}^j\right) c_{2 j-1} \\
c_{2L} & =\sum_j\left(\alpha_{+}^{\prime \prime} x_{+}^{-j}+\alpha_{-}^{\prime \prime} x_{-}^{-j}\right) c_{2 j}
\end{aligned}
$$

&emsp;&emsp;这样在实空间中去看 $\langle 0 d| n_i | d 0\rangle$的两支， 可以得到衰减的函数。$\alpha_{+}，\alpha_{-}$为比例系数。这种近似得到majorana波函数的方法也存在不严谨性，就是有限尺寸下两个MZM会相互作用，不能看作线性组合。

#### <font color=purple> Bulk - Boundary correspondance </font>

&emsp;&emsp;对角化Kitaev哈密顿量，看到在不同的极限下有a,b两种基态，其中称只有b是拓扑的：

<img src="https://54749110.github.io/assets/2025-04-20-kitaev-chain-model/1.png" width = "700" height = "140" alt="图片名称" align=center />

$$
\epsilon(k)= \pm \sqrt{(2 w \cos k+\mu)^2+4|\Delta|^2 \sin ^2 k}
$$

$$
H_1=\frac{i}{2} \sum_i\left(-\mu c_{2 j-1} c_{2 j}+(w+|\Delta|) c_{2 j} c_{2 j+1}+(-w+|\Delta|) c_{2 j-1} c_{2 j+2}\right)
\tag{3}
$$

&emsp;&emsp;(a) 发生在 $|\omega| = |\Delta| = 0 ,\mu<0$的情况下，而相位 (b) 对应 $|\Delta|=w>0, \mu=0$。 实际上改变$\omega,\mu$在$2|w|<|\mu|$都对应了(a)， 当$|\omega| = |\Delta| = 0 ,\mu<0$时，$\omega / \mu = 0$而$\epsilon(k) = \pm \mu$，另一面$|\Delta|=w>0, \mu=0$时$\epsilon{(k)}=\pm 2\sqrt{2} \omega$。bulk始终是gapped的，只有当$2|\omega|=|\mu|$时，bulk存在gapless。而boundary

$$
c_1 =\sum_j\left(\alpha_{+}^{\prime} x_{+}^j+\alpha_{-}^{\prime} x_{-}^j\right) c_{2 j-1}
$$

$$
x_{\pm}=\frac{-\mu/2 \pm \sqrt{\mu^2/4-\left(\omega^2-\Delta^2\right)}}{(\omega+\Delta)}
\tag{4}
$$

&emsp;&emsp; 当$2|\omega|<|\mu|$ 时，有$\left|x_{+}\right|>1,\left|x_{-}\right|<1 \text { or }\left|x_{+}\right|<1,\left|x_{-}\right|>1 \text {. }$，如果$x>1$这不是衰减的形式了。所以两个参数$\alpha_{+}，\alpha_{-}$必有一个为零。之前说过，为了让边界处波函数为零波函数必须要写作：

$$
\psi=\binom{u}{v}\left(e^{-q_1 x}-e^{-q_2 x}\right)
$$

&emsp;&emsp;也就是两个比例系数需要一正一负，现在一个是零，另一个无论如何不能满足边界条件，实际这个边界态就不存在，这个相(a)是普通的。另一面，当$
2 \omega>|\mu|, \Delta \neq 0$时，有$\left|x_{+}\right|,\left|x_{-}\right|<1 \text {. }$，边界方程写作：

$$
\alpha_{+}^{\prime}+\alpha_{-}^{\prime}=0, \quad \alpha_{+}^{\prime \prime} x_{+}^{-(L+1)}+\alpha_{-}^{\prime \prime} x_{-}^{-(L+1)}=0
$$

&emsp;&emsp;解是存在的，这解释了上面的图片，$E=0$的边界态只在一个范围内存在。称从$2|\omega|<|\mu|$ 到$2 \omega>|\mu|$ 发生了一次拓扑相变，表现为拓扑保护边界态的出现，以及体态能隙闭合与重新打开，即从常规超导态，经由正常金属态到拓扑超导态的过程。

#### <font color=purple> Pfaffian </font>

&emsp;&emsp;拓扑的一个关键特性是拓扑已经暗含在bulk的性质中，也就是说考虑PBC的哈密顿量足以判断拓扑。以$Z_2$为代表的Kitaev链中，拓扑的性质可以由链的宇称来刻画。实际上OBC的kitaev链的基态是一组奇宇称与偶宇称的简并：$d|0\rangle$和$d^{\dagger}|0\rangle$

$$
d=\frac{1}{2}\left(c_1+i c_{2 L}\right), \quad d^{\dagger}=\frac{1}{2}\left(c_1-i c_{2 L}\right)
$$

&emsp;&emsp;系统的总宇称算符定义为费米子数算符的指数：

$$
P=(-1)^N=\prod_j\left(1-2 a_j^{\dagger} a_j\right),
$$

&emsp;&emsp;在单site费米子情况下，就是没有粒子P=1有粒子P=0。任意多格点就是偶数个费米子P=1，奇数P=0。对于majorana体系做变量代换$c_{2 j-1}=a_j+a_j^{\dagger}, c_{2 j}=-i\left(a_j-a_j^{\dagger}\right)$，得到宇称算符：

$$
P=\prod_j\left(-i c_{2 j-1} c_{2 j}\right) .
$$

&emsp;&emsp;因此，可以借此判断两个简并的majorana态的宇称：

$$
\begin{aligned}
P(d,d^{\dagger})|0\rangle= & \prod_j\left(-i c_{2 j-1} c_{2 j}\right)  \frac{1}{2}\left(c_1 \pm i c_{2 L}\right) |0\rangle   \\
= & {(-1)}^{n_d} (d,d^{\dagger})|0\rangle  = \pm  (d,d^{\dagger})|0\rangle
\end{aligned}
$$

&emsp;&emsp;当引入PBC条件时，链的首尾耦合，此时两个Majorana零模通过$i \epsilon \gamma_1 \gamma_{2 L}$耦合，$\epsilon \sim e^{-L / \xi}$为耦合能。此时有效哈密顿量在低能下为$H_{\text {coupling }}=i \epsilon \gamma_{2L} \gamma_{1} =- \epsilon\left(2 d^{\dagger} d-1\right)$（注意majorana算符反对易性质，一定要按照一个顺序排列）. 对于$n_d=0$的偶宇称态，能量大于零；对于$n_d=1$的奇宇称态，能量小于零。说明PBC的引入破坏了边界态，让系统基态成为奇宇称，这也对应了p波超导奇宇称的性质。尤其当考虑一个2L长度的majorana哈密顿量，如下图所示，

<img src="https://54749110.github.io/assets/2025-04-20-kitaev-chain-model/1.png" width = "700" height = "140" alt="图片名称" align=center />

&emsp;&emsp;其中a时平凡相，a的majorana两两配对，具有偶宇称，加入PBC亦是偶宇称；对于b这个拓扑项，具有简并的宇称，加入PBC时majorana能级劈裂，基态具有奇宇称。定义拓扑不变量$M =  \pm 1$ ,$M=-1$对应拓扑相，可以以此来定义$M$: (Kitaev 原文献有证明该式子成立，利用把两条奇数链拼接起来的方法，在此略去)

$$
M = P( H_{bulk,2L} )
\tag{5}
$$

&emsp;&emsp;为了计算$M$的值，可以利用哈密顿量的矩阵形式。$Z_2$拓扑不变量可以用Pfaffian数来构造，具体构造和含义太复杂了，也不讨论严格的数学证明，这里仅讨论其在Kitaev 模型以及Lieb-Kiatev模型上的应用。简单来说，Pfaffian数就是，对于反对称矩阵A：

$$
Pf(A) = A矩阵的行列式再开根号
$$

&emsp;&emsp; 严格的定义为：(其中$S$为$2N$个元素的全排列)

$$
\operatorname{Pf} A=\frac{1}{2^N N!} \sum_{\tau \in S_{2 N}} \operatorname{sgn}(\tau) A_{\tau(1), \tau(2)} \cdots A_{\tau(2 N-1), \tau(2 N)} .
\tag{6}
$$

&emsp;&emsp;或者可以理解为：

$$
\operatorname{Pf} A =\sum_{全排列} (-1)^{i_1i_2……iN排列的逆序数} A_{1,i1}\cdot A_{2,i2}\cdot……A_{N,iN}
$$

&emsp;&emsp;A矩阵的行列式再开根号有两个，在矩阵表示中需要规定在选取一组基下面的Pfaffian数的正负号，比如kitaev模型的反对称矩阵，定义在基$(a,b)$下面，为：

$$
A=\left(\begin{array}{cc}
S & C \\
-C^{T} & S*
\end{array}\right), \quad \operatorname{Pf}(A)= r
$$

&emsp;&emsp;那么也可以定义在基$(b,a)$下面，此时两个矩阵行列式相同，为:

$$
A'=\left(\begin{array}{cc}
S & -C^{T} \\
C & S*
\end{array}\right), \quad \operatorname{Pf}(A)= - r
$$

&emsp;&emsp;交换基，可以通过变换$W$来完成，同时改变Pfaffian数。这也代表着如果$W$不保宇称的话（变换需要交换费米子顺序），变换$W$就会对Pfaffian数有影响，有一个数学结论：

$$
\operatorname{Pf}\left(W A W^T\right)=\operatorname{Pf}(A) \operatorname{det}(W) .
\tag{7}
$$

&emsp;&emsp; 从中看出Pfaffian数的符号和宇称有某种相关，不如将majorana算符做$W$描述的线性变换：

$$
\gamma_i \rightarrow \gamma_i^{\prime}=\sum_{j=1}^{2 N} W_{i j} \gamma_j,
$$

&emsp;&emsp;  宇称算符变为：

$$
P^{\prime}=\prod_{j=1}^N\left(i \sum_{k=1}^{2 N} W_{2 j-1, k} \gamma_k \sum_{l=1}^{2 N} W_{2 j, l} \gamma_l\right)
$$

&emsp;&emsp; 关键是关注到majorana算符的反对易性质：
$$
P^{\prime}=\prod_{j=1}^N\left(i \sum_{k<l}\left(W_{2 j-1, k} W_{2 j, l}-W_{2 j-1, l} W_{2 j, k}\right) \gamma_k \gamma_l+i \sum_k W_{2 j-1, k} W_{2 j, k}\right)
$$

&emsp;&emsp;  这几乎是行列式形式，可以不太严谨地认为：
$$
P^{\prime}=\operatorname{sgn}(\operatorname{det}(W)) \prod_{j=1}^N\left(i \gamma_{2 j-1} \gamma_{2 j}\right)=\operatorname{sgn}(\operatorname{det}(W)) P .
$$

&emsp;&emsp; 因此：

$$
P(H)=\operatorname{sgn} \operatorname{det} W
$$

&emsp;&emsp; 我们认为A是哈密顿量对应的矩阵，变换$W$变换到反对称对角矩阵。 kitaev模型的2N个本征值具有粒子空穴对称性，可以把矩阵写作：($\epsilon_i > 0$)

$$
W A W^T=\left(\begin{array}{ccccc}
0 & \epsilon_1 & & & \\
-\epsilon_1 & 0 & & & \\
& & \ddots & & \\
& & & 0 & \epsilon_N \\
& & & -\epsilon_N & 0
\end{array}\right)
$$

&emsp;&emsp; 这个矩阵的Pfaffian数有数学结论，为$\epsilon_1 \cdot \epsilon_2…… \epsilon_N$,故 $sgn Pf(W A W^T) =1$ , 因此 ：

$$
P(H)=\operatorname{sgn} \operatorname{det} W = \operatorname{sgn} \frac{Pf(W A W^T)}{Pf(A)} = \operatorname{sgn} Pf(A)
\tag{8}
$$

&emsp;&emsp; 这就说明了，拓扑的判断可以通过实空间哈密顿量的Pfaffian数来完成，当然先要选择一组基固定正负号，可以看到从拓扑到非拓扑的区间有一个正负号的变化。现在求k空间的形式。傅里叶变换写作:

$$
A(k)=F A_{i j} F^{\dagger}  \\
F_{k i}=\frac{1}{\sqrt{N}} e^{-i k \cdot r_i}
$$

&emsp;&emsp;利用傅里叶变换酉矩阵的性质，$|det(F)|=1$,得到：

$$
Pf(A) =pf (F \prod_{k} A_{k} F^{\dagger}) = pf(\prod_{k} A(k)) \cdot \operatorname{det}(F)= pf(\prod_{k}A(k))
$$

&emsp;&emsp; k还需要做选择，首先k是离散的，$k=2 \pi \frac{z}{L}(\bmod 2 \pi), \quad z=0, \ldots, N-1$.其次对于满足粒子空穴对称性的傅里叶变换生成的两个动量$k,k'$只有$k = -k'$成立，这就是说$\tilde{A}^{\dagger}(k)=-\tilde{A}(k)=\tilde{A}^T(-k)$。因此$pf \tilde{A}^{\dagger}(k)=pf \tilde{A}^T(-k)$，因此正负一对k Pfaffian数,乘起来符号肯定是正的，除非这个q没有它对应的负值。$L$是奇数，q只能为零。我们需要的majorana链$L$是偶数，q可以是$0$或者$\pi$。 综上所述，拓扑不变量在可以借由K空间的PBC哈密顿量计算：

$$
\mathcal{M}(H_{2L})=\operatorname{sgn}(\operatorname{Pf} \tilde{H}(k=0)) \operatorname{sgn}(\operatorname{Pf} \tilde{H}(k=\pi))
\tag{9}
$$

&emsp;&emsp; 其中$\tilde{H}$因为希望傅里叶变换后的哈密顿量矩阵仍然有反对称的形式，还需要做变换。

&emsp;&emsp;下面可以利用这个结论计算Lieb-Kitaev模型的拓扑不变量：

$$
H_0=H_{\mathrm{BdG}}=\sum_k \hat{\Psi}^{\dagger}(k) \mathcal{H}(k) \hat{\Psi}(k)=\sum_k \hat{\Psi}^{\dagger}(k)\left(\begin{array}{cc}
h(k) & -i 2 \Delta \sin (k a) \mathbb{I}_3 \\
i 2 \Delta \sin (k a) \mathbb{I}_3 & -h^*(-k)
\end{array}\right) \hat{\Psi}(k),
$$

$$
h(k)=(-\mu-2 t \cos (k a)) \mathbb{I}_3+\left(\begin{array}{ccc}
-V & a_k & 0 \\
a_k^* & 0 & a_k^* \\
0 & a_k & V
\end{array}\right) \quad \text { and } \quad a_k=-J(1+e^{i k a}).
$$

&emsp;&emsp;转换到非平带表象，仍然用非平带QML表示平带：

$$
X(k)=\left(\begin{array}{cccccc}
u_{-}(k) & 0 & u_0(k) & 0 & u_{+}(k) & 0 \\
0 & u_{-}^\cdot(-k) & 0 & u_0^\cdot(-k) & 0 & u_{+}^\cdot(-k)
\end{array}\right)
$$

$$
h(k) u_n(k)=\epsilon_n(k) u_n(k) .
$$

&emsp;&emsp;反对称化的幺正矩阵为：

$$
U^a=\frac{1}{\sqrt{2}}\left(\begin{array}{cccccc}
1 & 1 & & & & \\
i & -i & & & & \\
& & 1 & 1 & & \\
& & i & -i & & \\
& & & & 1 & 1 \\
& & & & i & -i
\end{array}\right)
$$

$$
\tilde{H}(k)=U^a X(k) \mathcal{H}(k) X^{\dagger}(k) U^{a \dagger},
$$

&emsp;&emsp;得到的形式类似：所以只要做$\epsilon_1 \cdot \epsilon_2…… \epsilon_N$就可以了。

$$
W A W^T=\left(\begin{array}{ccccc}
0 & \epsilon_1 & & & \\
-\epsilon_1 & 0 & & & \\
& & \ddots & & \\
& & & 0 & \epsilon_N \\
& & & -\epsilon_N & 0
\end{array}\right)
$$

$$
\begin{aligned}
\operatorname{Pf}[i \tilde{H}(k=0)] & =\left(-\mu-2 t-\sqrt{V^2+8 J^2}\right)(-\mu-2 t)\left(-\mu-2 t+\sqrt{V^2+8 J^2}\right) \\
\operatorname{Pf}\left[i \tilde{H}\left(k=\frac{\pi}{a}\right)\right] & =(-\mu+2 t-V)(-\mu+2 t)(-\mu+2 t+V).
\end{aligned}
$$

&emsp;&emsp;观察这两个数相乘后的符号，如果想要为-1，即拓扑相，需要参数在以下区间之一：

$$
\begin{aligned}
-\sqrt{V^2+8 J^2}-2 t & <\mu<-V+2 t \\
-2 t & <\mu<2 t \\
V+2 t & <\mu<\sqrt{V^2+8 J^2}-2 t
\end{aligned}
$$

&emsp;&emsp;在文中的参数设置中，$V>>t$因此实际观察到的区间只是$-2 t  <\mu<2 t$ 这也是和kiatev模型所预言的相同的结论。

## [PDF Download](/assets/2025-04-20-kitaev-chain-model/superfluiddensity.pdf)
