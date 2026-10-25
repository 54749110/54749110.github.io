---
layout: post
title:  "Theory of Flat Band Superconductivity"
description: "Flat band systems can also have superconductivity , whose superfluidity weight comes from quantum geometry of the multi-orbital systems.
Here is introduction of the theory developed orginally by Päivi Törmä. Physically , interaction in flat band systems unlock the potential and gives effective kinetic energy to Cooper pairs. The potential of Wannier overlaps is now provided by quantum metric."
pin: true
math: true
mermaid: true
categories: [flat band superconductivity, superfludity weight]
tags: [superconductivity, flat band]
author: Xuan
---


## REF
---
[1]Sebastiano Peotta , Päivi Törmä. Superfluidity in topologically nontrivial flat bands, Nature Communications 6, 8944 (2015)  
[2]Sebastiano Peotta, Kukka-Emilia Huhtinen, Päivi Törmä.Quantum geometry in superfluidity and superconductivity,	arXiv:2308.08248  
[3]Murad Tovmasyan, Sebastiano Peotta, Päivi Törmä, and Sebastian D. Huber, Effective theory and emergent SU⁡(2) symmetry in the flat bands of attractive Hubbard models,Phys. Rev. B 94, 245149(2016)  
[4]P. Törmä, L. Liang, and S. Peotta, Quantum metric and effective mass of a two-body bound state in a flat band,Phys. Rev. B 98, 220511(2018)  
[5]Päivi Törmä, Sebastiano Peotta , Bogdan A. Bernevig ,Superconductivity, superfluidity and quantum geometry in twisted multilayer systems,Nature Reviews Physics volume 4, pages528–542 (2022)   
[6]Aleksi Julku, Sebastiano Peotta, Tuomas I. Vanhala, Dong-Hee Kim, and Päivi Törmä,Geometric Origin of Superfluidity in the Lieb-Lattice Flat Band,Phys. Rev. Lett. 117, 045303(2016)

 


##  Quantum Metric and Superfluidity Weight
---


#### <font color=purple>Definition of Quantum Metric</font>
&emsp;&emsp;在拓扑能带理论中，量子几何张量 (Quantum Geometric Tensor, QGT) 存在两种常见的定义形式。  
&emsp;&emsp;**定义 1（基于投影算符，见 arXiv:2308.08248 公式 1）:**

$$
\mathcal{B}_{ij} = 2\text{Tr}[P \partial_i P \partial_j P]
\tag{1}
$$

&emsp;&emsp;其中 $P = |n\rangle\langle n|$ 是态的投影算符，为了书写简洁省略了动量 $k$ 标号。  
&emsp;&emsp;**定义 2（基于波函数，常规文献定义）:**

$$\mathcal{Q}_{ij} = \langle \partial_i n | (\mathbb{I} - |n\rangle\langle n|) | \partial_j n \rangle$$

证明等价性 ： 
$$
P (\partial_i P) = |n\rangle\langle n| \Big( |\partial_i n\rangle\langle n| + |n\rangle\langle \partial_i n| \Big)
$$

$$
P (\partial_i P) = |n\rangle\langle n|\partial_i n\rangle\langle n| + |n\rangle\langle \partial_i n|
$$
   
$$
P (\partial_i P) (\partial_j P) = \Big( |n\rangle\langle n|\partial_i n\rangle\langle n| + |n\rangle\langle \partial_i n| \Big) \Big( |\partial_j n\rangle\langle n| + |n\rangle\langle \partial_j n| \Big)
$$

$$
\begin{aligned}
P (\partial_i P) (\partial_j P) &= |n\rangle\langle n|\partial_i n\rangle\langle n|\partial_j n\rangle\langle n| + |n\rangle\langle n|\partial_i n\rangle\langle n|n\rangle\langle \partial_j n| \\\\
&+ |n\rangle\langle \partial_i n|\partial_j n\rangle\langle n| + |n\rangle\langle \partial_i n|n\rangle\langle \partial_j n|
\end{aligned}
$$

$$
\text{Tr}[P \partial_i P \partial_j P] = \langle n|\partial_i n\rangle \langle n|\partial_j n\rangle + \langle n|\partial_i n\rangle \langle \partial_j n|n\rangle + \langle \partial_i n|\partial_j n\rangle + \langle \partial_i n|n\rangle \langle \partial_j n|n\rangle
$$

&emsp;&emsp;由于 $\langle n|n\rangle = 1$，有 $\langle \partial_i n|n\rangle + \langle n|\partial_i n\rangle = 0$，即：

$$
\begin{aligned}
\text{Tr}[P \partial_i P \partial_j P] &= \langle n|\partial_i n\rangle \langle n|\partial_j n\rangle - \langle n|\partial_i n\rangle \langle n|\partial_j n\rangle + \langle \partial_i n|\partial_j n\rangle + (-\langle n|\partial_i n\rangle)(-\langle n|\partial_j n\rangle) \\\\
&= \langle \partial_i n|\partial_j n\rangle + \langle n|\partial_i n\rangle \langle n|\partial_j n\rangle
\end{aligned}
$$

$$
\text{Tr}[P \partial_i P \partial_j P] = \langle \partial_i n|\partial_j n\rangle - \langle \partial_i n|n\rangle \langle n|\partial_j n\rangle
$$
   
$$
\text{Tr}[P \partial_i P \partial_j P] = \langle \partial_i n | \Big( \mathbb{I} - |n\rangle\langle n| \Big) | \partial_j n \rangle = \mathcal{Q}_{ij}
$$

&emsp;&emsp; 性质：1、 $B_{i j}^* =B_{j i}$ 半正定；2、guage invariant ,其实部为 quantum metric :

$$
\operatorname{Re}\left(B_{i j}\right)=\frac{1}{2}\left(B_{i j}+B_{i j}^*\right)=\frac{1}{2}\left(B_{i j}+B_{j i}\right)
$$


$$
\operatorname{Re}\left(\mathcal{B}_{i j}\right)=\operatorname{Tr}\left[P \partial_i P \partial_j P\right]+\operatorname{Tr}\left[P \partial_j P \partial_i P\right]
$$


&emsp;&emsp;利用：$P^2=P$ 即：$\partial_i P=\partial_i\left(P^2\right)=\left(\partial_i P\right) P+P\left(\partial_i P\right)$ ：

$$
\operatorname{Tr}\left[\partial_i P \partial_j P\right]=\operatorname{Tr}\left[\left(\partial_i P\right) P \partial_j P\right]+\operatorname{Tr}\left[P \partial_i P \partial_j P\right]
$$

$$
\operatorname{Tr}\left[\left(\partial_i P\right) P \partial_j P\right]=\operatorname{Tr}\left[P \partial_j P \partial_i P\right]
$$

&emsp;&emsp;因此：

$$
\operatorname{Re}\left(\mathcal{B}_{i j}\right)=\operatorname{Tr}\left[\partial_i P \partial_j P\right] 
\tag{2}
$$

#### <font color=purple>Definition of Superfluidity Weight</font>

&emsp;&emsp;伦敦方程定义了超流权重,最早是假定一个磁场方程来描述迈斯纳零磁场效应，在麦克斯韦方程框架下面，得到在超导体表面可以存在着无耗散电流：

$$
j=-D_s A
\tag{3}
$$

&emsp;&emsp; 从BCS理论和线性相应理论角度理解，(Bruus, 6.22,6.24,6.25) 电流密度是对磁矢势响应(Kubo-Formula)：

$$
\langle\mathbf{J}(\mathbf{r})\rangle(t)=e \int d \mathbf{r}^{\prime} \int d t^{\prime} \sum_\beta C_{\mathbf{J}(\mathbf{r}) J^\beta\left(\mathbf{r}^{\prime}\right)}^R\left(t-t^{\prime}\right) A^\beta\left(\mathbf{r}^{\prime}, t^{\prime}\right)
$$

&emsp;&emsp; 响应函数有两项，一项产生反向电流为抗磁项，一项为顺磁项，定义为流流关联函数。

$$
\sigma^{\alpha \beta}\left(\mathbf{r}, \mathbf{r}^{\prime}, \omega\right)=\frac{i e^2}{\omega} \Pi_{\alpha \beta}^R\left(\mathbf{r}, \mathbf{r}^{\prime}, \omega\right)+\frac{i e^2 n(\mathbf{r})}{\omega m} \delta\left(\mathbf{r}-\mathbf{r}^{\prime}\right) \delta_{\alpha \beta},
$$

$$
\Pi_{\alpha \beta}^R\left(\mathbf{r}, \mathbf{r}^{\prime}, t-t^{\prime}\right)=C_{J_0^\alpha(\mathbf{r}) J_0^\beta\left(\mathbf{r}^{\prime}\right)}^R\left(t-t^{\prime}\right)=-i \theta\left(t-t^{\prime}\right)\left\langle\left[\hat{J}_0^\alpha(\mathbf{r}, t), \hat{J}_0^\beta\left(\mathbf{r}^{\prime}, t^{\prime}\right)\right]\right\rangle_0
$$

$$
\hat{\mathbf{j}}^P(\mathbf{q})=-\frac{e}{m} \sum_{\mathbf{k}, \sigma}\left(\mathbf{k}+\frac{\mathbf{q}}{2}\right) c_{\mathbf{k}+\mathbf{q}, \sigma}^{\dagger} c_{\mathbf{k}, \sigma}
$$

&emsp;&emsp; 普通导体中，当 $q \to 0$ 时，费米海的激发会导致顺磁响应$\chi_{\mu\nu}(q \to 0) \to -\frac{ne^2}{m}\delta_{\mu\nu}$(略去计算)，抵消了抗磁项，即常规金属无法自发存在电流。

&emsp;&emsp;  而在超导体中再做一遍:(Bruus,18.67)

$$
\Pi_{\alpha \beta}(0,0)=-\frac{2}{3 m} \frac{1}{\mathcal{V}} \sum_{\mathbf{k} \sigma} \xi_{\mathbf{k}}\left(-\frac{\partial n_{\mathrm{F}}}{\partial E}\right) \delta_{\alpha \beta},
$$

&emsp;&emsp; 数学过程不说了。这个公式的物理是：在正常金属中，单个电子是自由的，它们可以通过极其微小的能量代价（在费米面附近跃迁，对应项$c_{\mathbf{k}+\mathbf{q}, \sigma}^{\dagger} c_{\mathbf{k}, \sigma}$）来调整自己的波函数，从而产生顺磁电流抵消外部磁场，系统缺乏刚性。而在 BCS 超导态中，锁相形成cooper对，外加电磁场必须打碎大量高度关联的 Cooper 对才会存在顺磁电流，这需要付出至少 $2\Delta$ 的能量代价。尤其在零温，上面式子，费米分布函数是阶跃的，为零。体现为零温系统中没有热激发的准粒子，磁场必须跨越$2\Delta$激发，在弱的磁场下无法实现，即顺磁电流为零。系统只存在抗磁电流，即伦敦方程超流密度的值为：

$$
D_{\mathrm{s}}=e^2 n_{\mathrm{s}} / m_{\mathrm{eff}}
\tag{4}
$$

&emsp;&emsp;  对于这个系数需要指出的关键物理是：有效质量不单单取决于带的色散，还取决于相互作用。并且在多带体系中虽然单粒子的本征能量不变，相邻 Wannier 函数之间存在几何重叠，相邻带间配对的两体波函数受到quantum metric影响，从而影响其输运性质。


## Attractive Interaction in multi-flat-band system inducing Cooper pair with quantum metric 
---

<img src="https://54749110.github.io/assets/2026-04-10-flat-band-superconductivity/1.jpg" width = "400" height = "200" alt="图片名称" align=center />

$$
H_{kin} = \sum_j \left( it c_{j+1, 2}^\dagger c_{j, 2} - it c_{j+1, 1}^\dagger c_{j, 1} + t c_{j+1, 2}^\dagger c_{j, 1} + t c_{j+1, 1}^\dagger c_{j, 2} \right) + h.c
\tag{5}
$$ 

$$
H(k) = \begin{pmatrix} 2t \sin(ka) & 2t \cos(ka) \\\\ 2t \cos(ka) & -2t \sin(ka) \end{pmatrix}
$$

$$
H_{kin} = \sum_k \left( 2t d_{k,+}^\dagger d_{k,+} - 2t d_{k,-}^\dagger d_{k,-} \right)
$$

$$
d_{k,-} = \frac{e^{-ika/2}}{\sqrt{2}} \left[ \left( \sin\frac{ka}{2} - \cos\frac{ka}{2} \right) c_{k,1} + \left( \cos\frac{ka}{2} + \sin\frac{ka}{2} \right) c_{k,2} \right]
$$

$$
d_{k,+} = \frac{e^{-ika/2}}{\sqrt{2}} \left[ \left( \cos\frac{ka}{2} + \sin\frac{ka}{2} \right) c_{k,1} + \left( \cos\frac{ka}{2} - \sin\frac{ka}{2} \right) c_{k,2} \right]
$$

$$
H_{\mathrm{int}}=U \sum_{\boldsymbol{i} \alpha} n_{\boldsymbol{i} \alpha \uparrow} n_{\boldsymbol{i} \alpha \downarrow}
$$

&emsp;&emsp;孤立平带极限指的是平带与其它带之间的带隙远大于Hubbard作用$U$. 定义动量空间平带算符$d$，下面做低能投影，到$-2t$的唯一平带上，原本一个完备的(格点，轨道)(动量，能带)变换对应算符$c_{i\alpha \sigma},d_{kn\sigma}$，现在变为了现在不完备的变换$\bar{c}\_{i\alpha \sigma},d_{k\sigma}(low-band)$,其中$g$就是上边线性变换系数(Bloch)：


$$c_{i\alpha\sigma} = \frac{1}{\sqrt{N_c}} \sum_{k} \sum_{n} e^{ik \cdot R_i} g_{kn}(\alpha) d_{kn\sigma}$$

$$\bar{c}\_{i\alpha\sigma} = \frac{1}{\sqrt{N_c}} \sum_{k} e^{ik \cdot R_i} g_{k}(\alpha) d_{k\sigma}$$

&emsp;&emsp; Wannier 函数的定义为：

$$W_\alpha(i-l) = \frac{1}{\sqrt{N_c}} \sum_{k} e^{ik \cdot (R_i - R_l)} g_k(\alpha)$$

&emsp;&emsp; 不完备的线性变换又可以写作：

$$
\bar{c}\_{i\alpha\sigma} = \sum_{l} W_{\alpha\sigma}(i-l) d_{l\sigma} \quad 
\tag{6}
$$

&emsp;&emsp; 原本完备的基，是反对易关系，现在的$\bar{c}$，满足：

$$
\begin{aligned}
\\{\overline{c}\_{i\alpha\sigma}, \overline{c}\_{j\beta\sigma}^\dagger\\} & = \frac{1}{N_c} \sum_{k, k'} e^{ik \cdot R_i} e^{-ik' \cdot R_j} g_{k}(\alpha) g_{k'}^{\star}(\beta) \\{d_{k\sigma}, d_{k'\sigma}^\dagger\\} \\\\
&  = \frac{1}{N_c} \sum_{k} e^{ik \cdot (R_i - R_j)} g_{k}(\alpha) g_{k}^*(\beta)
\end{aligned}
$$

&emsp;&emsp; 而$(low band)$投影算符为：$\hat{P}(k) = |g_k\rangle \langle g_k|$，即$P_{\alpha\beta}(k) = \langle \alpha | g_k \rangle \langle g_k | \beta \rangle = g_k(\alpha) g_k^{\star}(\beta)$

&emsp;&emsp; 得到了：

$$\\{\overline{c}\_{i\alpha\sigma}, \overline{c}\_{j\beta\sigma}^\dagger\\} = P_{\alpha,\beta}(i-j)
\tag{7}$$

&emsp;&emsp; 并且有$(n \rightarrow low band)$：


$$\sum_{n} \sum_{l} W_{n\alpha}(i-l) W_{n\beta}^*(j-l) = \delta_{ij}\delta_{\alpha\beta}$$

$$\sum_{l} W_{\alpha}(i-l) W_{\beta}^*(j-l) = P_{\alpha,\beta}(i-j)\tag{8}$$


&emsp;&emsp; 另一种等价性定义式为：

$$ \bar{c}\_{i\alpha} = \sum_{j\beta} P_{\alpha,\beta}(i-j) c_{j\beta}$$

$$= \sum_{j\beta} \left( \sum_m W_{0\alpha}(i-m) W_{0\beta}^{\star}(j-m) \right) \left( \sum_{n, l} W_{n\beta}(j-l) d_{nl} \right)$$

$$ = \sum_{m, n, l} W_{0\alpha}(i-m) d_{nl} \left[ \sum_{j\beta} W_{0\beta}^{\star}(j-m) W_{n\beta}(j-l) \right] =   \sum_{m, n, l} W_{0\alpha}(i-m) d_{nl}\delta_{0,n} \delta_{m,l}$$

&emsp;&emsp; 这正是公式$6$证明完毕。

&emsp;&emsp; 下面来处理相互作用部分，利用Schrieffer-Wolff变换。其思路是：寻找一个反幺正算符$S$，幺正变换原哈密顿量$H'=e^{-S}He^{S}$，在按照$U$展开变换后的哈密顿量时，相互作用一阶部分在无相互作用基底下变得对角，并且可以表示出二阶等部分。对角的部分因此直接分为高能和平带的部分(或者在其他模型中按照占据数分类投影)，在投影算符作用下平带部分就可以直接写为$P^{\dagger}H_{int}P$。

$$\tilde{\mathcal{H}} = \hat{\mathcal{H}}\_{kin} + \hat{\mathcal{H}}\_{int} + [\hat{S}, \hat{\mathcal{H}}\_{kin}] + [\hat{S}, \hat{\mathcal{H}}\_{int}] + \frac{1}{2}[\hat{S}, [\hat{S}, \hat{\mathcal{H}}\_{kin}]] + \dots$$

&emsp;&emsp;  定义$O(X)$为$X$算符的带间非对角部分$\mathcal{O}(\hat{X}) = \hat{\mathcal{P}}\hat{X}\hat{\mathcal{Q}} + \hat{\mathcal{Q}}\hat{X}\hat{\mathcal{P}}$，$D(X)$为对角部分$\mathcal{D}(\hat{X}) = \hat{\mathcal{P}}\hat{X}\hat{\mathcal{P}} + \hat{\mathcal{Q}}\hat{X}\hat{\mathcal{Q}}$，要求的是：

$$\mathcal{O}(\hat{\mathcal{H}}\_{int}) + [\hat{S}, \hat{\mathcal{H}}\_{kin}] = 0$$

&emsp;&emsp; 这个方程确定$S$的形式为$L(H_{int})$，其中$i,j$为$H_{kin}$的本征态：

$$\mathcal{L}(\hat{X}) = \sum_{i,j} \frac{|i\rangle\langle i| \mathcal{O}(\hat{X}) |j\rangle\langle j|}{E_i - E_j}$$

&emsp;&emsp;零阶：由于 $\hat{\mathcal{H}}\_{kin}$ 对角，$\hat{\mathcal{P}}\hat{\mathcal{H}}\_{kin}\hat{\mathcal{P}} = \hat{\mathcal{H}}\_{kin}\hat{\mathcal{P}}^2 = \hat{\mathcal{H}}_{kin}\hat{\mathcal{P}}$，  
&emsp;&emsp;一阶：$\hat{\mathcal{P}}\mathcal{D}(\hat{\mathcal{H}}\_{int})\hat{\mathcal{P}} = \hat{\mathcal{P}}\hat{\mathcal{H}}\_{int}\hat{\mathcal{P}}$。  
&emsp;&emsp;二阶：$\hat{\mathcal{P}}\left( \frac{1}{2}\mathcal{D}([\mathcal{L}(\hat{\mathcal{H}}\_{int}), \mathcal{O}(\hat{\mathcal{H}}\_{int})]) \right)\hat{\mathcal{P}} = \frac{1}{2}\hat{\mathcal{P}}[\mathcal{L}(\hat{\mathcal{H}}\_{int}), \mathcal{O}(\hat{\mathcal{H}}\_{int})]\hat{\mathcal{P}}$。

&emsp;&emsp;因此，有： 

$$\mathcal{H}\_{eff} = \hat{\mathcal{H}}\_{kin}\hat{\mathcal{P}} + \hat{\mathcal{P}}\hat{\mathcal{H}}\_{int}\hat{\mathcal{P}} + \frac{1}{2}\hat{\mathcal{P}}[\mathcal{L}(\hat{\mathcal{H}}\_{int}), \mathcal{O}(\hat{\mathcal{H}}\_{int})]\hat{\mathcal{P}}\tag{9}$$

&emsp;&emsp; 下面就先保留到一阶讨论，在一般的超导体中，库珀对的产生算符 $\hat{b}\_0^\dagger = \sum_k g_k \hat{d}\_{k\uparrow}^\dagger \hat{d}\_{-k\downarrow}^\dagger$ 依赖于波矢相关的波函数 $g_k = v_k/u_k$ 。但在平带极限（Flat Band Limit）下，系统的动能完全淬灭，能带色散极其平坦。这导致一个深刻的物理推论：BCS 相干因子 $u_k = u$ 和 $v_k = v$ 不再依赖于准动量 $k$ 。因此，零准动量的库珀对产生算符可以被极大地简化，并在实空间和动量空间中展现出高度的对称性。说明沿着chain方向wannier函数还是局域的，带间wannier函数才可以hopping，写出这样的局域BCS的bogoliubov态：

$$\hat{b}\_0^\dagger = \sum\_k \hat{d}\_{k\uparrow}^\dagger \hat{d}\_{-k\downarrow}^\dagger = \sum\_j \hat{d}\_{j\uparrow}^\dagger \hat{d}_{j\downarrow}^\dagger$$

$$|\Omega\rangle = u^{N_c} \exp\left(\frac{v}{u}\hat{b}\_0^\dagger\right)|\emptyset\rangle = \prod\_j (u + v\hat{d}\_{j\uparrow}^\dagger \hat{d}\_{j\downarrow}^\dagger)|\emptyset\rangle = \prod\_k (u + v\hat{d}\_{k\uparrow}^\dagger \hat{d}\_{-k\downarrow}^\dagger)|\emptyset\rangle$$

&emsp;&emsp;定义平带投影后的自旋算符 $\bar{S}\_{i\alpha}^z = (\bar{n}_{i\alpha\uparrow} - \bar{n}\_{i\alpha\downarrow})/2$ 。容易验证，库珀对产生算符 $\hat{b}\_0^\dagger$ 与该 $z$ 方向自旋算符是对易的：

$$[\hat{b}\_0^\dagger, \bar{S}\_{i\alpha}^z] = 0$$

&emsp;&emsp;这个对易关系的物理意义是，产生一个自旋单态（Spin-singlet）的库珀对，并不会改变系统局域的自旋极化。由此可以推导出 $\bar{S}\_{i\alpha}^{z} |\Omega\rangle = 0$ 。这使得 BCS 波函数 $|\Omega\rangle$ 必然是下面这个半正定算符 $\bar{\mathcal{H}}\_{int}'$ 的零本征态（即最低能量态）：

$$\bar{\mathcal{H}}\_{int}' = \frac{U}{2}\sum_{i\alpha}(\bar{n}\_{i\alpha\uparrow} - \bar{n}\_{i\alpha\downarrow})^2$$

&emsp;&emsp;接下来，我们把上式展开：$(\bar{n}\_{i\alpha\uparrow} - \bar{n}\_{i\alpha\downarrow})^2 = \bar{n}\_{i\alpha\uparrow}^2 + \bar{n}\_{i\alpha\downarrow}^2 - 2\bar{n}\_{i\alpha\uparrow}\bar{n}\_{i\alpha\downarrow}$。

$$\bar{\mathcal{H}}\_{int}' = \frac{U}{2}\sum\_{i\alpha} P\_{\alpha\alpha}(0)(\bar{n}\_{i\alpha\uparrow} + \bar{n}\_{i\alpha\downarrow}) - U\sum\_{i\alpha} \bar{n}\_{i\alpha\uparrow}\bar{n}\_{i\alpha\downarrow}$$

$$\bar{\mathcal{H}}\_{int}' = \frac{n_\phi U}{2}\bar{N} - U\sum_{i\alpha}\bar{n}\_{i\alpha\uparrow}\bar{n}\_{i\alpha\downarrow}$$

&emsp;&emsp; <font color=purple>需要特别关注的是</font>，投影前的占据数满足完备关系$\hat{n}\_{i\alpha}^2 = \hat{n}\_{i\alpha}$,现在$\bar{c}\_{i\alpha\sigma} = \sum\_j W\_\alpha(i-j)\hat{d}\_{j\sigma}$，因此有：$\bar{n}\_{i\alpha\sigma}^2 = P\_{\alpha\alpha}(0)\bar{n}\_{i\alpha\sigma}$。$\bar{N}=\sum\_{\mathbf{j} \sigma} \hat{d}\_{\mathbf{j} \sigma}^{\dagger} \hat{d}\_{\mathbf{j} \sigma}$ 处于平带上的电子，Wannier 函数往往不是绝对定域在某一个单一晶格点 $\alpha$ 上的，而是会“弥散”到相邻的轨道上。因此，它在原点 $(i=j, \alpha=\beta)$ 的投影权重 $P_{\alpha\alpha}(0)$ 表示了dope的程度，在这里，$n_\phi=1/2$


$$
\begin{aligned}
n_\phi & =P_{\alpha \alpha}(\mathbf{0})=P_{\beta \beta}(\mathbf{0}) \\\\
& =\sum_{\mathbf{i}}\left|W_\alpha(\mathbf{i})\right|^2=\frac{V_{\mathrm{c}}}{(2 \pi)^d} \int_{\text {B.Z. }} d^d \mathbf{k}\left|g_{\mathbf{k}}(\alpha)\right|^2
\end{aligned}
\tag{10}
$$

&emsp;&emsp; 最后，发现这个构造的相互作用哈密顿量和投影平带相互作用哈密顿量就相差一个常数，这说明BCS态确实是该模型的基态(固定总粒子数)，并且基态能量为($\mu$为平带filling)：

$$
\frac{E_{\mathrm{BCS}}}{N_{\mathrm{c}}}=\left(-4t -n_\phi U\right) \nu
\tag{11}
$$

&emsp;&emsp; 这个结论给出一阶SW方法的exact基态,需要条件为：动能项给出平带，$U<<Gap$。

$$\Delta_k = -\sum_{k'} V_{kk'} \langle \hat{c}\_{-k'\downarrow} \hat{c}\_{k'\uparrow} \rangle$$

$$\Delta_k = -\sum_{k'} V_{kk'} \frac{\Delta_{k'}}{2\sqrt{\xi_{k'}^2 + |\Delta_{k'}|^2}}$$

$$1 = \sum_{k'} |U| \frac{1}{2\sqrt{0 + \Delta^2}} = |U| \sum_{k'} \frac{1}{2\Delta}$$

&emsp;&emsp;可以发现，基态能量和$U$成正比。其实这个基态能量就是超导Gap的大小(Cooper pair束缚能量)传统BCS中存在着费米面，$\Delta = 2\hbar\omega_D \exp\left( -\frac{1}{|U| \rho(\varepsilon_F)} \right)$。回顾能隙的自洽方程，取能量为零常数，态密度为常数可以得到此解。

&emsp;&emsp;这给出的一个启发是对于p波超导的spinless fermion表象下平均场有这样的对应关系：

$$\hat{\mathcal{H}}\_{int} = -V \sum\_{\langle i,j \rangle} \hat{n}\_i \hat{n}\_j$$

$$\hat{\mathcal{H}}\_{pair}^{1D} = -\Delta \sum\_i \left( \hat{c}\_i^\dagger \hat{c}\_{i+1}^\dagger + h.c. \right)$$

&emsp;&emsp;排斥的$V$会给出CDW，吸引的$V$在满足上述限制下会给出p波超导吗？平带中没有动能，有一点点吸引它们迅速聚成一团，会不会超过了配对的吸引？我期望出现majorana，没有$\Delta$，只有$V$。一些非平带的文献显示，远离半满的二维t-V模型能诱导p波超导。


#### <font color=purple>Generalized two body problem</font>

&emsp;&emsp;要在平带中形成超导这种对称性破缺的宏观有序态，必须打破这种巨大的能量简并,在平带中仅仅“存在束缚态”是不够的——如果这些束缚对的能量依然是简并的，那么基本的超导凝聚就不太可能发生。而如果这些两体束缚对能够展现出能量色散并具有有限的有效质量，这就标志着简并被打破，预示着在多体层面上超流/超导序的形成。可以用quantum metric描述这一现象。

&emsp;&emsp;我们考虑一个多带系统中的两体相互作用问题。系统的总哈密顿量可以写为：

$$H = H_0 + \lambda V$$

&emsp;&emsp;其中，$H_0$
是无相互作用的哈密顿量，包含了粒子的动能和周期性晶格势 。$\lambda V(1,2)$ 是两个粒子之间的相互作用势 。对于无相互作用系统，其多体本征方程为：

$$H_0|\varphi_m\rangle = E_m|\varphi_m\rangle$$

&emsp;&emsp;假设系统存在一个平带。在无相互作用时，我们关注处于该平带中的某个态 $|\varphi_0\rangle$，对应的能量为 $E_0$ 。当引入相互作用后，假设粒子间形成两体束缚态 $|\psi\rangle$。该状态必须满足薛定谔方程，再假设<font color=purple>孤立平带极限</font>即只分析一条平带。公式$12$就表示了比如只有单一能量平带的孤立平带极限下，加相互作用不会改变波函数，波函数的改变只来自与相同能量的若干条孤立平带间的交互。

$$(H_0 + \lambda V)|\psi\rangle = E|\psi\rangle$$

$$(E - H_0)|\psi\rangle = \lambda V|\psi\rangle$$

$$\langle\varphi_0|(E - H_0)|\psi\rangle = \langle\varphi_0|\lambda V|\psi\rangle$$

$$(E - E_0)\langle\varphi_m|\psi\rangle = \langle\varphi_m|\lambda V|\psi\rangle$$

$$|\psi\rangle = |\varphi_0\rangle\langle\varphi_0|\psi\rangle + \sum_{m \neq 0} |\varphi_m\rangle\langle\varphi_m|\psi\rangle$$

$$|\psi(1,2)\rangle = |\varphi\_0(1,2)\rangle + \sum_{n': iso-flat} \frac{|\varphi_{n'}\rangle}{E - E_{0}}\langle\varphi_{n'}|\lambda V|\psi(1,2)\rangle\tag{12}$$

$$
E-E_0=\left\langle\varphi_0\right| \lambda V|\psi(1,2)\rangle 
\tag{13}
$$


&emsp;&emsp;从两体波函数开始考虑，对于无相互作用部分，注意如果形成BCS类型波函数有反对称的自旋，和对称的空间两体波函数，因此它就是单体波函数的张量积，用单体bloch函数$e^{i \mathbf{k} \cdot \mathbf{x}} m_{\mathbf{k}}(\mathbf{x})$可以表示，定义$\mathrm{q}=\mathrm{k}_1+\mathrm{k}_2, \mathrm{k}=\left(\mathrm{k}_1-\mathrm{k}_2\right) / 2, \mathbf{R}=\left(\mathrm{x}_1+\mathrm{x}_2\right) / 2, \mathrm{r}=\mathrm{x}_1-\mathrm{x}_2$，


$$
\begin{aligned}
\varphi_0\left(\mathbf{x}\_1, \mathbf{x}\_2\right)=\left\langle\mathbf{x}\_1, \mathbf{x}\_2 \mid \varphi_0(1,2)\right\rangle & =e^{i \mathbf{k}\_1 \cdot \mathbf{x}\_1} m_{\mathbf{k}\_1}\left(\mathbf{x}\_1\right) e^{i \mathbf{k}\_2 \cdot \mathbf{x}\_2} m_{\mathbf{k}\_2}\left(\mathbf{x}\_2\right) \\\\
& =e^{i \mathbf{q} \cdot \mathbf{R}} e^{i \mathbf{k} \cdot \mathbf{r}} m_{\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1\right) m_{-\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_\2\right) .
\end{aligned}
$$

&emsp;&emsp;注意这里本来要写上自旋的下标，即$x_1$自旋上，$x_2$自旋下满足$BCS$的配对，但是在时间反演对称的条件下可以一致写为$m_{\mathbf{k}}^{\uparrow}=m_{-\mathbf{k}}^{\downarrow *} \equiv m_{\mathbf{k}}$

 
$$\varphi_0(x_1,x_2) = e^{iq\cdot R}e^{ik\cdot r}m_{k+\frac{q}{2}}(x_1)m_{k-\frac{q}{2}}^*(x_2) \quad $$

&emsp;&emsp;由于相互作用势 $V$ 具有与晶格相同的平移周期性，双体的总质心动量 $q = k_1 + k_2$ 是严格守恒的,即写为两体相互作用波函数的$q$和无相互作用的$q$一致 。因此，我们可以从总波函数中提取出质心运动的平面波相位，这里相互作用不能分开写只能一起写，然后将它们代回公式$12$中得到：

$$\psi(x_1,x_2) = e^{iq\cdot R}\psi_{q,k}(x_1,x_2)$$

$$e^{iq\cdot R}\psi_{q,k}(x_1,x_2) = e^{iq\cdot R}e^{ik\cdot r}m_{k+\frac{q}{2}}(x_1)m_{k-\frac{q}{2}}^*(x_2)$$

$$+ \frac{\lambda}{E-E_0}\sum_{t\neq k} e^{iq\cdot R}e^{it\cdot r}m_{t+\frac{q}{2}}(x_1)m_{t-\frac{q}{2}}^{\star}(x_2) \langle e^{iq\cdot R} e^{it\cdot r}m_{t+\frac{q}{2}}m_{t-\frac{q}{2}}^{\star} | V | e^{iq\cdot R}\psi_{q,k} \rangle $$
  
$$\psi_{q,k}(x_1,x_2) = e^{ik\cdot r}m_{k+\frac{q}{2}}(x_1)m_{k-\frac{q}{2}}^*(x_2)$$
  
$$+ \frac{\lambda}{E-E_0}\sum_{t\neq k} e^{it\cdot r}m_{t+\frac{q}{2}}(x_1)m_{t-\frac{q}{2}}^{\star}(x_2)\langle e^{it\cdot r}m_{t+\frac{q}{2}}m_{t-\frac{q}{2}}^{\star} | V | \psi_{q,k} \rangle $$

&emsp;&emsp;相应的束缚能 $E-E_0$ 为 ：

$$E-E_0 = \lambda \langle e^{iq\cdot R}e^{ik\cdot r}m_{k+\frac{q}{2}}(x_1)m_{k-\frac{q}{2}}^{\star}(x_2) | V | e^{iq\cdot R}\psi_{q,k}(x_1,x_2) \rangle $$

$$E-E_0 = \lambda \langle e^{ik\cdot r}m_{k+\frac{q}{2}}(x_1)m_{k-\frac{q}{2}}^{\star}(x_2) | V | \psi_{q,k}(x_1,x_2) \rangle $$
  
  
  
&emsp;&emsp;现在我们的目的是这两个求解积分方程得到$E-E_0$，只需要$m$,而$\psi$需要被消去。假设双体势可以写为两个局域函数的乘积，<font color=purple>可分离势假设</font> ：

  $$V = \langle x_1, x_2 | \hat{V}_{separable} | x_1', x_2' \rangle = u(x_1, x_2) u(x_1', x_2')  $$
  
$$
E-E_0 = \int d \mathbf{x}\_1 d \mathbf{x}\_2 d \mathbf{x}\_1^{\prime} d \mathbf{x}\_2^{\prime} e^{-i \mathbf{k} \cdot \mathbf{r}} m_{\mathbf{k}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) u\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) \psi\_{\mathbf{q}, \mathbf{k}}\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) .
$$

&emsp;&emsp; 定义：
 
$$
\tilde{u}\left(\mathbf{k}\_{\mathbf{1}}, \mathbf{k}\_{\mathbf{2}}\right)=\int d \mathbf{x}\_1 d \mathbf{x}\_2 e^{-i \mathbf{k} \cdot \mathbf{r}} m_{\mathbf{k}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) u\left(\mathbf{x}\_1, \mathbf{x}_2\right) .
$$

&emsp;&emsp; 得到：

$$
\begin{aligned}
E-E_0 & =\lambda \int d \mathbf{x}\_1 d \mathbf{x}\_2 d \mathbf{x}\_1^{\prime} d \mathbf{x}\_2^{\prime} e^{-i \mathbf{k} \cdot \mathbf{r}} m\_{\mathbf{k}+\frac{\mathbf{9}}{2}}^{\star}\left(\mathbf{x}\_1\right) m\_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) u\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) \psi\_{\mathbf{q}, \mathbf{k}}\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) \\\\
& =\lambda \tilde{u}(\mathbf{q}, \mathbf{k}) \int d \mathbf{x}\_1 d \mathbf{x}\_2 u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \psi\_{\mathbf{q}, \mathbf{k}}\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \\\\
& =\lambda \tilde{u}(\mathbf{q}, \mathbf{k})\left(\int d \mathbf{x}\_1 d \mathbf{x}\_2 u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) e^{i \mathbf{k} \cdot \mathbf{r}} m\_{\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1\right) m\_{\mathbf{k}-\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_2\right)\right. \\\\
& +\frac{\lambda}{E-E_0} \int d \mathbf{x}\_1 d \mathbf{x}\_2 u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \sum\_{\mathbf{t} \neq \mathbf{k}} e^{i \mathbf{t} \cdot \mathbf{r}} m\_{\mathbf{t}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1\right) m\_{\mathbf{t}-\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_2\right) \\\\
& \left.\times \int d \mathbf{x}\_1^{\prime} d \mathbf{x}\_2^{\prime} d \mathbf{x}\_{\mathbf{1}}^{\prime \prime} d \mathbf{x}\_2^{\prime \prime} e^{-i \mathbf{t} \cdot \mathbf{r}^{\prime}} m\_{\mathbf{t}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1^{\prime}\right) m\_{\mathbf{t}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2^{\prime}\right) u\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) u\left(\mathbf{x}\_1^{\prime \prime}, \mathbf{x}\_2^{\prime \prime}\right) \psi\_{\mathbf{q}, \mathbf{k}}\left(\mathbf{x}\_1^{\prime \prime}, \mathbf{x}\_2^{\prime \prime}\right)\right) \\\\
& =\lambda|\tilde{u}(\mathbf{q}, \mathbf{k})|^2+\frac{\lambda^2}{E-E_0} \sum\_{\mathbf{t} \neq \mathbf{k}}|\tilde{u}(\mathbf{q}, \mathbf{t})|^2 \tilde{u}(\mathbf{q}, \mathbf{k}) \int d \mathbf{x}\_1 d \mathbf{x}\_2 u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \psi\_{\mathbf{q}, \mathbf{k}}\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \\\\
& =\lambda|\tilde{u}(\mathbf{q}, \mathbf{k})|^2+\frac{\lambda^2}{E-E_0} \sum_{\mathbf{t} \neq \mathbf{k}}|\tilde{u}(\mathbf{q}, \mathbf{t})|^2 \frac{E-E_0}{\lambda} .
\end{aligned}
$$

$$
E-E_0=\lambda \sum_{\mathbf{k}}|\tilde{u}(\mathbf{q}, \mathbf{k})|^2 
\tag{14}
$$

$$
\begin{aligned}
& |\tilde{u}(\mathbf{q}, \mathbf{k})|^2= \\\\
& \int d \mathbf{x}\_1 d \mathbf{x}\_2 d \mathbf{x}\_1^{\prime} d \mathbf{x}\_2^{\prime} e^{-i \mathbf{k} \cdot\left(\mathbf{r}-\mathbf{r}^{\prime}\right)} m_{\mathbf{k}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) m_{\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1^{\prime}\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_2^{\prime}\right) u\left(\mathbf{x}\_1, \mathbf{x}\_2\right) u\left(\mathbf{x}\_1^{\prime}, \mathbf{x}\_2^{\prime}\right) \\\\
& \longrightarrow \int d \mathbf{x}\_1 d \mathbf{x}\_2 d \mathbf{x}\_1^{\prime} d \mathbf{x}\_2^{\prime} e^{-i \mathbf{k} \cdot\left(\mathbf{r}-\mathbf{r}^{\prime}\right)} m_{\mathbf{k}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) m_{\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1^{\prime}\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_2^{\prime}\right) V\left(\mathbf{x}\_1, \mathbf{x}\_2\right) \delta\left(\mathbf{x}\_1-\mathbf{x}\_1^{\prime}\right) \delta\left(\mathbf{x}\_2-\mathbf{x}\_2^{\prime}\right) \\\\
& =\int d \mathbf{x}\_1 d \mathbf{x}\_2 m_{\mathbf{k}+\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}^{\star}\left(\mathbf{x}\_2\right) m_{\mathbf{k}+\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_1\right) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}\left(\mathbf{x}\_2\right) V\left(\mathbf{x}\_1, \mathbf{x}\_2\right)
\end{aligned}
$$

$$
E-E_0=\lambda \sum_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})\left|m_{\mathbf{k}+\frac{\mathbf{q}}{2}}(\mathbf{x}) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}(\mathbf{x})\right|^2 
\tag{15}
$$

&emsp;&emsp;这就代表了两体的束缚能。它有几个有趣的平带性质。第一，相互作用为$\lambda V$, 束缚能正比于相互作用强度$\lambda$。传统BCS中束缚能即超导能隙，$E_b \propto \exp(-\frac{1}{N(0)\lambda})$，而现在为线性关系，满足上一篇文献的结论。第二，平带保证动量空间中所有的$k$的电子都参与了，即表现为对全部$k$的求和。第三，如果是一条孤立的色散带，$14$的自洽方程就会回归原来的$BCS$形式：

$$1 = \lambda \sum_{\mathbf{k}} \frac{|\tilde{u}(\mathbf{k})|^2}{E - 2\epsilon_{\mathbf{k}}}$$

$$1 = \lambda N(0) \int_{0}^{\omega_D} \frac{1}{E - 2\xi} d\xi$$

$$|E_b| = 2\omega_D \exp\left( - \frac{2}{|\lambda| N(0)} \right)$$


&emsp;&emsp;定义投影算符的对角元$P_{\mathbf{k}}(\mathbf{x})$，taylor展开$m$函数：

$$
P_{\mathbf{k}}(\mathbf{x})=m_{\mathbf{k}}^{\star}(\mathbf{x}) m_{\mathbf{k}}(\mathbf{x})=\left\langle\mathbf{x} \mid m_{\mathbf{k}}\right\rangle\left\langle m_{\mathbf{k}} \mid \mathbf{x}\right\rangle
$$

$$
m_{\mathbf{k} \pm \frac{\mathbf{q}}{2}}=m_{\mathbf{k}} \pm \frac{q_i}{2} \partial_i m_{\mathbf{k}}+\frac{1}{8} q_i q_j \partial_i \partial_j m_{\mathbf{k}}+\mathcal{O}\left(q^3\right)
$$

$$
\begin{aligned}
E-E_0 & =\lambda \sum_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})\left[\left|m_{\mathbf{k}}(\mathbf{x})\right|^4\right. \\\\
& \left.+\frac{q_i q_j}{4}\left(\left|m_{\mathbf{k}}(\mathbf{x})\right|^2 m_{\mathbf{k}}(\mathbf{x}) \partial_i \partial_j m_{\mathbf{k}}^{\star}(\mathbf{x})-\left(m_{\mathbf{k}}(\mathbf{x})\right)^2 \partial_i m_{\mathbf{k}}^{\star}(\mathbf{x}) \partial_j m_{\mathbf{k}}^{\star}(\mathbf{x})+h . c .\right)\right] \\\\
& =\lambda \sum_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})\left[P_{\mathbf{k}}(\mathbf{x})^2-\frac{q_i q_j}{4}\left(\partial_i P_{\mathbf{k}}(\mathbf{x}) \partial_j P_{\mathbf{k}}(\mathbf{x})-P_{\mathbf{k}}(\mathbf{x}) \partial_i \partial_j P_{\mathbf{k}}(\mathbf{x})\right)\right],
\end{aligned}
$$

&emsp;&emsp; 定义有效质量：

$$
\left[\frac{1}{m^{\star}}\right]\_{i j}=-\frac{\lambda}{2} \sum\_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})\left(\partial_i P_{\mathbf{k}}(\mathbf{x}) \partial_j P_{\mathbf{k}}(\mathbf{x})-P_{\mathbf{k}}(\mathbf{x}) \partial_i \partial_j P_{\mathbf{k}}(\mathbf{x})\right)
$$

&emsp;&emsp; 利用投影算符的周期性，第一项为零：

$$\int_{\text{BZ}} P_k \frac{\partial^2 P_k}{\partial k_i \partial k_j} d^d k = \underbrace{\left[ P_k \frac{\partial P_k}{\partial k_j} \right]\_{\partial \text{BZ}}}\_{\text{边界项}} - \int_{\text{BZ}} \frac{\partial P_k}{\partial k_i} \frac{\partial P_k}{\partial k_j} d^d k$$


$$
\left[\frac{1}{m^{\star}}\right]\_{i j}=-\lambda \sum\_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x}) \partial_i P_{\mathbf{k}}(\mathbf{x}) \partial_j P_{\mathbf{k}}(\mathbf{x}) 
\tag{16}
$$

&emsp;&emsp;进一步分析这个公式$15$的物理含义，关注其中的$m$代表了无相互作用平带的bloch函数的周期部分(原子轨道)。现在考察单条孤立平带的情况，无论电子的动量 $k$ 是多少，$m$都和$k$无关，因为在单一平带上它们是等价的。无论库珀对的质心动量 $q$ 是多少，$m_{k+q/2}$ 和 $m_{k-q/2}$ 在空间上总是完美重合的。束缚能 $E_b$ 对cooper pair总动量没有依赖。$\left[ \frac{1}{m^*} \right]_{ij} = \frac{\partial^2 E(q)}{\partial q_i \partial q_j}$ 因此有效质量无穷。

&emsp;&emsp; 超导现象的宏观表现是存在无耗散的超导电流。根据经典的伦敦方程，超流体的相位刚度（Superfluid weight $D_s$）正比于库珀对的密度 $n$ 除以库珀对的有效质量 $m^{\star}$：$D_s \propto \frac{n}{m^{\star}}$如果 $m^{\star} \rightarrow \infty$，那么超流权重 $D_s = 0$。这意味着系统无法承载任何宏观的超导电流。必须要非无穷的有效质量。需要考察多个轨道（孤立平带有不同轨道的成分）的情况。

$$
E-E_0=\lambda \sum_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})\left|m_{\mathbf{k}+\frac{\mathbf{q}}{2}}(\mathbf{x}) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}(\mathbf{x})\right|^2 
\tag{15}
$$

&emsp;&emsp; 关键是注意到$q$,会使得$m_{\mathbf{k}+\frac{\mathbf{q}}{2}}(\mathbf{x}) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}(\mathbf{x})$交叠岔开，当质心动量$q$为零时，此时交叠是最大的，对应于最大的结合能$E_b(0)=\lambda \sum_{\mathbf{k}} \int d \mathbf{x} V(\mathbf{x})P_{\mathbf{k}}(\mathbf{x})^2$。当我们将库珀对作为一个整体，赋予它一个微小的质心动量 $q$ 时，配对电子的动量被强行推移到了 $k + q/2$ 和 $-k + q/2$（等价于考察 $k - q/2$ 态的共轭）。

&emsp;&emsp; 先前在单轨道平带上，实际公式$15$对$k$求和就体现为 $m_{\mathbf{k}+\frac{\mathbf{q}}{2}}(\mathbf{x}) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}(\mathbf{x}) \rightarrow m(x)m(x)$ ,在多轨道零质心动量$q$下，就是$m_{\mathbf{k}}(\mathbf{x}) m_{\mathbf{k}}(\mathbf{x}) \rightarrow m_\alpha(x)m_\alpha(x)$，多轨道有质心动量$q$就是$m_{\mathbf{k}+\frac{\mathbf{q}}{2}}(\mathbf{x}) m_{\mathbf{k}-\frac{\mathbf{q}}{2}}(\mathbf{x}) \rightarrow m_\alpha(x)m_\beta(x)$ $A^2+B^2 > 2AB$，交叠积分肯定会因为质心动量的非零而减小。这个减小在单轨道上是看不到的，就是多轨道使波函数形变的结果。这给出$E_b(q)$，那么实际上就有：

$$E_b(q) = E_b(0) - \frac{1}{2} q_i q_j \left( \lambda \sum_k \int dx V(x) \partial_i P_k(x) \partial_j P_k(x) \right)$$

&emsp;&emsp;我们知道如果一个复合粒子要获得整体的宏观动量 $q$，它必须付出能量代价，这个能量代价的二次型系数就是有效质量的倒数，从中我们可以定义$16$式的有效质量，它不是无穷。这表现就像一个经典的动能项$q^2/2m$，只是这个”动能“并不能让电子在晶格之间跃迁，而是损失结合能，让相互作用驱动cooper pair发生跃迁。从波函数的角度，就是$k$ 空间发生了扭曲，导致实空间瓦尼尔函数 $W_R(r)$ 会长出非零的尾巴，延伸并覆盖到相邻的晶胞 $R'$ 中。从超流密度角度，就是这个有限的有效质量，使得试图扭曲相邻两个库珀对的相位差 $\nabla \theta$，系统会产生一个恢复力（超流刚度），从而相位锁定。<font color=purple>综上所述</font>，多轨道平带的波函数扭曲效果削减了结合能，从而带来了有限的cooper pair有效质量，这使得平带超导得以产生。

&emsp;&emsp;下面从$16$式出发得到quantum metric。需要在紧束缚模型里考虑，假设$V(x)=1$，即相互作用与轨道无关，离散模型取$\int dx$ 变为了对所有元胞（数量为 $N_c$）及其内部轨道坐标的离散求和 ，代入定义$P_{\mathbf{k}}(\mathbf{x})=m_{\mathbf{k}}^{\star}(\mathbf{x}) m_{\mathbf{k}}(\mathbf{x})=\left\langle\mathbf{x} \mid m_{\mathbf{k}}\right\rangle\left\langle m_{\mathbf{k}} \mid \mathbf{x}\right\rangle$则有：

$$[\frac{1}{m^{\star}}]\_{ij} = -\frac{\lambda}{N_c}\sum_k \sum_{x \in unit.cell} \langle x|\partial_i P_k|x\rangle \langle x|\partial_j P_k|x\rangle$$

&emsp;&emsp;引入均匀配对条件（Uniform pairing condition），其数学定义为电子在各个轨道上的概率在整个布里渊区内平均分布，即电子在每一个轨道 $\alpha$ 上驻留的总概率期望是绝对相等的，正好等于均分份额 $1/N_{orb}$，在这个近似下有$\langle\mathbf{x}| \partial_i P_{\mathbf{k}}\left|\mathbf{x}^{\prime}\right\rangle \sim\langle\mathbf{x}| \partial_i P_{\mathbf{k}}|\mathbf{x}\rangle$:

$$\frac{1}{N_c} \sum_k |m_{k,\alpha}|^2 = \frac{1}{N_{orb}}$$

$$
\left[\frac{1}{m^{\star}}\right]\_{i j}=\frac{-\lambda}{N_c N_{\text {orb }}} \sum_{\mathbf{k}} \operatorname{Tr}\left[\partial_i P_{\mathbf{k}} \partial_j P_{\mathbf{k}}\right]=\frac{-\lambda}{N_c N_{\text {orb }}} \sum_{\mathbf{k}} g_{i j}(\mathbf{k})
\tag{17}
$$



## Superfluid Weight with respect to Flat-Band Superconductivity
---

&emsp;&emsp;对超导理论而言，如果说超导能隙 $\Delta$ 反映了体系形成（Cooper pairs）的“配对强度”，那么超流权重 $D_s$ 则直接决定了这些库珀对是否能够形成宏观量子相干态并发生无耗散的输运 。超流权重最直接的物理意义体现在超导体对电磁场的响应上。根据描述超导唯象理论的伦敦方程，在特定的伦敦规范下，超导电流密度 $\mathbf{j}$ 与电磁矢势 $\mathbf{A}$ 成正比 ：$\mathbf{j} = -D_s \mathbf{A}$ 。如果我们在超导体中引入一个空间上的相位扭曲（即相位梯度 $\nabla \phi$），体系的自由能会因此增加。这种由于相位空间涨落带来的自由能可以由超流权重描述，反映凝聚体相位刚度。此外，超流权重可以描述超导转变温度，比如根据 BKT 理论，二维超导的临界温度 $T_{BKT}$ 与临界点处的超流权重存在一个普适的关系。如果已知各向同性体系的 $D_s(T)$，我们便能通过解以下自洽方程严格预言二维超导体系的转变温度 ：$T_{BKT} = \frac{\pi \hbar^2}{8 e^2} [D_s(T_{BKT})]_{xx}$。

&emsp;&emsp;这一章的内容就会阐明如何在平带体系中描述超流权重，看到它的平凡和几何部分的贡献。此时，知道了超流权重，我们就直接测度了能带的量子度规（Quantum Metric, $\mathcal{M}\_{ij}$）的积分 ：$[D_s]\_{ij} \propto |U| f(1-f) \mathcal{M}\_{ij}^{\text{min}}$。由于由于QGT的半正定性质，超流权重甚至给出了体系拓扑不变量（陈数 $\mathcal{C}$）的严格下界 ：$D_s \geq |\mathcal{C}|$.


#### <font color=purple>Deriving superfluid weight in multi-orbital system</font>

&emsp;&emsp;一个超流体（库珀对凝聚体），这个系统在空间中整体流动，它必然携带着宏观动能。当它从静止状态（$\mathbf{v}_s = 0$）到一个具有均匀超流速度 $\mathbf{v}_s$ 的状态时，系统的总自由能 $F$ 必然发生改变。在 $\mathbf{v}_s$ 很小的情况下，我们可以对自由能进行泰勒展开，$F(\mathbf{v}_s) = F(0) + \frac{1}{2} (\text{系数}) \mathbf{v}_s^2 + \mathcal{O}(\mathbf{v}_s^4)$。我们因此定义$\frac{d^2 F}{d\mathbf{q}^2}$为超流权重。

&emsp;&emsp; 现在就以多带Hubbard模型的平均场为例先求解自由能$F=\Omega+\mu N$。先得到超流权重一个多带有限温，非平带的普遍形式，再考虑零温，平带的情况。其中：

$$\Omega= -\frac{1}{\beta}\ln\mathcal{Z}\_{\Omega}=-\frac{1}{\beta}\ln \text{Tr}[e^{-\beta\hat{\mathcal{H}}\_{m.f.}}]$$

&emsp;&emsp;处理Hubbard哈密顿量，先做平均场，再取Nambu表象。注意为了在基态引发一个超流，库珀对的质量动量$q$非零。哈密顿量需要一个外（矢势）$V_i$，为了对齐连续哈密顿量，hopping项有一个相位，其它的参数都依赖于$q$ , $i.e.$ $\Delta(q)$ $K(q)$ $\mu(q)$ ,$K_{i,j}^{\sigma}(q)=K_{i,j}e^{iq\cdot(r_{i}-r_{j})}$，

&emsp;&emsp;介绍复合能带极限，如果 $|u_{n,k}\rangle$ 作为 $k$ 的函数在全区是严格解析且全局连续的，那么傅里叶变换后的 Wannier 函数 $w_n(r)$ 在实空间中将以指数形式快速衰减（$w_n(r) \sim e^{-\alpha |r|}$），如果 $|u_{n,k}\rangle$ 在动量空间的某些点或线上存在不可消除的奇点，那么其空间衰减将退化为代数形式缓慢衰减（$w_n(r) \sim 1/r^\beta$），对于非零的陈数，波函数动量空间绕一圈周期性边界条件 $|u_{n,k+G}\rangle = |u_{n,k}\rangle$，那么为了承载 $2\pi C$ 的相位缠绕，波函数的相位在布里渊区内部必然会缩减到一个或多个涡旋奇点，这些点波函数的导数发散。因此，比如多带hubbard模型，为了能够写下一个局域相互作用模型，一个紧束缚的模型，必须在这些带中选取一个集合，其总的陈数为零。这些带为符合能带。此后，在这个局域模型下面我们才可以讨论其中某一条平带的超导作用。

$$w_n(r - R) = \frac{V_c}{(2\pi)^D} \int_{BZ} d^Dk e^{-ik\cdot R} |\psi_{n,k}\rangle = \frac{V_c}{(2\pi)^D} \int_{BZ} d^Dk e^{ik\cdot (r - R)} |u_{n,k}\rangle$$


&emsp;&emsp;我们先要阐明这个$K$的引入是在复合极限下合理的，需要强调的是，下文所称的hubbard哈密顿量产生算符都是简写，$c_{i\alpha}$代表一个局域wannier函数的产生。wannier center在$r_{i\alpha}$。而且只是在复合的带上所产生的wannier函数。对于有超流速度的体系$H(\mathbf{q}) = \frac{(\hat{\mathbf{p}} - \hbar \mathbf{q})^2}{2m} + V(\mathbf{r})$，展开bloch 函数：$
\psi_{n \mathbf{k}}(\mathbf{r})=e^{i \mathbf{k} \cdot \mathbf{r}} g_{n \mathbf{k}}(\mathbf{r})$。我们构造wannier函数，考虑复合能带极限，，即只考虑$S$集合中的能带，因此通过投影变换$U$投影到复合能带上，保留下的wannier函数形式上可以写为：

$$
\begin{aligned}
w_\alpha\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right) & =\frac{V_{\Omega}}{(2 \pi)^3} \int d^3 \mathbf{k} e^{-i \mathbf{k} \cdot \mathbf{r}\_{\mathbf{i}}} \sum_{n \in \mathcal{S}}\left[U\_{\mathbf{k}}\right]\_{\alpha, n} \psi\_{n \mathbf{k}}(\mathbf{r}) \\\\
& =\frac{V_{\Omega}}{(2 \pi)^3} \int d^3 \mathbf{k} e^{i \mathbf{k} \cdot\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right)} \sum\_{n \in \mathcal{S}}\left[U_{\mathbf{k}}\right]\_{\alpha, n} g_{n \mathbf{k}}(\mathbf{r}) \\\\
& =\frac{V_{\Omega}}{(2 \pi)^3} \int d^3 \mathbf{k} e^{i \mathbf{k} \cdot\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right)} \sum\_{n \in \mathcal{S}}\left[U_{\mathbf{k}}\right]\_{\alpha, n} g_{n \mathbf{k}}\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right)
\end{aligned}
$$

$$
\hat{\psi}(\mathbf{r})=\sum\_{\mathbf{i}} \sum_{\alpha \in \mathcal{S}} w_\alpha\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right) \hat{c}\_{\mathbf{i} \alpha}+\sum\_{\mathbf{i}} \sum\_{\gamma \in \overline{\mathcal{S}}} \bar{w}\_\gamma\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right) \hat{d}\_{\mathbf{i} \gamma} .
$$

&emsp;&emsp; 用复合带和其它带重新写哈密顿量，wannier函数为$\langle r|i\alpha \rangle$:


$$
\begin{aligned}
\hat{\mathcal{H}}=\int d^3 \mathbf{r} \hat{\psi}^{\dagger}(\mathbf{r}) H \hat{\psi}(\mathbf{r}) & =\sum\_{\alpha, \beta \in \mathcal{S}} \sum_{\mathbf{i}, \mathbf{j}} \hat{c}\_{\mathbf{i} \alpha}^{\dagger}\langle\mathbf{i} \alpha| H|\mathbf{j} \beta\rangle \hat{c}\_{\mathbf{j} \beta}+\sum\_{\gamma, \delta \in \overline{\mathcal{S}}} \sum\_{\mathbf{i}, \mathbf{j}} \hat{d}\_{\mathbf{i} \gamma}^{\dagger}\langle\mathbf{i} \gamma| H|\mathbf{j} \delta\rangle \hat{d}\_{\mathbf{j} \delta} \\\\
& =\sum\_{\alpha, \beta \in \mathcal{S}} \sum_{\mathbf{i}, \mathbf{j}} \hat{c}\_{\mathbf{i} \alpha}^{\dagger} K_{\mathbf{i} \alpha, \mathbf{j} \beta} \hat{c}\_{\mathbf{j} \beta}+\sum\_{\gamma, \delta \in \overline{\mathcal{S}}} \sum\_{\mathbf{i}, \mathbf{j}} \hat{d}\_{\mathbf{i} \gamma}^{\dagger} \bar{K}\_{\mathbf{i} \gamma, \mathbf{j} \delta} \hat{d}\_{\mathbf{j} \delta} .
\end{aligned}
$$


$$
\begin{aligned}
& \sum\_{\alpha, \beta \in \mathcal{S}} \sum\_{\mathbf{i}, \mathbf{j}} \hat{c}\_{\mathbf{i} \alpha \sigma}^{\dagger} K_{\mathbf{i} \alpha, \mathbf{j} \beta}^\sigma \hat{c}\_{\mathbf{j} \beta \sigma}=\frac{1}{N_{\mathrm{c}}} \sum\_{\alpha, \beta \in \mathcal{S}} \sum\_{\mathbf{i}, \mathbf{j}}\left(\sum\_{\mathbf{k}\_1} e^{-i \mathbf{k}\_1 \cdot \mathbf{r}\_{\mathbf{i} \alpha}} \hat{c}\_{\alpha \mathbf{k}\_1 \sigma}^{\dagger}\right) K_{\mathbf{i} \alpha, \mathbf{j} \beta}^\sigma\left(\sum\_{\mathbf{k}\_2} e^{i \mathbf{k}\_2 \cdot \mathbf{r}\_{\mathbf{j} \beta}} \hat{c}\_{\beta \mathbf{k}\_2 \sigma}\right) \\\\
& =\sum_{\alpha, \beta \in \mathcal{S}} \sum\_{\mathbf{k}\_1, \mathbf{k}\_2} e^{-i \mathbf{k}\_1 \cdot \mathbf{b}\_\alpha} \hat{c}\_{\alpha \mathbf{k}\_1 \sigma}^{\dagger} e^{i \mathbf{k}\_2 \cdot \mathbf{b}\_\beta} \hat{c}\_{\beta \mathbf{k}\_2 \sigma}\left(\frac{1}{N_{\mathrm{c}}} \sum\_{\mathbf{j}} e^{i\left(\mathbf{k}\_2-\mathbf{k}\_1\right) \cdot \mathbf{r}\_{\mathbf{j}}}\right) \sum\_{\mathbf{i}-\mathbf{j}} e^{-i \mathbf{k}\_1 \cdot \mathbf{r}\_{\mathbf{i}-\mathbf{j}}} K_{\alpha, \beta}^\sigma(\mathbf{i}-\mathbf{j}) \\\\
& =\sum\_{\alpha, \beta \in \mathcal{S}} \sum\_{\mathbf{k}} \hat{c}\_{\alpha \mathbf{k} \sigma}^{\dagger} \hat{c}\_{\beta \mathbf{k} \sigma}\left(\sum\_{\mathbf{i}-\mathbf{j}} e^{-i \mathbf{k} \cdot\left(\mathbf{r}\_{\mathbf{i} \alpha}-\mathbf{r}\_{\mathbf{j} \beta}\right)} K_{\mathbf{i} \alpha, \mathbf{j} \beta}^\sigma\right)=\sum\_{\alpha, \beta \in \mathcal{S}} \sum\_{\mathbf{k}} \hat{c}\_{\alpha \mathbf{k} \sigma}^{\dagger}\left[\widetilde{K}^\sigma(\mathbf{k})\right]\_{\alpha, \beta} \hat{c}\_{\beta \mathbf{k} \sigma} \cdot
\end{aligned}
$$

&emsp;&emsp;其中$K=\langle\mathbf{i} \alpha| H|\mathbf{j} \gamma\rangle$,如果wannier函数是局域的，从上面的定义看出$|\Delta\mathbf{R}| \to \infty$，$K(\Delta\mathbf{R}) \propto e^{-\kappa |\Delta\mathbf{R}|}$ 呈指数级快速衰减。否则，如果能带具有非零陈数，Wannier 函数无法指数局域化，它的尾巴会呈代数衰减（多项式衰减，例如 $1/|\Delta\mathbf{R}|^2$）。那么在上面式子把$ij$指标换为$\alpha \beta$指标的过程中，最后一行的$\tilde{K}\_{\alpha,\beta}(\mathbf{k}) = \sum_{\Delta\mathbf{R} \in \text{All Lattice}} e^{-i\mathbf{k}\cdot(\mathbf{r}\_{i\alpha} - \mathbf{r}\_{j\beta})} K_{\alpha,\beta}(\Delta\mathbf{R})$不能收敛，不能做复合平带的投影。换句话说，局域的wannier函数（比如平带）保证了复合投影的有效性，之后会在平带中构造这样的wannier函数。

&emsp;&emsp;下面处理哈密顿量：

$$\hat{\mathcal{H}}\_{0} = \sum\_{i,j,\sigma} \left[ K_{i,j}^{\sigma}(q) - \mu(q)\delta\_{i,j} + V_i\delta\_{i,j} \right] \hat{c}\_{i\sigma}^{\dagger}\hat{c}\_{j\sigma}$$


$$\hat{\mathcal{H}}\_{int} = -U \sum_{i} \hat{c}\_{i\uparrow}^{\dagger}\hat{c}_{i\downarrow}^{\dagger}\hat{c}\_{i\downarrow}\hat{c}\_{i\uparrow}$$

$$\Delta_i(q) = -U \langle \hat{c}\_{i\downarrow}\hat{c}\_{i\uparrow} \rangle$$

$$\hat{\mathcal{H}}\_{int}^{m.f.} \approx \sum\_{i} \left[ \Delta\_{i}(q)\hat{c}\_{i\uparrow}^{\dagger}\hat{c}\_{i\downarrow}^{\dagger} + \Delta\_{i}^{\star}(q)\hat{c}\_{i\downarrow}\hat{c}\_{i\uparrow} + \frac{|\Delta\_{i}(q)|^{2}}{U} \right]$$

$$\hat{c} = \begin{pmatrix} \hat{c}\_{j,\uparrow} \\\\
 \hat{c}\_{j,\downarrow}^{\dagger} \end{pmatrix}$$

$$H_{BdG}(q) = \begin{pmatrix} H_{i,j}^{\uparrow}(q) & \Delta_{i}(q)\delta_{i,j} \\\\
 \Delta_{i}^{*}(q)\delta_{i,j} & -H_{i,j}^{\downarrow}(q) \end{pmatrix}$$

$$H_{i,j}^{\uparrow}(q) = K_{i,j}^{\uparrow}(q) - \mu(q)\delta_{i,j} + V_i\delta_{i,j}$$


$$
H_{\mathbf{i}, \mathbf{j}}^{\downarrow}(\mathbf{q})=\left(K_{\mathbf{i}, \mathbf{j}}^{\downarrow}(\mathbf{q})\right)^{\star}-\mu(\mathbf{q}) \delta_{\mathbf{i}, \mathbf{j}}+V_{\mathbf{i}} \delta_{\mathbf{i}, \mathbf{j}}=K_{\mathbf{i}, \mathbf{j}}^{\uparrow}(-\mathbf{q})-\mu(\mathbf{q}) \delta_{\mathbf{i}, \mathbf{j}}+V_{\mathbf{i}} \delta_{\mathbf{i}, \mathbf{j}}
$$


&emsp;&emsp;最后的哈密顿量就是Nambu部分和两个常数项：

$$\hat{\mathcal{H}}\_{m.f.} = \hat{c}^{\dagger}H_{BdG}(q)\hat{c} + \text{Tr } H_{\downarrow}(q) + \frac{1}{U}\sum\_{i}|\Delta\_{i}(q)|^{2} \tag{18}$$

$$
\Omega\left(T, \mu(\mathbf{q}), \Delta_{\mathbf{i}}(\mathbf{q}), \mathbf{q}\right)-\frac{1}{\beta} \ln \operatorname{Tr}\left[e^{-\beta \hat{\mathcal{H}}\_{\mathrm{m} . \mathrm{f}}}\right]=\operatorname{Tr} H_{\downarrow}(\mathbf{q})+\sum_{\mathbf{i}} \frac{\left|\Delta_{\mathbf{i}}(\mathbf{q})\right|^2}{U}-\frac{1}{\beta} \ln \operatorname{Tr}\left[e^{-\beta \hat{\mathbf{c}}^{\dagger} H_{\mathrm{BdG}}(\mathbf{q}) \hat{\mathbf{c}}}\right] .
$$




&emsp;&emsp;定义BDG矩阵的对角化酉矩阵为 $\mathcal{W}(q)$ 和本征值对角阵为 $E(q)$ ，热力学统计平均值：$\frac{\partial \Omega}{\partial \lambda} = \left\langle \frac{\partial \hat{\mathcal{H}}\_{m.f.}}{\partial \lambda} \right\rangle\_{th}$，在平衡态下面系综平均为零：

$$\frac{\partial \hat{\mathcal{H}}\_{m.f.}}{\partial \Delta_i^{\star}} = \hat{c}\_{i\downarrow} \hat{c}\_{i\uparrow} + \frac{\Delta_i}{U}$$

$$
0=\frac{\partial \Omega}{\partial \Delta\_{\mathbf{i}}^{\star}}=\frac{\Delta\_{\mathbf{i}}}{U}+\left\langle\hat{c}\_{\mathbf{i} \downarrow} \hat{c}\_{\mathbf{i} \uparrow}\right\rangle
\tag{19}
$$

$$
N=-\frac{\partial \Omega}{\partial \mu}=\sum_{\mathbf{i}}\left\langle\hat{c}\_{\mathbf{i} \uparrow}^{\dagger} \hat{c}\_{\mathbf{i} \uparrow}+\hat{c}\_{\mathbf{i} \downarrow}^{\dagger} \hat{c}\_{\mathbf{i} \downarrow}\right\rangle 
\tag{20}
$$

&emsp;&emsp;(有一个冗长复杂的推导)从这两个自洽方程知道，在平衡态下，化学势 $\mu(q)$、能隙幅值 $|\Delta(q)|$ 都是关于超流波矢 $q$ 的偶函数，因此：

$$
H_{\mathrm{BdG}}(\mathbf{q})=\mathcal{W}(\mathbf{q}) E(\mathbf{q}) \mathcal{W}^{\dagger}(\mathbf{q})
$$

$$
[E(\mathbf{q})]\_{a, b}=E_a(\mathbf{q}) \delta\_{a, b}=E_a\left(\mu(\mathbf{q}), \Delta_{\mathbf{i}}(\mathbf{q}), \mathbf{q}\right) \delta_{a, b} .
$$

$$
\hat{\mathbf{c}}=\mathcal{W}(\mathbf{q}) \hat{\gamma},
$$

$$
\operatorname{Tr}\left[e^{-\beta \hat{\mathbf{c}}^{\dagger} H_{\mathrm{BdG}}(\mathbf{q}) \hat{\mathbf{c}}}\right]=\operatorname{Tr}\left[e^{-\beta \hat{\boldsymbol{\gamma}}^{\dagger} E(\mathbf{q}) \hat{\boldsymbol{\gamma}}}\right]=\prod_a \operatorname{Tr}\left[e^{-\beta E_a(\mathbf{q}) \hat{\gamma}_a^{\dagger} \hat{\gamma}_a}\right]=\prod_a\left(1+e^{-\beta E_a(\mathbf{q})}\right)
$$

$$
\Omega\left(T, \mu(\mathbf{q}), \Delta_{\mathbf{i}}(\mathbf{q}), \mathbf{q}\right)=\operatorname{Tr} H_{\downarrow}(\mathbf{q})+\sum \frac{\left|\Delta_{\mathbf{i}}(\mathbf{q})\right|^2}{U}-\frac{1}{\beta} \sum \ln \left(1+e^{-\beta E_a(\mathbf{q})}\right)
\tag{21}
$$

&emsp;&emsp;下面的第一个等号利用到了如果$\mu \Delta$都是偶函数，$H$变化是添加一个负号，再交换基，相当于变换矩阵为粒子-空穴变换$t_y$，此时能量满足$E(q)=-E(-q)$。第二个等式利用了$\ln(1 + e^x) = \ln\left[e^x (e^{-x} + 1)\right] = \ln(e^x) + \ln(1 + e^{-x}) = x + \ln(1 + e^{-x})$，第三个等号利用了$\text{Tr } H_{BdG}(q) = \text{Tr } H_{\uparrow}(q) + \text{Tr } (-H_{\downarrow}(q)) = \text{Tr } H_{\uparrow}(q) - \text{Tr } H_{\downarrow}(q)$。从而证明了$\Omega$是关于$q$的偶函数。

$$t_y = \begin{pmatrix} 0 & -i \\\\ i & 0 \end{pmatrix}$$


$$
\begin{aligned}
& \operatorname{Tr} H^{\downarrow}(-\mathbf{q})-\frac{1}{\beta} \sum_a \ln \left(1+e^{-\beta E_a(-\mathbf{q})}\right)=\operatorname{Tr} H^{\uparrow}(\mathbf{q})-\frac{1}{\beta} \sum_a \ln \left(1+e^{-\beta\left(-E_a(\mathbf{q})\right)}\right) \\\\
& =\operatorname{Tr} H^{\uparrow}(\mathbf{q})-\operatorname{Tr} H_{\mathrm{BdG}}(\mathbf{q})-\frac{1}{\beta} \sum_a \ln \left(1+e^{-\beta E_a(\mathbf{q})}\right)=\operatorname{Tr} H^{\downarrow}(\mathbf{q})-\frac{1}{\beta} \sum_a \ln \left(1+e^{-\beta E_a(\mathbf{q})}\right) .
\end{aligned}
$$

&emsp;&emsp;这也说明$q=0$是系统巨势的平衡位置，这告诉我们可以在在这个平衡位置附近考虑$q$超流权重可以计算超流密度，定义为：

$$
\left.\frac{\partial^2 F}{\partial q_j \partial q_i}\right|_{\mathbf{q}=0}
$$

&emsp;&emsp;其中$\Omega(T, \mu(\mathbf{q}), \Delta_{\mathbf{i}}(\mathbf{q}), \mathbf{q})$,第一个方程，从19式和20式知道前两项为零；第二个方程，从$\mu \Delta$偶函数对于$q$的性质知道是零：

$$
\frac{\partial F}{\partial q_i}=\left.\sum_{\mathbf{i}} \frac{\partial \Omega}{\partial \Delta_{\mathbf{i}}}\right|\_{\mu, \mathbf{q}} \frac{\partial \Delta_{\mathbf{i}}}{\partial q_i}+\left(\left.\frac{\partial \Omega}{\partial \mu}\right|\_{\Delta_{\mathbf{i}}, \mathbf{q}}+N\right) \frac{\partial \mu}{\partial q_i}+\left.\frac{\partial \Omega}{\partial q_i}\right|\_{\Delta_{\mathbf{i}}, \mu}=\left.\frac{\partial \Omega}{\partial q_i}\right|\_{\Delta_{\mathbf{i}}, \mu}
$$

$$
\left.\frac{\partial^2 F}{\partial q_j \partial q_i}\right|\_{\mathbf{q}=0}=\left.\sum_{\mathbf{i}} \frac{\partial^2 \Omega}{\partial \Delta_{\mathbf{i}} \partial q_i} \frac{\partial \Delta_{\mathbf{i}}}{\partial q_j}\right|\_{\mathbf{q}=0}+\left.\frac{\partial^2 \Omega}{\partial \mu \partial q_i} \frac{\partial \mu}{\partial q_j}\right|\_{\mathbf{q}=0}+\left.\frac{\partial \Omega}{\partial q_j \partial q_i}\right|\_{\mathbf{q}=0}=\left.\frac{\partial \Omega}{\partial q_j \partial q_i}\right|\_{\mathbf{q}=0} .
$$

&emsp;&emsp;因此有：

$$
\left[D_{\mathrm{s}}\right]\_{i, j}=\left.\frac{1}{V \hbar^2} \frac{\partial^2 \Omega}{\partial q_i \partial q_j}\right|\_{\Delta_{\mathbf{i}}, \mu, \mathbf{q}=0} 
\tag{22}
$$


&emsp;&emsp;下面就开始在这个模型中计算超流权重，公式$21$的另一种写法为：


$$
\Omega(T, \mu, \Delta, \mathbf{q})=\sum\_{\mathbf{k}} \frac{1}{2}\left(\operatorname{Tr} H_{\mathbf{k}}^{\uparrow}(\mathbf{q})+\operatorname{Tr} H_{\mathbf{k}}^{\uparrow}(-\mathbf{q})\right)-\frac{1}{2 \beta} \sum\_{\mathbf{k}} \operatorname{Tr}\left[\ln 2\left(1+\cosh \beta H_{\mathbf{k}}(\mathbf{q})\right)\right]+N_c \frac{\operatorname{Tr}|\Delta(\mathbf{q})|^2}{U} 
\tag{23}
$$

&emsp;&emsp;先变换到$k$空间,原来在$i\alpha$基下面的矩阵左上、右下两块为：

$$
\left[\tilde{K}^\sigma(\mathbf{k})\right]\_{\alpha, \beta}=\sum\_{\mathbf{i}-\mathbf{j}} e^{-\mathbf{i k} \cdot\left(\mathbf{r}\_{\mathbf{i} \mathbf{x}}-\mathbf{r}\_{\mathbf{j} \beta}\right)} K_{\mathbf{i} \alpha, \mathbf{j} \beta}^\sigma .
$$

&emsp;&emsp;定义现在$k\alpha$的基为：$\hat{\mathbf{c}}\_{\mathbf{k}}=\left(\hat{c}\_{\alpha \mathbf{k} \uparrow}, \hat{c}\_{\beta-\mathbf{k} \downarrow}^{\dagger}\right)$：

$$
H_{\mathbf{k}}^{\prime}(\mathbf{q})=\left(\begin{array}{cc}
K^{\dagger}(\mathbf{k}-\mathbf{q})-\mu \mathbf{1} & \Delta \\\\
\Delta & -\left(K^{\dagger}(\mathbf{k}+\mathbf{q})-\mu \mathbf{1}\right)
\end{array}\right) .
$$

&emsp;&emsp;定义现在$kn$的基为：$\hat{\mathbf{d}}\_{\mathbf{k}}=\left(\hat{d}\_{n \mathbf{k} \uparrow}, \hat{d}\_{n^{\prime}-\mathbf{k} \downarrow}^{\dagger}\right)^T$，通过变换$\hat{c}\_{\beta-\mathbf{k} \downarrow}^{\dagger}=\sum_n\left[\mathcal{G}\_{(-\mathbf{k}-\mathbf{q}) \downarrow}\right]_{\beta, n}^{\star} \hat{d}\_{n-\mathbf{k} \downarrow}^{\dagger}=\sum\_n\left[\mathcal{G}\_{(\mathbf{k}+\mathbf{q}) \dagger}\right]\_{\beta, n} \hat{d}\_{n-\mathbf{k} \downarrow}^{\dagger}$对角化：$\mathcal{G}\_{\mathbf{k}}^{\dagger} K(\mathbf{k}) \mathcal{G}\_{\mathbf{k}} = \epsilon\_{\mathbf{k}}$

$$
H_{\mathbf{k}}(\mathbf{q})=\left(\begin{array}{cc}
\varepsilon\_{\mathbf{k}-\mathbf{q}}-\mu \mathbf{1} & \mathcal{G}\_{\mathbf{k}-\mathbf{q}}^{\dagger} \Delta \mathcal{G}\_{\mathbf{k}+\mathbf{q}} \\\\
\mathcal{G}\_{\mathbf{k}+\mathbf{q}}^{\dagger} \Delta \mathcal{G}\_{\mathbf{k}-\mathbf{q}} & -\left(\varepsilon\_{\mathbf{k}+\mathbf{q}}-\mu \mathbf{1}\right)
\end{array}\right)
$$

$$
\mathcal{D}\_{\mathbf{k}}(\mathbf{q})=-\mathcal{G}\_{\mathbf{k}-\mathbf{q}}^{\dagger} \Delta \mathcal{G}\_{\mathbf{k}+\mathbf{q}}=\mathcal{D}\_{\mathbf{k}}^{\dagger}(-\mathbf{q})
$$

&emsp;&emsp;并最终可以整体对角化：

$$
H_{\mathbf{k}}(\mathbf{q})=\mathcal{W}\_{\mathbf{k}}(\mathbf{q}) E_{\mathbf{k}}(\mathbf{q}) \mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) .
$$

&emsp;&emsp;巨势关于$q$的一阶导数是电流密度,因此代入$23$式，第一项对$-q$添一个负号，第二项也是一个求导公式,这里已经初具端倪，第一项群速度在平带体系下面为零，否定了传统超导的存在：


$$
\mathbf{J}(\mathbf{q})=\left.\frac{1}{V \hbar} \frac{\partial \Omega}{\partial \mathbf{q}}\right|\_{\mu, \Delta}=\frac{1}{V \hbar} \sum\_{\mathbf{k}}\left(\frac{1}{2}\left(\operatorname{Tr}\left[\partial_{\mathbf{k}} \varepsilon\_{\mathbf{k}+\mathbf{q}}\right]-\operatorname{Tr}\left[\partial\_{\mathbf{k}} \varepsilon\_{\mathbf{k}-\mathbf{q}}\right]\right)-\frac{1}{2} \operatorname{Tr}\left[\tanh \left(\frac{\beta E_{\mathbf{k}}(\mathbf{q})}{2}\right) \partial\_{\mathbf{q}} E_{\mathbf{k}}(\mathbf{q})\right]\right)
$$


&emsp;&emsp;其中后一部分可以带入Hellman-Feynman定理：


$$
\left[\partial\_{\mathbf{q}} E_{\mathbf{k}}(\mathbf{q})\right]\_{a, a}=\left[\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) \partial\_{\mathbf{q}} H_{\mathbf{k}}(\mathbf{q}) \mathcal{W}\_{\mathbf{k}}(\mathbf{q})\right]\_{a, a}, \quad \text { with } \quad \partial\_{\mathbf{q}} H_{\mathbf{k}}(\mathbf{q})=-\left(\begin{array}{cc}
\partial\_{\mathbf{k}} \varepsilon\_{\mathbf{k}-\mathbf{q}} & \partial\_{\mathbf{q}} \mathcal{D}\_{\mathbf{k}}(\mathbf{q}) \\\\
-\partial\_{\mathbf{q}} \mathcal{D}\_{\mathbf{k}}(-\mathbf{q}) & \partial\_{\mathbf{k}} \varepsilon\_{\mathbf{k}+\mathbf{q}}
\end{array}\right)
$$

&emsp;&emsp;下面求二阶导数，利用$\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) \partial_{\mathbf{q}} \mathcal{W}\_{\mathbf{k}}(\mathbf{q})=-\left(\partial\_{\mathbf{q}} \mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q})\right) \mathcal{W}\_{\mathbf{k}}(\mathbf{q})$，先验证：

$$H_k(q) \mathcal{W}_k(q) = \mathcal{W}_k(q) E_k(q)$$

$$(\partial_q H_k) \mathcal{W}\_k + H_k (\partial\_q \mathcal{W}\_k) = (\partial_q \mathcal{W}\_k) E_k + \mathcal{W}\_k (\partial_q E_k)$$

$$\mathcal{W}\_k^\dagger (\partial_q H_k) \mathcal{W}\_k + \mathcal{W}\_k^\dagger H_k (\partial_q \mathcal{W}\_k) = \mathcal{W}\_k^\dagger (\partial_q \mathcal{W}\_k) E_k + \mathcal{W}\_k^\dagger \mathcal{W}\_k (\partial_q E_k)$$

$$\mathcal{W}\_k^\dagger (\partial_q H_k) \mathcal{W}\_k + E_k (\mathcal{W}\_k^\dagger \partial_q \mathcal{W}\_k) = (\mathcal{W}\_k^\dagger \partial_q \mathcal{W}\_k) E_k + \partial_q E_k$$

&emsp;&emsp;对角元给出hellmann-Feynman定理：

$$[\partial_{q_j} E_k]\_{a,a} = [\mathcal{W}\_k^\dagger (\partial_{q_j} H_k) \mathcal{W}_k]\_{a,a}
\tag{24}$$

&emsp;&emsp;非对角元给出：

$$[\mathcal{W}\_k^\dagger \partial_q \mathcal{W}\_k]_{a,b} = -\frac{[\mathcal{W}\_k^\dagger \partial_q H_k \mathcal{W}\_k]\_{a,b}}{[E_k]\_{a,a} - [E_k]\_{b,b}} \quad (\text{for } a \neq b)$$

&emsp;&emsp;因此：

$$[\partial_{q_i} \partial_{q_j} E_k]\_{a,a} = [(\partial_{q_i} \mathcal{W}\_k^\dagger) (\partial_{q_j} H_k) \mathcal{W}\_k]\_{a,a} + [\mathcal{W}\_k^\dagger (\partial_{q_i} \partial_{q_j} H_k) \mathcal{W}\_k]\_{a,a} + [\mathcal{W}\_k^\dagger (\partial_{q_j} H_k) (\partial_{q_i} \mathcal{W}\_k)]\_{a,a}
$$

$$
\begin{aligned}
& {\left[\partial_{q_i} \partial_{q_j} E_{\mathbf{k}}(\mathbf{q})\right]\_{a, a}=\left[\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) \partial_{q_i} \partial_{q_j} H_{\mathbf{k}}(\mathbf{q}) \mathcal{W}\_{\mathbf{k}}(\mathbf{q})\right]\_{a, a}} \\\\
& +\sum_{\substack{b \\\\
a \neq b}} \frac{1}{\left[E_{\mathbf{k}}(\mathbf{q})\right]\_{a, a}-\left[E_{\mathbf{k}}(\mathbf{q})\right]\_{b, b}}\left(\left[\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) \partial_{q_i} H_{\mathbf{k}}(\mathbf{q}) \mathcal{W}\_{\mathbf{k}}(\mathbf{q})\right]\_{a, b}\left[\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}) \partial_{q_j} H_{\mathbf{k}}(\mathbf{q}) \mathcal{W}\_{\mathbf{k}}(\mathbf{q})\right]\_{b, a}+(i \leftrightarrow j)\right)
\end{aligned}
\tag{25}
$$

&emsp;&emsp;取$22$式超流权重的定义，取$q=0$,得到：

$$
\left[D_{\mathrm{s}}\right]\_{i, j}=\frac{1}{V \hbar^2} \sum\_{\mathbf{k}}\operatorname{Tr}\left[\partial_{k_i} \partial_{k_j} \varepsilon_{\mathbf{k}}\right]-\frac{1}{2} \operatorname{Tr}\left[\tanh \left(\frac{\beta E_{\mathbf{k}}}{2}\right) \partial_{q_i} \partial_{q_j} E_{\mathbf{k}}\right]-\frac{1}{2} \operatorname{Tr}\left[\frac{\beta}{2 \cosh ^2\left(\beta E_{\mathbf{k}} / 2\right)} \partial_{q_i} E_{\mathbf{k}} \partial_{q_j} E_{\mathbf{k}}\right],
\tag{26}
$$

&emsp;&emsp;其中$E_{\mathbf{k}}=E_{\mathbf{k}}(\mathbf{q}=0), \partial_{q_i} E_{\mathbf{k}}=\partial_{q_i} E_{\mathbf{k}}(\mathbf{q}=0) \text { and } \partial_{q_i} \partial_{q_j} E_{\mathbf{k}}=\partial_{q_i} \partial_{q_j} E_{\mathbf{k}}(\mathbf{q}=0) .$化简上式，如果我们有一个已知的$BDG$哈密顿量：

$$
\begin{gathered}
E_{\mathbf{k}}(\mathbf{q}=0)=\left(\begin{array}{cc}
\operatorname{diag}\left(E_{n \mathbf{k}}\right) & 0 \\\\
0 & -\operatorname{diag}\left(E_{n \mathbf{k}}\right)
\end{array}\right) \\\\
\mathcal{W}\_{\mathbf{k}}(\mathbf{q}=0)=\left(\begin{array}{cc}
\mathcal{U}\_{\mathbf{k}} & -\mathcal{V}\_{\mathbf{k}} \\\\
\mathcal{V}\_{\mathbf{k}} & \mathcal{U}\_{\mathbf{k}}
\end{array}\right) .
\end{gathered}
$$

&emsp;&emsp;那么超流权重的各个部分就可以获得了，做以下的新定义：

$$
\begin{gathered}
N_{\mathbf{k}, i}=\mathcal{W}\_{\mathbf{k}}^{\dagger}(\mathbf{q}=0) \partial_{q_i} H_{\mathbf{k}}(\mathbf{q}=0) \mathcal{W}\_{\mathbf{k}}(\mathbf{q}=0)=\left(\begin{array}{cc}
A_{\mathbf{k}, i} & B_{\mathbf{k}, i} \\\\
-B_{\mathbf{k}, i} & A_{\mathbf{k}, i}
\end{array}\right) \\\\
\begin{array}{l}
A_{\mathbf{k}, i}=\mathcal{U}\_{\mathbf{k}}^{\dagger} \partial\_{k_i} \varepsilon\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}}+\mathcal{V}\_{\mathbf{k}}^{\dagger} \partial\_{k_i} \varepsilon\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}+\mathcal{U}\_{\mathbf{k}}^{\dagger} \partial\_{q_i} \mathcal{D}\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}-\mathcal{V}\_{\mathbf{k}}^{\dagger} \partial\_{q_i} \mathcal{D}\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}} \\\\
B_{\mathbf{k}, i}=\mathcal{U}\_{\mathbf{k}}^{\dagger} \partial\_{q_i} \mathcal{D}\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}}+\mathcal{V}\_{\mathbf{k}}^{\dagger} \partial\_{q_i} \mathcal{D}\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}+\mathcal{V}\_{\mathbf{k}}^{\dagger} \partial\_{k_i} \varepsilon\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}}-\mathcal{U}\_{\mathbf{k}}^{\dagger} \partial\_{k_i} \varepsilon\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}
\end{array}\\\\
{\left[T_{\mathbf{k}}\right]\_{a, b}= \begin{cases}{\left[\frac{\beta}{2 \cosh ^2\left(\beta E_{\mathbf{k}} / 2\right)}\right]\_{a, a}} & a=b, \\\\
\frac{\left[\tanh \left(\beta E_{\mathbf{k}} / 2\right)\right]\_{a, a}-\left[\tanh \left(\beta E_{\mathbf{k}} / 2\right)\right]\_{b, b}}{\left[E_{\mathbf{k}}\right]\_{a, a}-\left[E_{\mathbf{k}}\right]\_{b, b}} & \text { for } a \neq b .\end{cases} } \\\\
\end{gathered}
$$


&emsp;&emsp;提取$26$式第三项，所有$E$都是对角阵，代入$24$式的结果：

$$
-\frac{1}{V \hbar^2} \sum_k \sum_a \frac{\beta}{4 \cosh ^2\left(\beta E_a / 2\right)}\left[N_{k, i}\right]\_{a, a}\left[N_{k, j}\right]\_{a, a}
$$

$$
=-\frac{1}{2 V \hbar^2} \sum_k \sum_a \frac{1}{2}\left[T_k\right]\_{a, a}\left[N_{k, i}\right]\_{a, a}\left[N_{k, j}\right]\_{a, a} \times 2
$$


&emsp;&emsp;提取$26$式第二项，所有$E$都是对角阵，代入$25$式的结果，$25$式有两项，提取第二项：

$$-\frac{1}{2V\hbar^2} \sum_k \sum_a \tanh\left(\frac{\beta E_a}{2}\right) \sum_{b \neq a} \frac{[N_{k,i}]\_{a,b}[N_{k,j}]\_{b,a} + [N_{k,j}]\_{a,b}[N_{k,i}]\_{b,a}}{E_a - E_b}$$

$$=\frac{1}{2} \sum_{a \neq b} [T_k]\_{a,b} \left( [N_{k,i}]\_{a,b}[N_{k,j}]\_{b,a} + [N_{k,j}]\_{a,b}[N_{k,i}]\_{b,a} \right)$$

&emsp;&emsp;合并起来定义为超流权重的第三项：

$$[D_{s,3}]\_{i,j} = -\frac{1}{2V\hbar^2} \sum_k \sum_{a,b} [T_k]\_{a,b} [N_{k,i}]\_{a,b} [N_{k,j}]\_{b,a}
$$

&emsp;&emsp;剩下的$25$式第一项为：


$$\frac{1}{2}\text{Tr}\left[ \tanh\left(\frac{\beta E_k}{2}\right) \mathcal{W}\_k^\dagger (\partial_{q_i}\partial_{q_j} H_k) \mathcal{W}\_k \right] $$

$$\partial_{q_i q_j}^2 H_k = \begin{pmatrix} \partial_{k_i k_j}^2 \epsilon_k & \partial_{q_i q_j}^2 \mathcal{D}\_k(0) \\\\ \partial_{q_i q_j}^2 \mathcal{D}\_k^\dagger(0) & -\partial_{k_i k_j}^2 \epsilon_k \end{pmatrix}$$

$$=-\text{Tr}\left[\mathcal{W}\_k (1-\frac{1}{e^{\beta E_k}+1}) \mathcal{W}\_k^\dagger (\partial_{q_i}\partial_{q_j} H_k)  \right] $$

$$=-\text{Tr}\left[\mathcal{W}\_k \frac{1}{e^{\beta E_k}+1} \mathcal{W}\_k^\dagger (\partial_{q_i}\partial_{q_j} H_k)  \right] $$

&emsp;&emsp;可以拆出两项，其中第一项合并$26$式最后的第一项可以得到：

$$
\left[D_{\mathrm{s}, 1}\right]\_{i, j}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \operatorname{Tr}\left[\left(\mathcal{V}\_{\mathbf{k}} \frac{1}{e^{-\beta E_{\mathbf{k}}}+1} \mathcal{V}\_{\mathbf{k}}^{\dagger}+\mathcal{U}\_{\mathbf{k}} \frac{1}{e^{\beta E_{\mathbf{k}}}+1} \mathcal{U}\_{\mathbf{k}}^{\dagger}\right) \partial_{k_i} \partial_{k_j} \varepsilon_{\mathbf{k}}\right]
$$

$$
\left[D_{\mathrm{s}, 2}\right]\_{i, j}=\frac{2}{V \hbar^2} \sum_{\mathbf{l}} \operatorname{Tr}\left[\left(\mathcal{U}\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}^{\dagger}-\mathcal{U}\_{\mathbf{k}} \frac{1}{e^{\beta E_{\mathbf{k}}^{>}}+1} \mathcal{V}\_{\mathbf{k}}^{\dagger}-\mathcal{V}\_{\mathbf{k}} \frac{1}{e^{\beta E_{\mathbf{k}}^{>}}+1} \mathcal{U}\_{\mathbf{k}}^{\dagger}\right) \partial_{q_i} \partial_{q_j} \mathcal{D}\_{\mathbf{k}}\right]
$$

&emsp;&emsp;其中$\partial_{q_i} \partial_{q_j} \mathcal{D}\_{\mathbf{k}}=\partial_{q_i} \partial_{q_j} \mathcal{D}\_{\mathbf{k}}(\mathbf{q}=0)$,$
E_{\mathbf{k}}^{>}=\operatorname{diag}\left(E_{n \mathbf{k}}\right),$因此总的超流权重就是：

$$
\left[D_{\mathrm{s}}\right]\_{i, j}=\left.\frac{1}{V \hbar^2} \frac{\partial^2 \Omega}{\partial q_i \partial q_j}\right|\_{\mu, \Delta, \mathbf{q}=0}=\left[D_{\mathrm{s}, 1}\right]\_{i, j}+\left[D_{\mathrm{s}, 2}\right]\_{i, j}+\left[D_{\mathrm{s}, 3}\right]\_{i, j}
\tag{27}
$$

&emsp;&emsp;在零温的时候，这三项就是：

$$
\left[D_{s, 1}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \operatorname{Tr}\left[\mathcal{V}\_{\mathbf{k}} \mathcal{V}\_{\mathbf{k}}^{\dagger} \partial_{k_{\mathrm{i}}} \partial_{k_{\mathrm{j}}} \varepsilon_{\mathbf{k}}\right]
\tag{28}
$$

$$
\left[D_{s, 2}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \operatorname{Tr}\left[\mathcal{V}\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}}^{\dagger} \partial_{q_{\mathrm{i}}} \partial_{q_{\mathrm{j}}} \mathcal{D}\_{\mathbf{k}}(\mathbf{q}=0)\right] 
\tag{29}
$$

$$
\left[D_{\mathrm{s}, 3}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \sum_{n, n^{\prime}} \frac{\left[B_{\mathbf{k}, \mathrm{i}}\right]\_{n, n^{\prime}}\left[B_{\mathbf{k}, \mathrm{j}}\right]\_{n^{\prime}, n},}{E_{n \mathbf{k}}+E_{n^{\prime} \mathbf{k}}}
\tag{30}
$$


#### <font color=purple>flat band quantum metric from superfluid weight</font>

&emsp;&emsp;在之前选取的复合带集合$S$中，存在着一条平带$n$，它可以拥有非零的陈数。它能被称为孤立平带，当相互作用完全足以耦合平带内的轨道，但远不能耦合带间的轨道时，此时可以称$\varepsilon_{\bar{n} \mathbf{k}} \approx \varepsilon_{\bar{n}}$。上界保证孤立，下届保证超导由相互作用几何主导而非动能主导，来源于之前的BCS带隙自洽方程，即：

$$
\begin{array}{l}
\min_{\mathbf{k}} \varepsilon_{(\bar{n}+1) \mathbf{k}}-\max_{\mathbf{k}} \varepsilon_{\bar{n} \mathbf{k}} \\\\
\min_{\mathbf{k}} \varepsilon_{\bar{n} \mathbf{k}}-\max_{\mathbf{k}} \varepsilon_{(\bar{n}-1) \mathbf{k}}
\end{array} \gg U \gg \max_{\mathbf{k}} \varepsilon_{\bar{n} \mathbf{k}}-\min_{\mathbf{k}} \varepsilon_{\bar{n} \mathbf{k}} .
$$

&emsp;&emsp;接下来就在上文的 Harper Hubbard 模型求解上述诸矩阵，找到那条平带，求解对应的超流权重。要解的是$H_k(0)$：

$$
h_{n k}=\left(\begin{array}{cc}
\epsilon_{n k}-\mu I& \Delta I \\\\
\Delta I & -\left(\epsilon_{n k}-\mu\right) I
\end{array}\right)
$$

$$
E_{n \mathbf{k}}=\sqrt{\left(\varepsilon_{n \mathbf{k}}-\mu\right)^2+\Delta^2} 
$$

$$
u_{n k}^2=\frac{1}{2}\left(1+\frac{\epsilon_{n k}-\mu}{E_{n k}}\right), \quad v_{n k}^2=\frac{1}{2}\left(1-\frac{\epsilon_{n k}-\mu}{E_{n k}}\right)
$$

$$
\begin{aligned}
&\left[\mathcal{U}\_{\mathbf{k}}\right]\_{n, n^{\prime}}=u_{n \mathbf{k}} \delta_{n, n^{\prime}}\\\\
&\left[\mathcal{V}\_{\mathbf{k}}\right]\_{n, n^{\prime}}=v_{n \mathbf{k}} \delta_{n, n^{\prime}}
\end{aligned}
$$

$$u_{nk}v_{nk} = \frac{\Delta}{2E_{nk}}$$

&emsp;&emsp;对角化做完了，这对应于：

$$
\begin{gathered}
E_{\mathbf{k}}(\mathbf{q}=0)=\left(\begin{array}{cc}
\operatorname{diag}\left(E_{n \mathbf{k}}\right) & 0 \\\\
0 & -\operatorname{diag}\left(E_{n \mathbf{k}}\right)
\end{array}\right) \\\\
\mathcal{W}\_{\mathbf{k}}(\mathbf{q}=0)=\left(\begin{array}{cc}
\mathcal{U}\_{\mathbf{k}} & -\mathcal{V}\_{\mathbf{k}} \\\\
\mathcal{V}\_{\mathbf{k}} & \mathcal{U}\_{\mathbf{k}}
\end{array}\right) .
\end{gathered}
$$

&emsp;&emsp;假定化学势在平带附近，填电子填到平带上，平带上的占据数为$\nu$，这个体系就全已知了。

&emsp;&emsp;接下来求解BCS能隙，从$i\alpha$转换到$kn$空间：

$$\Delta_\alpha = U \langle c_{i\alpha\downarrow} c_{i\alpha\uparrow} \rangle$$

$$c_{i\alpha\sigma} = \frac{1}{\sqrt{N_c}} \sum_k e^{ik \cdot r_i} \sum_n g_{nk}(\alpha) d_{nk\sigma}$$

&emsp;&emsp;代入配对期望值中，由于在平均场基态下只有库珀对有非零期望，而且孤立极限下面只能处于一个带上 $\langle d_{nk\downarrow} d_{n'-k'\uparrow} \rangle = \delta_{n,n'}\delta_{k,k'} u_{nk}v_{nk}$，这是因为BDG方程$W$对角化就对应bogoliubov变换，$d$变换到$E$才是对角的，自然要引入$u,v$：

$$\Delta_\alpha = \frac{U}{N_c} \sum_{k} \sum_n |g_{nk}(\alpha)|^2 u_{nk} v_{nk}$$

&emsp;&emsp;假定所有的轨道的带隙都是一致的，利用bloch函数对所有轨道求和为1，得到：

$$
N_{o r b} \Delta=\frac{U}{N_c} \sum_k \sum_n u_{n k} v_{n k}
$$

&emsp;&emsp;库珀对就位于平带上面，能量和$k$无关，即：

$$
N_{o r b} \Delta=U u_{\bar{n}} v_{\bar{n}}
$$

&emsp;&emsp;定义$n_\phi=1 / N_{\text {orb }}$，平带极限下面，$v_{\bar{n}}^2$实际就是$n$轨道的占据数，化学势填到平带附近，其下占据数为1，其上占据数为零，设带的占据数为$\nu$:

$$
\Delta=U n_\phi u_{\bar{n}} v_{\bar{n}}=U n_\phi \sqrt{\nu(1-\nu)},
$$


&emsp;&emsp;推导平带准粒子能量：$u_{nk}v_{nk} = \frac{\Delta}{2E_{nk}}$,对于$n > \bar{n}$，$\epsilon_{nk} - \mu \approx E_{gap} \gg \Delta$，$E_{nk} \to \epsilon_{nk} - \mu$，对于$n < \bar{n}$同理，而对于$n = \bar{n}$：


$$E_{\bar{n}} = \frac{\Delta}{2u_{\bar{n}}v_{\bar{n}}} = \frac{U n_\phi u_{\bar{n}}v_{\bar{n}}}{2u_{\bar{n}}v_{\bar{n}}} = \frac{U n_\phi}{2}$$

&emsp;&emsp;推导化学势，利用$u_{\bar{n}}^2-v_{\bar{n}}^2=\frac{\epsilon_{\bar{n}}-\mu}{E_{\bar{n}}}$，左边为$(1-\nu) - \nu = 1 - 2\nu$


$$\epsilon_{\bar{n}} - \mu = (1 - 2\nu) \frac{U n_\phi}{2} = U n_\phi \left(\frac{1}{2} - \nu\right)$$

$$\mu = \epsilon_{\bar{n}} + U n_\phi \left(\nu - \frac{1}{2}\right)$$


&emsp;&emsp;把这个结果代入上文超流权重的三项里面，要注意前面解的是$q=0$的情况，现在超流权重等于存在着零附近的$q$，不能代零的BDG矩阵，而是以求解出来的量为基底构造$q$的BDG矩阵，第一项：

$$[D_{s,1}]\_{i,j} = \frac{1}{V\hbar^2} \sum_{\mathbf{k},n} \left( 2 v_{n\mathbf{k}}^2 \right) \partial_{k_i k_j}^2 \epsilon_{n\mathbf{k}}$$

&emsp;&emsp;由于平带没有色散，第一项为零，这一项也就是所谓的conventional term。第二项，构造$q$的BDG矩阵，求导数，再取$q=0$：

$$
\left[D_{s, 2}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \operatorname{Tr}\left[\mathcal{V}\_{\mathbf{k}} \mathcal{U}\_{\mathbf{k}}^{\dagger} \partial_{q_{\mathrm{i}}} \partial_{q_{\mathrm{j}}} \mathcal{D}\_{\mathbf{k}}(\mathbf{q}=0)\right] 
\tag{29}
$$

$$\mathcal{D}_k(q) = -\mathcal{G}\_{k-q}^\dagger \Delta \mathcal{G}\_{k+q}$$

$$[D_{s,2}]\_{i,j} = -\frac{1}{V\hbar^2} \sum_{\mathbf{k}} \sum_n u_{n\mathbf{k}} v_{n\mathbf{k}} \left[ \partial_{q_i q_j}^2 \mathcal{D}_{\mathbf{k}}(q) \right]\_{nn} + \text{h.c. q=0}$$

&emsp;&emsp;做个简写，下面所有式子里面第一个$\mathcal{G}$下标为$k+q$，第二个为$k-q$:

$$\partial_{q_i q_j}^2 \mathcal{D} = - \Delta \left[ \partial_{ij}^2 \mathcal{G}^\dagger \mathcal{G} - \partial_i \mathcal{G}^\dagger \partial_j \mathcal{G} - \partial_j \mathcal{G}^\dagger \partial_i \mathcal{G} + \mathcal{G}^\dagger \partial_{ij}^2 \mathcal{G} \right]$$

&emsp;&emsp;利用性质：$\frac{\partial}{\partial q_i} f(\mathbf{k} - \mathbf{q}) = - \frac{\partial}{\partial k_i} f(\mathbf{k} - \mathbf{q}) = - \partial_{k_i} f(\mathbf{k} - \mathbf{q})$$\frac{\partial}{\partial q_i} f(\mathbf{k} + \mathbf{q}) = + \frac{\partial}{\partial k_i} f(\mathbf{k} + \mathbf{q}) = + \partial_{k_i} f(\mathbf{k} + \mathbf{q})$，再取$q=0$，有性质：$\partial_{ij}^2 \mathcal{G}^\dagger \mathcal{G} + \mathcal{G}^\dagger \partial_{ij}^2 \mathcal{G} = - \left( \partial_i \mathcal{G}^\dagger \partial_j \mathcal{G} + \partial_j \mathcal{G}^\dagger \partial_i \mathcal{G} \right)$，则有：

$$[D_{s,2}]\_{i,j} = \frac{2}{V\hbar^2} \sum_{\mathbf{k}} \sum_n \Delta u_{n\mathbf{k}} v_{n\mathbf{k}} \left[ \left( \partial_i \mathcal{G}^\dagger \partial_j \mathcal{G} \right)\_{nn} + \left( \partial_j \mathcal{G}^\dagger \partial_i \mathcal{G} \right)\_{nn} \right] + \text{h.c.}$$


&emsp;&emsp;项 $\left( \partial_i \mathcal{G}^\dagger \partial_j \mathcal{G} \right)\_{nn}$，在物理上代表了什么？$\mathcal{G}$ 部分对角化了原 $BDG$ 矩阵，到分块对角，之后再由bogoliubov变换完全对角化。$\mathcal{G}$ 就是把轨道向能带的投影，有性质$\left[\overline{\mathcal{G}}\_{\mathbf{k}}\right]\_{\alpha, 1}=g_{\bar{n} \mathbf{k}}(\alpha)=\left[\mathcal{G}\_{\mathbf{k}}\right]\_{\alpha, \bar{n}}, \quad \overline{\mathcal{G}}\_{\mathbf{k}}^{\dagger} \overline{\mathcal{G}}\_{\mathbf{k}}=1, \quad \overline{\mathcal{G}}\_{\mathbf{k}} \overline{\mathcal{G}}\_{\mathbf{k}}^{\dagger}=P_{\bar{n} \mathbf{k}} .$因此$\mathcal{G}$ 的列向量就是第 $n$ 个能带的布洛赫波函数 $|u_{n\mathbf{k}}\rangle$。
所以，这个矩阵元正是相邻波函数梯度的内积：$\langle \partial_{k_i} u_{n\mathbf{k}} | \partial_{k_j} u_{n\mathbf{k}} \rangle$。

$$\left( \partial_i \mathcal{G}^\dagger \partial_j \mathcal{G} + \text{h.c.} \right)\_{nn} \implies 2 \, \text{Re} \langle \partial_{k_i} u_{n\mathbf{k}} | \partial_{k_j} u_{n\mathbf{k}} \rangle $$

$$\Delta \cdot (u_{\bar{n}\mathbf{k}} v_{\bar{n}\mathbf{k}}) = \left[ U n_\phi \sqrt{\nu(1-\nu)} \right] \times \sqrt{\nu(1-\nu)} = U n_\phi \nu(1-\nu)$$

$$[D_{s,2}]\_{i,j} = \frac{4}{\hbar^2} \left[ U n_\phi \nu(1-\nu) \right] \frac{1}{V} \sum_{\mathbf{k}} 2  \text{Re} \langle \partial_{k_i} u_{n\mathbf{k}} | \partial_{k_j} u_{n\mathbf{k}} \rangle$$

&emsp;&emsp;处理第三项，注意现在只有对平带的求和：


$$
\left[D_{\mathrm{s}, 3}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2}{V \hbar^2} \sum_{\mathbf{k}} \sum_{n, n^{\prime}} \frac{\left[B_{\mathbf{k}, \mathrm{i}}\right]\_{n, n^{\prime}}\left[B_{\mathbf{k}, \mathrm{j}}\right]\_{n^{\prime}, n},}{E_{n \mathbf{k}}+E_{n^{\prime} \mathbf{k}}}
\tag{30}
$$

$$\partial_{q_i} [-\mathcal{D}_{\mathbf{k}}(q)] = \Delta \left( -\partial_i \mathcal{G}^\dagger \mathcal{G} + \mathcal{G}^\dagger \partial_i \mathcal{G} \right) = \Delta \left( \mathcal{G}^\dagger \partial_i \mathcal{G} + \mathcal{G}^\dagger \partial_i \mathcal{G} \right) = 2\Delta \mathcal{G}^\dagger \partial_i \mathcal{G}$$

&emsp;&emsp;类似之前，矩阵元$\langle n | \mathcal{G}^\dagger \partial_i \mathcal{G} | n \rangle = \langle u_n | \partial_{k_i} u_n \rangle$，可以有berry connection的形式:$\mathcal{A}\_i = i\langle u_n | \partial_i u_n \rangle \implies \langle u_n | \partial_i u_n \rangle = -i\mathcal{A}\_i$


$$H_{\mathbf{k}}(q) = \begin{pmatrix} \epsilon_{\mathbf{k}-q} - \mu & -\mathcal{D}\_{\mathbf{k}}(q) \\\\ -\mathcal{D}\_{\mathbf{k}}(-q) & -(\epsilon_{\mathbf{k}+q} - \mu) \end{pmatrix}$$

$$\partial_{q_i} H_{\bar{n}} = \begin{pmatrix} 0 & 2\Delta(-i\mathcal{A}\_i) \\\\ -2\Delta(-i\mathcal{A}_i) & 0 \end{pmatrix} = \begin{pmatrix} 0 & -2i\Delta \mathcal{A}_i \\\\ 2i\Delta \mathcal{A}\_i & 0 \end{pmatrix}$$

$$[B_i]\_{+,-} = (u, v) \begin{pmatrix} 0 & -2i\Delta \mathcal{A}\_i \\\\ 2i\Delta \mathcal{A}\_i & 0 \end{pmatrix} \begin{pmatrix} -v \\\\ u \end{pmatrix}$$

$$[B_i]\_{+,-} = u(-2i\Delta \mathcal{A}\_i u) + v(-2i\Delta \mathcal{A}\_i v) = -2i\Delta \mathcal{A}\_i (u^2 + v^2)$$

&emsp;&emsp;由于$u^2+v^2=1$,有

$$[B_i]\_{+,-} = -2i\Delta \mathcal{A}_i$$

$$[B_i]\_{-,+} = 2i\Delta \mathcal{A}_i$$


$$[D_{s,3}]\_{i,j} = -\frac{1}{4V\hbar^2} \sum_{\mathbf{k}} \left( \frac{8\Delta^2}{E} \mathcal{A}\_i \mathcal{A}\_j \right)$$

$$[D_{s,3}]\_{i,j} = -\frac{4U n_\phi \nu(1-\nu)}{V\hbar^2} \sum_{\mathbf{k}} \left(  \mathcal{A}\_i \mathcal{A}\_j  \right)$$


&emsp;&emsp;组合这三项，第一项为零，第二项第三项给出：

$$
\left[D_{\mathrm{s}}\right]\_{\mathrm{i}, \mathrm{j}}=\left[D_{\mathrm{s}, 2}\right]\_{\mathrm{i}, \mathrm{j}}+\left[D_{\mathrm{s}, 3}\right]\_{\mathrm{i}, \mathrm{j}}=\frac{2 U n_\phi}{\pi \hbar^2} v(1-v) \mathcal{M}\_{\mathrm{ij}}^{\mathrm{R}}
\tag{31}
$$

&emsp;&emsp;其中$M$就是量子度规，它是下面QGT的实部，比照QGT的标准形式两者一致。

$$
\mathcal{M}\_{\mathrm{ij}}=\frac{1}{2 \pi} \int_{\text {B.Z. }} d^2 \mathbf{k} \mathcal{B}\_{\mathrm{ij}}(\mathbf{k})
$$

$$
\mathcal{B}\_{\mathrm{ij}}(\mathbf{k})=2 \operatorname{Tr}\left[\left(\partial_{k_{\mathrm{i}}} \overline{\mathcal{G}}\_{\mathbf{k}}^{\dagger}\right)\left(\partial_{k_{\mathrm{j}}} \overline{\mathcal{G}}\_{\mathbf{k}}\right)\right]+2 \operatorname{Tr}\left[\overline{\mathcal{G}}\_{\mathbf{k}}^{\dagger}\left(\partial_{k_{\mathrm{i}}} \overline{\mathcal{G}}\_{\mathbf{k}}\right) \overline{\mathcal{G}}\_{\mathbf{k}}^{\dagger}\left(\partial_{k_{\mathrm{j}}} \overline{\mathcal{G}}\_{\mathbf{k}}\right)\right]
\tag{32}
$$


&emsp;&emsp;下面的说法之前也提到过，就是量子几何确定了wannier函数局域化的下界：


$$
\begin{gathered}
\left.F=\sum_\alpha\left[\langle\mathbf{0} \alpha| r^2|\mathbf{0} \alpha\rangle-|\langle\mathbf{0} \alpha| \mathbf{r}| \mathbf{0} \alpha\right\rangle \^2\right], \\\\
\langle\mathbf{0} \alpha| r^2|\mathbf{0} \alpha\rangle=\int_{\Omega} d^2 \mathbf{r}\left|w_\alpha(\mathbf{r})\right|\^2 r^2=\frac{A_{\Omega}}{(2 \pi)^2} \int_{B . Z .} d^2 \mathbf{k}\left\langle\nabla\_{\mathbf{k}} g_{\alpha \mathbf{k}} \mid \nabla_{\mathbf{k}} g_{\alpha \mathbf{k}}\right\rangle, \\\\
\langle\mathbf{i} \alpha| \mathbf{r}|\mathbf{0} \beta\rangle=\int_{\Omega} d^2 \mathbf{r} w_\alpha^{\star}\left(\mathbf{r}-\mathbf{r}\_{\mathbf{i}}\right) w_\beta(\mathbf{r}) \mathbf{r}=i \frac{A_{\Omega}}{(2 \pi)^2} \int_{B . Z .} d^2 \mathbf{k} e^{i \mathbf{k} \cdot \mathbf{r}\_{\mathbf{i}}}\left\langle g_{\alpha \mathbf{k}} \mid \nabla_{\mathbf{k}} g_{\beta \mathbf{k}}\right\rangle .
\end{gathered}
$$

$$
\begin{gathered}
F=F_I+\widetilde{F} \\\\
\left.F_I=\sum_\alpha\left[\langle\mathbf{0} \alpha| r^2|\mathbf{0} \alpha\rangle-\sum_{\mathbf{i} \beta}|\langle\mathbf{i} \beta| \mathbf{r}| \mathbf{0} \alpha\right\rangle|\^2\right] \\\\
\left.\widetilde{F}=\sum_{\substack{\mathbf{i} \beta \\\\\
\mathbf{i} \beta \neq \mathbf{0} \alpha}}|\langle\mathbf{i} \beta| \mathbf{r}| \mathbf{0} \alpha\right\rangle|\^2  > 0 
\end{gathered}
$$

$$
F_I= \frac{A_{\Omega}}{(2 \pi)^2} \sum_i \int_{B . Z .} d^2 \mathbf{k} \frac{1}{2} \mathcal{B}\_{i i}(\mathbf{k})=\frac{A_{\Omega}}{2 \pi} \frac{1}{2} \operatorname{Tr}[\mathcal{M}]
$$


#### <font color=purple>physical interpretation of Wannier localization</font> 

<img src="https://54749110.github.io/assets/2026-04-10-flat-band-superconductivity/2.jpg" width = "290" height = "250" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2026-04-10-flat-band-superconductivity/3.jpg" width = "290" height = "250" alt="图片名称" align=center />

&emsp;&emsp;总之，如图，非相互作用粒子无法移动的情况有两种：它们的 Wannier 函数可能在晶格格点上呈指数局域化，或者它们可能由于相消干涉而发生局域化（Compact Localized State）。在前一种情况下，即使引入相互作用，粒子也将保持局域化状态；而在后一种情况下，相互作用会扭曲干涉条件，并且 Wannier 函数的有限重叠将促进粒子的移动。Wannier 函数的重叠程度由能带的量子几何决定，并且在拓扑非平庸的系统中，Wannier 函数的指数局域化是不可能的。

&emsp;&emsp;Lieb晶格就是一个局域化的例子，它有三个基元$a,b,c$，（上面这幅图把A、B交换一下）在最简单的单粒子紧束缚模型中，电子只能在最近邻的格点之间跃迁（即 A 与 B 之间，A 与 C 之间）。B 和 C 之间由于距离较远，跃迁积分为 0。设最近邻跃迁积分为 $t$。哈密顿量为：

$$\hat{H} = -t \sum_{n,m} \left( \hat{a}\_{n,m}^\dagger \hat{b}\_{n,m} + \hat{a}\_{n+1,m}^\dagger \hat{b}\_{n,m} + \hat{a}\_{n,m}^\dagger \hat{c}\_{n,m} + \hat{a}\_{n,m+1}^\dagger \hat{c}\_{n,m} \right) + h.c.$$


&emsp;&emsp;一个局域化的波函数的例子是通过在实空间构造一个被限制在一个单独的“方块”上的波函数 $|\Psi\rangle$。这个方块由 4 个 A 格点包围，但这 4 个 A 格点上没有电子，电子只分布在边中心的 2 个 B 格点和 2 个 C 格点上。

$$|\Psi\rangle = N \left( +\hat{b}\_{0,0}^\dagger - \hat{c}\_{1,0}^\dagger + \hat{b}\_{0,1}^\dagger - \hat{c}\_{0,0}^\dagger \right) |0\rangle$$

&emsp;&emsp;计算从这个原胞向周围的四个A格点的跃迁概率，都是零，这就是因为多个轨道的相位差产生干涉相消的局域化，必须要相互作用打破：

$$\langle 0| \hat{a}\_{0,0} \hat{H} |\Psi\rangle = -t ( +N ) + (-t) ( -N ) = -tN + tN = 0$$
$$\langle 0| \hat{a}\_{1,0} \hat{H} |\Psi\rangle = -t ( +N ) + (-t) ( -N ) = -tN + tN = 0$$
$$\langle 0| \hat{a}\_{1,1} \hat{H} |\Psi\rangle = -t ( -N ) + (-t) ( +N ) = tN - tN = 0$$
$$\langle 0| \hat{a}\_{0,1} \hat{H} |\Psi\rangle = -t ( +N ) + (-t) ( -N ) = -tN + tN = 0$$

&emsp;&emsp;<font color=purple>综上所述</font> 多带体系，平带体系显著$\rightarrow$量子度规 $\rightarrow$ Wannier函数展宽 $\rightarrow$ 必然的非平庸重叠 $\rightarrow$ 相互作用解锁相消干涉 $\rightarrow$ 库珀对获得等效动能 $\rightarrow$ 宏观超导权重 $D_s \neq 0$。

## [PDF Download](/assets/2026-04-10-flat-band-superconductivity/flat-band-superconductivity.pdf)
