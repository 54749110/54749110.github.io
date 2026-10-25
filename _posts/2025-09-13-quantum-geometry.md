---
layout: post
title:  "Measuring correlations of Majorana in flat-band with quantum metric "
description: "I have read a recent work on flat band superconductivity. In flat band majorana system , quantum metric provides an additional long range decay length other than the majorana localization length . The length therefore can be detected by superconduting correlation functions numerically."
pin: true
math: true
mermaid: true
categories: [flat band superconductivity, quantum metric length]
tags: [superconductivity, flat band, majorana]
author: Xuan
---



## Measuring "Distance"
---
&emsp;&emsp; 许多情况下我们需要描述量子态之间的关联。比如Anderson insulator, 描述因为无序杂质的相位屏蔽，形成局域在每个格点上的波函数，它局域的程度如何。比如Kitave model中两端的marjorana，两端存在波函数的峰，是否会因为相互作用的引入使得两个marjorana之间存在明显的关联。一种描述的方法是关联长度，我直接观察波函数的弥散程度来考察它影响的范围，可以通过计算格林函数，或者是一些数值的方法去拟合。在这里希望通过一种普适的“距离”的定义，表述量子态之间的关联，从而定义一种关联长度“quantum metric length",来解决上述lieb-Kitave模型中出现平带超导时，关联的问题。


&emsp;&emsp; 大致思路如下：计算关联，我们可以直接计算overlap，如果用 $\lambda$标记哈密顿量，$H(\lambda)$，不同量子态之间的overlap为 $\left\langle\psi\left(\lambda_F\right) \mid \psi\left(\lambda_I\right)\right\rangle$, 可以通过无穷小的$\lambda$变化$\langle\psi(\lambda) \mid \psi(\lambda+\mathrm{d} \lambda)\rangle$，对其积分得到。而在希尔伯特空间中无穷小变化是可以定义距离微元$
\mathrm{d} s^2=\|\psi(\lambda+\mathrm{d} \lambda)-\psi(\lambda)\|^2
$的。需要关注真实的态矢生活的物理空间是投影希尔伯特空间，即态矢可以任意改变相位，“距离”不变，需要在一般的“距离”定义上增加一个规范。



&emsp;&emsp;线性空间的度量方式由度规矩阵与坐标微元的二次型给出，在这里我们忽略了$\psi(\lambda+\mathrm{d} \lambda)$展开的二次项，得到了张量的表示，其中$\lambda^{\mu}=(\lambda^{1},\lambda^{2}……\lambda^{N})$,而$\left\langle\partial_\mu \psi \mid \partial_\nu \psi\right\rangle$是度规矩阵。


$$\begin{aligned} \mathrm{d} s^2=\|\psi(\lambda+\mathrm{d} \lambda)-\psi(\lambda)\|^2=\langle\delta \psi \mid \delta \psi\rangle & =\left\langle\partial_\mu \psi \mid \partial_\nu \psi\right\rangle \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu \\ & =\left(\gamma_{\mu \nu}+i \sigma_{\mu \nu}\right) \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu\end{aligned}
\tag{1}
$$


&emsp;&emsp;接下来把度规矩阵分为实部$\gamma_{\mu \nu}$与虚部$\sigma_{\mu \nu}$。量子态的内积矩阵是厄密的，如同：

$$\begin{pmatrix}
  & a+ib \\\\
a-ib & 
\end{pmatrix}$$

&emsp;&emsp;这表明实部$\gamma_{\mu \nu}$=$\gamma_{\nu \mu}$，虚部$\sigma_{\mu \nu}=-\sigma_{\nu \mu}$。但是$\mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu$满足交换对称性，即$\mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu=\mathrm{d} \lambda^\nu \mathrm{d} \lambda^\mu$，上面矩阵对应$(a+ib)\mathrm{d} \lambda^1 \mathrm{d} \lambda^2=(a-ib)\mathrm{d} \lambda^2 \mathrm{d} \lambda^1$,$b=0$,即$\sigma_{\mu \nu}=0$，得到：

$$
\mathrm{d} s^2=\gamma_{\mu \nu} \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu
\tag{2}
$$

&emsp;&emsp;下面要考虑量子态满足的限制，量子态可以乘上任意相位，而度规矩阵规范不变。$\gamma_{\mu \nu}$不好，需要寻找规范不变量。记$\left|\psi^{\prime}(\lambda)\right\rangle=\exp ^{i \alpha(\lambda)}|\psi(\lambda)\rangle$，$\beta_\mu=i\left\langle\psi(\lambda) \mid \partial_\mu \psi(\lambda)\right\rangle$，$\partial_\mu \alpha(\lambda)=$$\partial_\mu \alpha$,利用归一性$\langle\varphi \mid \varphi\rangle=1$,$\left\langle\partial_\gamma \varphi \mid \partial_\mu \varphi\right\rangle=\gamma_{\mu \nu}+i \sigma_{\mu \nu}$


$$
\begin{aligned}
& \langle\delta \varphi ' \mid \delta \varphi '\rangle=\gamma_{\mu \nu}^{\prime}+i \sigma_{\mu \nu}^{\prime} \\\\
= & \left\langle e^{-i \alpha} \varphi_{\times}\left(-i \partial_\mu \alpha\right)+\left[\partial_\mu \varphi\right] \cdot e^{-i \alpha} \mid e^{i \alpha} \varphi \times\left(i \partial_\nu \alpha\right)+\left[\partial_\nu \varphi\right] e^{i \alpha}\right\rangle \\\\
= & \langle\varphi \mid \varphi\rangle e^{-i \alpha} e^{i \alpha} \cdot \partial_\mu \alpha \partial_\nu \alpha +\left\langle\partial_\mu \varphi \mid \partial_\nu \varphi\right\rangle+(-i)\left\langle \varphi \mid \partial_\nu \varphi\right\rangle \partial_\mu \alpha+i\left\langle\partial_\mu \varphi \mid \varphi\right\rangle \partial_\nu \alpha \\\\
= & \gamma_{\mu \nu}-\beta_\mu \partial_\nu \alpha-\beta_\nu \partial_\mu \alpha+\partial_\mu \alpha \partial_\nu \alpha +i\sigma_{\mu \nu}
\end{aligned}
\tag{3}
$$

&emsp;&emsp;其中$\beta_\mu(\lambda)=i\left\langle\psi(\lambda) \mid \partial_\mu \psi(\lambda)\right\rangle$称为Berry Connection贝利联络，上面的推导还需要用到它是一个纯实数，可以从归一化条件出发：

$$
\langle\psi(\lambda) \mid \psi(\lambda)\rangle=1
$$

&emsp;&emsp;对参数 $\lambda^\mu$ 求偏导数，得到：

$$
\partial_\mu\langle\psi(\lambda) \mid \psi(\lambda)\rangle=0
$$

&emsp;&emsp;展开后得到：

$$
\left\langle\partial_\mu \psi(\lambda) \mid \psi(\lambda)\right\rangle+\left\langle\psi(\lambda) \mid \partial_\mu \psi(\lambda)\right\rangle=0
$$

&emsp;&emsp;这表明：

$$
\left\langle\psi(\lambda) \mid \partial_\mu \psi(\lambda)\right\rangle=-\left\langle\partial_\mu \psi(\lambda) \mid \psi(\lambda)\right\rangle
$$

&emsp;&emsp;换句话说，$\left\langle\psi(\lambda) \mid \partial_\mu \psi(\lambda)\right\rangle$ 是一个纯虚数，即Berry Connection是一个纯实数，可以得到规范变换：

$$
\begin{aligned}
\gamma_{\mu \nu}^{\prime} & =\gamma_{\mu \nu}-\beta_\mu \partial_\nu \alpha-\beta_\nu \partial_\mu \alpha+\partial_\mu \alpha \partial_\nu \alpha \\\\
\sigma_{\mu \nu}^{\prime} & =\sigma_{\mu \nu}
\end{aligned}
\tag{4}
$$

&emsp;&emsp;我们考察Berry Connection的规范变换：

$$
\begin{aligned}
\beta_\mu^{\prime} & =i\left\langle\varphi^{\prime} \mid \partial_\mu \varphi^{\prime}\right\rangle \\\\
& =i\left\langle e^{-i \alpha} \varphi \mid e^{i \alpha} \partial_\mu \varphi+\left[i \partial_\mu \alpha\right] e^{i \alpha} \varphi\right\rangle \\\\
& =i\left\langle\varphi \mid \partial_\mu \varphi\right\rangle+i^2\langle\varphi \mid \varphi\rangle \partial_\mu \alpha \\\\
& =\beta_\mu-\partial_\mu \alpha
\end{aligned}
\tag{5}
$$

&emsp;&emsp; 因此，我们找到了规范不变量$g_{\mu\nu}=g_{\mu\nu}',\sigma_{\mu \nu}^{\prime}  =\sigma_{\mu \nu}$:

$$
g_{\mu \nu}(\lambda)=\gamma_{\mu \nu}(\lambda)-\beta_\mu(\lambda) \beta_\nu(\lambda)
\tag{6}
$$

&emsp;&emsp;综上，可以定义<font color=violet>Quantum Geometric Tensor</font>：

$$
Q_{\mu \nu}(\lambda):=\left\langle\partial_\mu \psi(\lambda) \mid \partial_\nu \psi(\lambda)\right\rangle-\left\langle\partial_\mu \psi(\lambda) \mid \psi(\lambda)\right\rangle\left\langle\psi(\lambda) \mid \partial_\nu \psi(\lambda)\right\rangle
\tag{7}
$$

&emsp;&emsp; 其中：

$$
g_{\mu \nu}=\operatorname{Re} Q_{\mu \nu} ; \quad \sigma_{\mu \nu}=\operatorname{Im} Q_{\mu \nu}
\tag{8}
$$


&emsp;&emsp; Math:&emsp;复射影空间 $(\mathbb{CP}^n)$ 是复向量空间 $(\mathbb{C}^{n+1})$ 中所有非零复向量的等价类的集合。两个非零复向量 $(z = (z_0, z_1, \dots, z_n))$ 和 $(w = (w_0, w_1, \dots, w_n))$ 等价，如果存在一个非零复数 $(\lambda \in \mathbb{C}^*)$，使得 $(z = \lambda w)$。投影希尔伯特空间就是通过$(e^{i\alpha}):U(1)$等价的，对应空间为$PH=H/U(1)$。$({CP}^n)$上面的Fubini-Study 度规在$(\mathbb{CP}^n)$ 的对称群 $(PU(n+1))$ 下不变，它在投影希尔伯特空间上就是我们的quantum geometric tensor。

&emsp;&emsp; 计算overlap,注意Berry connection纯实数，所有展开都最大保留到微元的两阶：

$$
\begin{aligned}
\langle\psi(\lambda) \mid \psi(\lambda+\mathrm{d} \lambda)\rangle &=  1+i \beta_\mu(\lambda) \mathrm{d} \lambda^\mu+\frac{1}{2}\left\langle\psi(\lambda) \mid \partial_\mu \partial_\nu \psi(\lambda)\right\rangle \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu \\\\
&=1+i \beta_\mu d \lambda^\mu+\frac{1}{2}\left[-\partial_\nu\left[i \beta_\mu\right]-\left\langle\partial_\nu \varphi \mid \partial_\mu \varphi\right\rangle\right] d \lambda^\nu d \lambda^\mu \\\\
Re \langle\varphi \mid \varphi(\lambda+d \lambda)\rangle & =1-\frac{1}{2} \gamma_{\mu \nu} d \lambda^\mu d \lambda^\nu \\\\
Im\langle\varphi \mid \varphi(\lambda+d \lambda)\rangle & =\beta_\mu d \lambda^\mu-(\frac{1}{2} \partial_\gamma i \beta_\mu+\frac{1}{2} \sigma_{\mu \nu})d \lambda^\mu d \lambda^\gamma \\\\
Re^2+Im^2 & \stackrel{second}{=} 1-\gamma_{\mu \nu} d \lambda^\mu d \lambda^\nu+\beta_\nu \beta_\mu d \lambda^\nu d \lambda^\mu \\\\
& =\left[1-\frac{1}{2}\left(\gamma_{\mu \nu}-\beta_\gamma \beta_\mu\right) d \lambda^\nu d \lambda^\mu\right]^2+O\left(d \lambda^\nu d \lambda^\mu\right) \text {. } \\\\
\sqrt{Re^2+Im^2} & \stackrel{second}{=} 1-\frac{1}{2}\left(\gamma_{\mu \nu}-\beta_\mu \beta_\nu\right) d \lambda^\nu d \lambda^\mu
\end{aligned}
\tag{9}
$$

&emsp;&emsp; 因此,得到了guage invariant的表示：

$$
\begin{aligned}
|\langle\psi(\lambda) \mid \psi(\lambda+\mathrm{d} \lambda)\rangle| & =1-\frac{1}{2}\left(\gamma_{\mu \nu}(\lambda)-\beta_\mu(\lambda) \beta_\nu(\lambda)\right) \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu \\\\
& =1-\frac{1}{2} g_{\mu \nu}(\lambda) \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu
\end{aligned}
$$

$$
\left|\left\langle\psi\left(\lambda_F\right) \mid \psi\left(\lambda_I\right)\right\rangle\right|=1-\frac{1}{2} \int_{\lambda_I}^{\lambda_F} g_{\mu \nu}(\lambda) \mathrm{d} \lambda^\mu \mathrm{d} \lambda^\nu
\tag{10}
$$



## Solving QMT ---  Approxiamation and Example
---
&emsp;&emsp; 我们假设绝热近似，非简并微扰，讨论基态波函数永远处于基态对应能量$E_0$，$\hat{H}(\lambda)\left|\phi_0(\lambda)\right\rangle=E_0(\lambda)\left|\phi_0(\lambda)\right\rangle$；先进行微分$\partial_\mu$，再左矢$\phi_n(\lambda)$，对比等号左右可以得到Feynman-Hellman关系：

$$
\begin{aligned}
& \left\langle\phi_n \mid \partial_\mu \phi_0\right\rangle=\frac{\left\langle\phi_n\right| \partial_\mu H\left|\phi_0\right\rangle}{E_0-E_n} \quad \text { if } n \neq 0 \\\\
& \left\langle\phi_0\right| \partial_\mu H\left|\phi_0\right\rangle=\partial_\mu E_0
\end{aligned}
\tag{11}
$$

&emsp;&emsp; 因此：

$$
\begin{aligned}
Q_{\mu \nu} & =\left\langle\partial_\mu \phi_0\right|\left(I-\left|\phi_0\right\rangle\left\langle\phi_0\right|\right)\left|\partial_\nu \phi_0\right\rangle \\\\
& =\sum_{n \neq 0}\left\langle\partial_\mu \phi_0 \mid \phi_n\right\rangle\left\langle\phi_n \mid \partial_\nu \phi_0\right\rangle \\\\
& =\sum_{n \neq 0} \frac{\left\langle\phi_0\right| \partial_\mu H\left|\phi_n\right\rangle\left\langle\phi_n\right| \partial_\nu H\left|\phi_0\right\rangle}{\left(E_0-E_n\right)^2}
\end{aligned}
\tag{12}
$$

&emsp;&emsp; Berry Curvature 的定义以及分量形式是：

$$
F_n(\mathbf{k}) = i \left( \langle \nabla_{\mathbf{k}} u_n(\mathbf{k}) | \times | \nabla_{\mathbf{k}} u_n(\mathbf{k}) \rangle \right)
\tag{13}
$$

$$
F_{n,\mu\nu} = i \left( \langle \partial_{\mu} u_n(\mathbf{k}) | \partial_{\nu} u_n(\mathbf{k}) \rangle - \langle \partial_{\nu} u_n(\mathbf{k}) | \partial_{\mu} u_n(\mathbf{k}) \rangle \right)
$$

&emsp;&emsp; 如果仔细观察$Q_{\mu \nu}$虚部$\sigma_{\mu \nu}$的形式，是正的上三角矩阵加上负的下三角矩阵，容易发现：

$$\begin{pmatrix}
  & a+ib \\\\
a-ib & 
\end{pmatrix}$$

$$
F_{\mu \nu}=i\left(Q_{\mu \nu}-Q_{\nu \mu}\right)=-2 \operatorname{Im} Q_{\mu \nu}=-2 \sigma_{\mu \nu}
$$

&emsp;&emsp;这说明：

$$
Q_{\mu \nu}=g_{\mu \nu}-\frac{i}{2} F_{\mu \nu}
\tag{14}
$$

&emsp;&emsp; 如果基态有简并度，可以用拓展的Feynman-Hellman关系得到相似的结论：

$$
Q_{\mu\nu ij}  =\sum_{n \neq 0, k(n)} \frac{\left\langle\phi_{0 i}\right| \partial_\mu H\left|\phi_{n k}\right\rangle\left\langle\phi_{n k}\right| \partial_\nu H\left|\phi_{0 j}\right\rangle}{\left(E_0-E_n\right)^2}
\tag{15}
$$


&emsp;&emsp; 例子:在磁场$B$下的自旋$1/2$模型。磁场强度$B$已知，磁场角度缓慢变化可以应用绝热近似，两个本征态$+，-$应当是沿磁场的两个方向的两个态，而哈密顿量参量只和磁场的空间角$(\theta,\phi)$有关，哈密顿量为：

$$
\begin{aligned}
H & =\mu \vec{\sigma} \cdot \vec{B} \\\\
 & =\mu B\left(\sigma^x \sin \theta \cos \phi+\sigma^y \sin \theta \sin \dot{\varphi}+\sigma^z \cos \theta\right) \\\\
& =\mu B\left(\begin{array}{cc}
\cos \theta, & e^{-\mathrm{i} \phi} \sin \theta \\\\
e^{\mathrm{i} \phi} \sin \theta, & -\cos \theta
\end{array}\right)
\end{aligned}
$$

&emsp;&emsp;本征值与本征能量为：


$$
\begin{aligned}
\mid + \rangle & =  \left(e^{-\mathrm{i} \phi / 2} \cos \frac{\theta}{2}, \quad e^{\mathrm{i} \phi / 2} \sin \frac{\theta}{2}\right)^T \\\\
\mid - \rangle & =  \left(-e^{-\mathrm{i} \phi / 2} \sin \frac{\theta}{2}, \quad e^{\mathrm{i} \phi / 2} \cos \frac{\theta}{2}\right)^T \\\\
& E_{ \pm}= \pm \mu B
\end{aligned}
$$

&emsp;&emsp; 计算$Q_{ij}$ :


$$
\begin{aligned}
&\begin{aligned}
Q_{\theta \theta} & =\frac{\langle-| \mu B\left(\begin{array}{cc}
-\sin \theta, & e^{-\mathrm{i} \phi} \cos \theta \\\\
e^{\mathrm{i} \phi} \cos \theta, & \sin \theta
\end{array}\right)|+\rangle\langle+| \mu B\left(\begin{array}{cc}
-\sin \theta, & e^{-\mathrm{i} \phi} \cos \theta \\\\
e^{\mathrm{i} \phi} \cos \theta, & \sin \theta
\end{array}\right)|-\rangle}{4 \mu^2 B^2} \\\\
& =\frac{\mu^2 B^2}{4 \mu^2 B^2}=\frac{1}{4}
\end{aligned}\\\\
&\begin{aligned}
Q_{\phi \phi} & =\frac{\langle-| \mu B\left(\begin{array}{cc}
0, & -\mathrm{i} e^{-\mathrm{i} \phi} \sin \theta \\\\
\mathrm{i} e^{\mathrm{i} \phi} \sin \theta, & 0
\end{array}\right)|+\rangle\langle+| \mu B\left(\begin{array}{cc}
0, & -\mathrm{i} e^{-\mathrm{i} \phi} \sin \theta \\\\
\mathrm{i} e^{\mathrm{i} \phi} \sin \theta, & 0
\end{array}\right)|-\rangle}{4 \mu^2 B^2} \\\\
& =\frac{\sin ^2 \theta}{4} \\\\
Q_{\theta \phi} & =\frac{\langle-| \mu B\left(\begin{array}{cc}
-\sin \theta, & e^{-\mathrm{i} \phi} \cos \theta \\\\
e^{\mathrm{i} \phi} \cos \theta, & \sin \theta
\end{array}\right)|+\rangle\langle+| \mu B\left(\begin{array}{cc}
0, & -\mathrm{i} e^{-\mathrm{i} \phi} \sin \theta \\\\
\mathrm{i} e^{\mathrm{i} \phi} \sin \theta, & 0
\end{array}\right)|-\rangle}{4 \mu^2 B^2} \\\\
& =-\frac{\mathrm{i} \sin \theta}{4}
\end{aligned}
\end{aligned}
$$

&emsp;&emsp;最终得到了：

$$
g_{\mu \nu}=\frac{1}{4}\left(\begin{array}{cc}
1, & 0 \\\\
0, & \sin ^2 \theta
\end{array}\right), F_{\mu \nu}=\frac{1}{2}\left(\begin{array}{cc}
0, & \sin \theta \\\\
-\sin \theta, & 0
\end{array}\right)
\tag{16}
$$


&emsp;&emsp;从几何的角度可以解释这个$g_{ij}$，$g_{ij}$是复流形上的一个度规，即可以衡量该流形上两点的距离，在参数空间$(\theta ,\phi)$中，流形上两点的距离是半径为二分之一球面上两点的最短弧长（测地线距离），用几何关系可以推得:


<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/1.png" width = "130" height = "100" alt="图片名称" align=center />

$$
e_\theta = \frac{\partial r}{\partial \theta} = R \begin{pmatrix}
\cos\theta \cos\phi \\\\
\cos\theta \sin\phi \\\\
-\sin\theta
\end{pmatrix},
e_\phi = \frac{\partial r}{\partial \phi} = R \sin\theta \begin{pmatrix}
-\sin\phi \\\\
\cos\phi \\\\
0
\end{pmatrix}.
$$

$$
g_{ij} =e_i \cdot e_j =  \begin{pmatrix}
R^2 & 0 \\\\
0 & R^2 \sin^2\theta
\end{pmatrix}.
$$


$$
ds^2 = g_{ij} dx^i dx^j = \frac{1}{4} (d\theta^2 + \sin^2\theta \, d\phi^2)
$$


&emsp;&emsp;对于Berry curvature,又称它为“动量空间的磁场分布”，在$(\theta ,\phi)$两分量足以描述弧面，我们先把它从球坐标转化为$(k_x,k_y,k_z)$笛卡尔坐标中的形式，需要用三分量描述：

$$
\begin{aligned}
F & = F_{\theta \phi} d \theta \wedge d \phi \\\\
  & = F_{\theta \phi} \frac{\partial(\theta , \phi)}{\partial(x , y)} d x \wedge d y +  F_{\theta \phi} \frac{\partial(\theta , \phi)}{\partial(y , z)} d y \wedge d z+ F_{\theta \phi} \frac{\partial(\theta , \phi)}{\partial(z , x)} d z\wedge d x \\\\
  & = F_{x y} d x \wedge d y +F_{y z} d y \wedge d z+F_{z x} d z \wedge d x
\end{aligned}
\tag{17}
$$

&emsp;&emsp;其中$(x,y,z)$即动量空间坐标，Jacobi行列式的结果是:

$$
\frac{\partial(\theta, \phi)}{\partial(x, y)} = -\frac{\cos\theta}{r^2 \sin\theta},
\frac{\partial(\theta, \phi)}{\partial(y, z)} = \frac{\cos\phi}{r^2 \sin\theta},
\frac{\partial(\theta, \phi)}{\partial(z, x)} = - \frac{\sin\phi}{r^2 \sin\theta}.
$$

&emsp;&emsp;可以看到，$k_z$向$F_{xy}$为$\cos{\theta}/2r^2=B_z$，这也说明了自旋1/2电子磁场应当有形如$-1/2r^2$的形式，从这里就可以计算缠绕数等物理量，计算结果是符合berry curvature性质的。(计算有问题)


## Another measurment -- Quadratic Spread and it's relation with Quantum Metric
---


## Introduction to Majorana 
---

## Solving Lieb-Kitaev model with Exact Diagonalization
---
 &emsp;&emsp;研究的对象是Lieb-Kitaev模型，这一节先求解，由于哈密顿量都是二费米子算符，实空间中的单粒子表象可以求解，k空间中的能带也可以画出，并能够得到波函数的形式；更进一步在马约拉纳表象下可以直观的了解对角化的过程。有关Lieb-Kitaev模型存在的物理在下一节介绍。

 &emsp;&emsp;lieb-kitaev模型的作用形式如图所示：

<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/2.png" width = "500" height = "200" alt="图片名称" align=center />

 &emsp;&emsp;lieb模型一个原胞中有$A,B,C$三个基元，$A$基元上有势能$V$，$B$基元上面没有，$C$基元上面有势能$-V$。（$lieb$的作用是什么）。每个$B$基元都和最近邻的四个基元之间存在hopping，用$-J$描述,而原胞与原胞之间也存在hopping，用$-t$描述，化学势$\mu$存在于每个格点上。向lieb模型中加入配对相互作用，期望生成p波超导，配对相互作用存在于原胞与原胞之间，用$\Delta$描述。取开放边界条件一维链，总的哈密顿量为：

$$
\begin{aligned}
& H_{\text {on-site }} ： (-\mu) \sum_i n_i+V \sum_i n_{i C}-V \sum_i n_{i A} \\\\
& H_{\text {hopping }} ： (-t) \sum_i c_i^{+} c_{i+1}-J\left[\sum_i c_{i B}^{+} c_{i+1 C} +\sum_i c_B^{+} c_{i+1  A}+\sum_i c_{i B}^{+} c_{i A}+\sum_i c_{i B}^{+} c_{i C}\right] +h. c. \\\\
&H_{\text {pairing }} : \Delta \sum_i c_i^{+} c_{i+1}^{+}+h . c \text {. }
\end{aligned}
\tag{18}
$$





&emsp;&emsp;下面先在实空间写出哈密顿量的矩阵形式：对于哈密顿量的配对部分，是一个类似于$BDG$的形式，这提醒我们需要用$6N$维矩阵描述，N是原胞个数，6是基元数目*2。每六个的basis是：$[c_{i A},c_{i B},c_{i C},c_{i A}^{+},c_{i B}^{+},c_{i C}^{+}]$，或者叫做nambu basis。那么哈密顿量的矩阵能不能就把这些元素逐一按照basis填入呢，最终写出来这样一个矩阵？

$$
\begin{matrix}
 & c_{1 A} & c_{1 B} & c_{1 C} & c_{1 A}^{+} & c_{1 B}^{+} & c_{1 C}^{+} & c_{2 A}& c_{2 B} & c_{2 C} & c_{2 A}^{+} & c_{2 B}^{+} & c_{2 C}^{+}  \\\\
c_{1 A}^{+} & -V-\mu & -J  &&&&&-t & && \Delta\\\\
c_{1 B}^{+} &-J & -\mu & -J &&&&-J& -t &-J&& \Delta \\\\
c_{1 C}^{+} & & -J & V-\mu &&&&&  & -t &&& \Delta\\\\
c_{1 A} \\\\
c_{1 B} \\\\
c_{1 C} \\\\
c_{2 A}^{+} &-t &-J &&&&& -V-\mu & -J\\\\
c_{2 B}^{+} && -t &&&&&-J & -\mu & -J\\\\
c_{2 C}^{+} && -J & -t &&&& & -J & V-\mu\\\\
c_{2 A} & \Delta\\\\
c_{2 B} && \Delta\\\\
c_{2 C} &&& \Delta\\\\
\end{matrix}
$$

&emsp;&emsp;这忽略了$BDG$哈密顿量自带的一个变换规律,当把所有带$c^{+}$变为$c$，所有$c$变为$c^{+}$时，哈密顿量整体上添加一个负号。虽然在哈密顿量的onsite部分不满足这个变换规律，但是可以稍加修改$c_{i}^{+}c_{i}$等价于$c_{i}^{+}c_{i}-c_{i}c_{i}^{+}+const$常数收入$BDG$哈密顿量中，整体满足这一规律。这一规律如果应用到矩阵上面，定义变换算符为$\Gamma$,则有$\Gamma^{+}H\Gamma = -H$。这个变换的数学形式和时间反演算符很相似，在我们的$[c_{i A},c_{i B},c_{i C},c_{i A}^{+},c_{i B}^{+},c_{i C}^{+}]$中$\Gamma$的数学形式应当为反幺正的$(\tau_xK)$。泡利X矩阵让$[c_{i A},c_{i A}^{+}]$变为$[c_{i A}^{+},c_{i A}]$，复共轭算符$K$的平方提供了负号。


&emsp;&emsp;考虑一个二次型费米子哈密顿量，写成矩阵形式：
$$
H = \begin{pmatrix}
c^\dagger & c
\end{pmatrix}
\begin{pmatrix}
A & B \\\\
C & D
\end{pmatrix}
\begin{pmatrix}
c \\\\
c^\dagger
\end{pmatrix},
$$
&emsp;&emsp;变换矩阵，如果参数都是实数：
$$ K* \tau_x
\begin{pmatrix}
A & B \\\\
C & D
\end{pmatrix}
\tau_x = 
\begin{pmatrix} 
D & C \\\\
B & A
\end{pmatrix}
=-H
\tag{19}
$$

&emsp;&emsp;就是要让： $A=-D$，更一步的，如果$A,B,C,D$本身也是矩阵的话，满足$BDG$哈密顿量的矩阵应当有如下形式：

$$
\begin{pmatrix}
C & S \\\\
-S^{T} & -C^{T}
\end{pmatrix}
\tag{20}
$$

&emsp;&emsp;这个变换我们通常称为粒子-空穴（particle-hole）变换。超导$BCS$理论说会形成cooper pair，也就是说$BDG$哈密顿量包含着成对激发的粒子和空穴对，满足粒子空穴对称性。但是我认为这种说法是一种冗余，因为只要是单粒子表象二费米子算符我总有方法把哈密顿量转化为粒子-空穴对称的形式，换句话说，只要哈密顿量可以选取$[c_{i A},c_{i B},c_{i C},c_{i A}^{+},c_{i B}^{+},c_{i C}^{+}]$这样的前三者和后三者为复共轭的关系的basis，对应的扩展basis后的矩阵就需要写作上面的形式。可以考虑一个最简单的无相互电子气模型，可以选择$c_{i}$作为basis求解，也可以冗余的选取$[c_{i}，c_{i}^{+}]$为basis，只要把常数收入哈密顿量中，然后就会解出一个$+E$的电子和$-E$的空穴，满足“粒子空穴对称性”。实际这个空穴没有意义，加入常数之后只有这个电子的能量。无相互电子气模型扩展basis完全是冗余，而这里由于配对相互作用的引入非对角元上有了元素，必须要引入扩展的basis。如果不引入那肯定是错的，如果引入了我一开始写的只有一半的矩阵那就不满足数学变换的规律，不得不写。所以$BDG$是比较真正的粒子-空穴对称性的。所以如果能带的说法仍旧适用的话我们还是需要两条对称的能带，而不是扩展之后产生的粒子的能带的翻转.给出半满Hubbard模型$\mu=U/2$时的粒子空穴对称性比较合适.

&emsp;&emsp; 因此我们对角化如下矩阵:


$$
\begin{matrix}
 & c_{1 A} & c_{1 B} & c_{1 C} & c_{1 A}^{+} & c_{1 B}^{+} & c_{1 C}^{+} & c_{2 A}& c_{2 B} & c_{2 C} & c_{2 A}^{+} & c_{2 B}^{+} & c_{2 C}^{+}  \\\\
c_{1 A}^{+} & -V-\mu & -J  &&&&&-t & && \Delta\\\\
c_{1 B}^{+} &-J & -\mu & -J &&&&-J& -t &-J&& \Delta \\\\
c_{1 C}^{+} & & -J & V-\mu &&&&&  & -t &&& \Delta\\\\
c_{1 A} &&&& V+\mu & J&& -\Delta &&& t\\\\
c_{1 B} &&&& J & \mu & J && -\Delta &&J & t & J\\\\
c_{1 C} &&&&& J & -V+\mu &&& -\Delta &&& t \\\\
c_{2 A}^{+} &-t &-J &&-\Delta&&& -V-\mu & -J\\\\
c_{2 B}^{+} && -t &&&-\Delta&&-J & -\mu & -J\\\\
c_{2 C}^{+} && -J & -t &&&-\Delta& & -J & V-\mu\\\\
c_{2 A} & \Delta  &&& t&J &&&&& V+\mu & J\\\\
c_{2 B} && \Delta&&&t &&&&&J&\mu&J\\\\
c_{2 C} &&& \Delta&&J&t&&&&&J&-V+\mu\\\\
\end{matrix}
$$

&emsp;&emsp;做对角化，结果：


<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/3.png" width = "300" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/4.png" width = "300" height = "200" alt="图片名称" align=center />

&emsp;&emsp;


<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/5.png" width = "300" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/6.png" width = "300" height = "200" alt="图片名称" align=center />


&emsp;&emsp;参数：$V=0.2J,t=3*10^{-4}J,\Delta=0.6t$，改变横坐标$\mu$，记录对角化得到的本征值$energy level$，实空间本征向量$|wavefunction|$，以及格点上波函数的衰减规律$ln|wavefunction|$。现象：

一、能级，存在两个能级$E=0$，存在锥于$\mu=|2t|$，能级$E=0$仅在$-2t<\mu<2t$存在。

二、能级$E=0$对应波函数仅在开放边界的两端存在非零峰，与寻常能级波函数不同。

三、非零峰存在指数衰减，衰减非对称，且有两套衰减模式。


## Quantum metric solution of localization length in k-space
---

#### <font color=purple>Solving analytic form of wavefunction </font>
---

&emsp;&emsp;下面的论述尝试说明，为什么在靠近边界的部分存在$BCS$的衰减模式,内部的衰减模式可以用$QML$来衡量。首先就是要把$k$空间的marjorana波函数解析的写出来，换言之需要排除正常波函数的干扰，近似保留$E(k)=0$的波函数部分。先对Lieb-Kitaev模型做傅里叶变换到k-空间，比如（注意$iA,iB$都具有$R_{i}$坐标，而不是$R_{iA}，R_{iB}$，否则不具有$G$平移不变性了）：

$$
\begin{aligned}
& -J\left[C_{i A}^{+} C_{i B}+C_{ (i+1)A}^{+}  C_{i B}\right] \\\\
= & -J\left[\sum_{k k^{\prime}} e^{ik R_i} e^{-i  kR_i} C_k^{+} C_k \prime+\sum_{k k_k} e^{i k\left(R_i+a\right)} e^{-i k' R_i} C_k^{+} C_{k'}\right] \\\\
= & -J\sum_k \left(1+e^{i k a}\right) C_k^{+} C_k
\end{aligned}
\tag{21}
$$

$$
\begin{aligned}
& \Delta C_{i+1}^{+} C_i^{+}-\Delta C_i^{+} C_{i+1}^{+} \\\\
= & \Delta \sum_{k k^{\prime}} C_k^{+} C_{k^{\prime}}^{+}\left[e^{i k ( R_i+a)} e^{i k^{\prime} R_i-} e^{i k R_i} e^{i k^{\prime}\left(R_i+a\right)}\right] \\\\
= & \Delta \sum_{k } C_k^{+} C_{-k}^{+}\left[e^{i k\left(R_i+a\right)} e^{-i k R_i}-e^{i k R_i} e^{-i k\left(R_i+a\right)}\right] \\\\
= & \Delta \sum_k C_k^{+} C_{-k}^{+}\left[e^{i k a}-e^{-i k a}\right] \\\\
= & 2i \Delta \sum_k \sin (k a) C_k^{+} C_{-k}^{+}
\end{aligned}
\tag{22}
$$

&emsp;&emsp;总的PBC哈密顿量为：

$$
h(k)=(-2 t \cos (k a)-\mu) \mathbb{I}_3+\left(\begin{array}{ccc}
-V & a_k & 0 \\\\
a_k^* & 0 & a_k^* \\\\
0 & a_k & V
\end{array}\right)
$$

$$
H_{\mathrm{0}}=\sum_k \hat{\Psi}^{\dagger}(k)\left(\begin{array}{cc}
h(k) & -i 2 \Delta \sin (k a) \mathbb{I}_3 \\\\
i 2 \Delta \sin (k a) \mathbb{I}_3 & -h^*(-k)
\end{array}\right) \hat{\Psi}(k)
\tag{23}
$$

&emsp;&emsp;其中$a_k=-J(1+e^{ika})$，$\hat{\Psi}(k)=\left(\hat{\boldsymbol{c}}(k), \hat{\boldsymbol{c}}^{\dagger}(-k)\right)^{\mathrm{T}}$。而从PBC到OBC，加入的哈密顿量删去了首尾的连接，类似的在nambu表象下面写出一个大矩阵：

$$
H_1=\frac{1}{\mathcal{N}} \sum_{k k^{\prime}} \hat{\Psi}^{\dagger}(k) U\left(k, k^{\prime}\right) \hat{\Psi}\left(k^{\prime}\right) 
$$

$$
U\left(k, k^{\prime}\right)=-U_{01}^{\dagger} e^{-i k a}-U_{01} e^{i k^{\prime} a} 
$$

$$
U_{01}=\left(\begin{array}{cc}
h_{01} & -\tilde{\Delta} \\\\
\tilde{\Delta} & -h_{01}^*
\end{array}\right)
$$

$$
h_{01}=\left(\begin{array}{ccc}
-t & -J & 0 \\\\
0 & -t & 0 \\\\
0 & -J & -t
\end{array}\right) \quad  \quad \tilde{\Delta}=\left(\begin{array}{ccc}
\Delta & 0 & 0 \\\\
0 & \Delta & 0 \\\\
0 & 0 & \Delta
\end{array}\right) .
\tag{24}
$$


&emsp;&emsp;总的哈密顿量就是$H=H_0+H_1$对于$H_1$.由于不再对于格点求和，哈密顿量不再是分块对角的。也就是说解析上来看仍然要对角化一个大矩阵，所幸我们观察之前的马约拉纳能级，再观察PBC的Lieb-Kitaev模型k-空间应当具有如下的能带：



<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/7.png" width = "300" height = "200" alt="图片名称" align=center />

&emsp;&emsp;观察到能带中出现平带，在$\mu,t$较小时，平带能级中产生激发。如果我们对于k-空间的大矩阵basis做近似，只保留平带能级的basis,一般是不完备的。但是这里当激发处于平带上时，更进一步，当$t=0$就是完全的平带，平带的能带宽度远小于平带到导带的距离，几乎不可能跨越能带激发，因此可以用平带basis近似。我们先求解$H_0$能带，这是容易求解的分块对角矩阵，得到平带本征bloch函数$g_{n}(k)$,再把$H_1$用平带bloch函数$g_{n}(k)$展开，求解对应于$E=0$的本征函数：

$$
H=\frac{1}{\mathcal{N}} \sum_{n, n^{\prime}=1}^{N_f} \sum_{\boldsymbol{k}, \boldsymbol{k}^{\prime}}\left(\varepsilon_n(\boldsymbol{k}) \delta_{n n^{\prime}} \delta_{\boldsymbol{k} \boldsymbol{k}^{\prime}}+\sum_{\alpha, \beta=1}^{N_h} g_{n, \alpha}^*(\boldsymbol{k}) U_{\alpha \beta}\left(\boldsymbol{k}, \boldsymbol{k}^{\prime}\right) g_{n^{\prime}, \beta}\left(\boldsymbol{k}^{\prime}\right)\right) a_n^{\dagger}(k) a_{n^{\prime}}\left(k^{\prime}\right) 
\tag{25}
$$

&emsp;&emsp;其中$N_f$是平带basis的数目,$N_h$是nambu表象orbital数目，$\varepsilon_n(k),g_{n, \alpha}(k)$是$H_0$本征值，平带产生湮灭算符$a_n^{\dagger}(k)$通过基矢变换$c_k = \sum_{n=1}^{N_f} g_{n, \alpha}(\boldsymbol{k}) a_n(\boldsymbol{k})$与原本能带产生湮灭算符$c_k$联系。给出试探波函数，它是平带波函数$\psi_{n \boldsymbol{k}}(\boldsymbol{r})$的线性组合：

$$
\psi_\alpha(\boldsymbol{r})=\frac{1}{\mathcal{N}} \sum_{n=1}^{N_f} \sum_{\boldsymbol{k}} w_{n \boldsymbol{k}} \psi_{n \boldsymbol{k}}(\boldsymbol{r})
\tag{26}
$$

&emsp;&emsp;代入哈密顿量中，可以求解对应$E=0$，参数$w_{n \boldsymbol{k}}$的值：

$$
\frac{1}{\mathcal{N}} \sum_{n=1}^{N_f} \sum_{\boldsymbol{k}^{\prime}}\left(\varepsilon_n(\boldsymbol{k}) \delta_{n n^{\prime}} \delta_{\boldsymbol{k} \boldsymbol{k}^{\prime}}+\sum_{\alpha, \beta} g_{n, \alpha}^*(\boldsymbol{k}) U_{\alpha \beta}\left(\boldsymbol{k}, \boldsymbol{k}^{\prime}\right) g_{n^{\prime}, \beta}\left(\boldsymbol{k}^{\prime}\right)\right) w_{n^{\prime} \boldsymbol{k}^{\prime}}=E w_{n \boldsymbol{k}}
\tag{27}
$$

&emsp;&emsp;可以把平带波函数$\psi_{n \boldsymbol{k}}(\boldsymbol{r})$用原子轨道展开：

$$
\begin{aligned}
\psi_{n k}(r) & =\sum_{R_i} g_{n \alpha}(k) e^{i k \cdot R_i} \phi_\alpha \left(r-R_i\right)  \\\\
& \Leftrightarrow \sum_\alpha \langle n \mid \alpha\rangle\langle \alpha \mid r\rangle
\end{aligned}
$$

&emsp;&emsp;原子轨道波函数表示的是局域在$R_i$附近的$\alpha$轨道波函数，指数$e^{i k \cdot R_i}$构造Wannier基，展开系数参数为能带函数联络能带n与轨道$\alpha$指标。由于二次量子化的$t$非常小，而回忆$t$的Wannier函数构造方法，知道这里的原子轨道波函数$\phi_\alpha$相当局域，可以用$\delta(r-R_i)$代替，带入上式就得到了结果$g_{n, \alpha}(\boldsymbol{k}) e^{i \boldsymbol{k} \boldsymbol{r}}$


&emsp;&emsp;综上所述，总的平带波函数就可以表达出来了：

$$
\psi_\alpha(\boldsymbol{r})=\frac{1}{\mathcal{N}} \sum_{n=1}^{N_f} \sum_{\boldsymbol{k}} w_{n \boldsymbol{k}} g_{n, \alpha}(\boldsymbol{k}) e^{i \boldsymbol{k} \boldsymbol{r}}=\frac{1}{\mathcal{N}^2} \sum_{n=1}^{N_f} \sum_{\boldsymbol{k}} \sum_{\beta, \gamma=1}^{N_h} \frac{g_{n, \alpha}(\boldsymbol{k}) g_{n, \beta}^*(\boldsymbol{k}) e^{i \boldsymbol{k} \boldsymbol{r}}}{E-\varepsilon_n(\boldsymbol{k})} \sum_{n \prime=1}^{N_f} \sum_{\boldsymbol{k}^{\prime}} U_{\beta \gamma}\left(\boldsymbol{k}, \boldsymbol{k}^{\prime}\right) g_{n^{\prime}, \gamma}\left(\boldsymbol{k}^{\prime}\right) w_{n^{\prime} \boldsymbol{k}^{\prime}} 
\tag{28}
$$

&emsp;&emsp;更直观的，可以把这个波函数写作左右两个端点处波函数的线性组合：

$$
\begin{aligned}
& \sum_{\beta \cdot \gamma} g_{n \beta}^{+}(k) U_{\beta \gamma}\left(k , k^{\prime}\right) g_{n \gamma}(k^{\prime})   \\\\
= & \sum_{\beta \gamma} g_{n \beta}^{+}(k) \cdot\left[-U_{01}^{+} e^{-i k a}-U_{0 1} e^{i k^{\prime} a}\right] g_{n' \gamma }(k') \\\\
\stackrel{\text { Matrix }}{=} & g_n^{\dagger}(k)\left[-U_{01}^{+} e^{-i k a}-U_{01} e^{i k^{\prime} a}\right] g_n(k) \\\\
\stackrel{\text { left }}{=} & -g_n^{+}(k) U_{01}^{+} e^{-i k a} g_n(k).
\end{aligned}
$$

$$
\begin{aligned}
& \psi_\alpha(x)=\sum_{k n} g_{n \alpha}(k) \cdot\left[-g_n^{+}(k) U_{01} g_n(k) e^{i k^{\prime} a} \cdot e^{i k x}\right] \frac{1 \times w_{n k'}}{E-\varepsilon_n(k)} \\\\
\stackrel{\text { Matrix }}{=} & \sum_{n k} g_n(k) g_n^{+}(k) U_{01}^{\prime}\left[\sum_{k^{\prime}} \frac{w_n k^{\prime}}{1} \times e^{i k^{\prime} a} g_n\left(k^{\prime}\right)\right] \frac{- e^{i k x}}{E-\varepsilon_n(k)} \\\\
& =\sum_{n k} g_n(k) g_n^{+}(k) U_{01} \psi(a) \frac{-e^{i k x}}{E-\varepsilon_n(k)}
\end{aligned}
$$



$$
\begin{aligned}
\psi(x) & =-\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k(x-N a)} U_{01} \psi(a)-\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k(x-a)} U_{01}^{\dagger} \psi(N a) \\\\
& =-G^p(x, N a ; E) U_{01} \psi(a)-G^p(x, a ; E) U_{01}^{\dagger} \psi(N a)\\\\
& = \psi_L(x)+\psi_R(x) \\\\
G^p\left(x_j, x_{j^{\prime}} ; E\right) & =\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k\left(x_j-x_{j^{\prime}}\right)}
\end{aligned}
\tag{29}
$$

&emsp;&emsp; 其中，$E=0,U_{01}$在$H_1$中。只有两步需要计算，第一步对角化$H_0$，第二步解出参数$w_{n \boldsymbol{k}}$，用它构造$\psi(a),\psi(N a)$。再仔细考察公式29，它是一个列向量的形式：


$$
\left(\begin{array}{c}
\varphi_1(x) \\\\
\vdots \\\\
\vdots \\\\
\varphi_6(x)
\end{array}\right)=\left(\begin{array}{c}
g_1(k) \\\\
\vdots \\\\
g_6(k)
\end{array}\right) \times \text { number }
$$


&emsp;&emsp;从中发现，波函数$\psi$和能带函数的orbital指标是一一对应的，并不存在由多个orbital在$a$处的波函数线性组合的情况。再对于上面得到的结论验证两个端点处的一致性:


$$
\begin{aligned}
\varphi(a) & =-\frac{1}{N} \sum_{n k} \frac{g_n(k) g_n^t(k)}{E-\varepsilon_n(k)} e^{i k a} \omega_{nk} g_n(k) e^{i k a}  U_{01} \\\\
& -\frac{1}{N} \sum_{n k} \frac{1}{E-\varepsilon_n(k)} e^{i k \cdot 0} U_{01}^{+} \cdot g_n(k) e^{i k N a} \omega_{nk} \\\\
& =-\frac{1}{N} \frac{g_n(k) g_n^t(k)}{E-\varepsilon_n(k)} \omega_{nk} U( k, k^{\prime})\times e^{i k a} g_n(k) \\\\
& =-\frac{1}{N} \sum_{n k} \omega_{nk} g_n(k) e^{i k a} \\\\
& =\varphi(a)
\end{aligned}
$$


#### <font color=purple>Separating particle-hole part from orbital part </font>
---

&emsp;&emsp;（下面一堆线性代数）我们先做第一步，按照上一节的近似方法，把哈密顿量用Lieb模型的平带基做展开，这样六个基的矩阵可以被简化为两个基的矩阵。lieb模型的哈密顿量是一个三维形式：

$$
h(k)=(-2 t \cos (k a)-\mu) \mathbb{I}_3+\left(\begin{array}{ccc}
-V & a_k & 0 \\\\
a_k^* & 0 & a_k^* \\\\
0 & a_k & V
\end{array}\right)
$$

&emsp;&emsp;有三个本征值，其中本征值近似为零的就是要寻找的，是$-2 t \cos (k a)-\mu$，这个本征值对应的本征向量为：


$$
u_0(k)=\frac{1}{\sqrt{4 J^2(1+\cos (k a))+V^2}}\left(\begin{array}{c}
a_k \\
V \\
-a_k
\end{array}\right)
\tag{30}
$$


&emsp;&emsp;对应于particle分支相应的基就是$a_{1}=(c_{kA},c_{kB},c_{kc})\cdot u_{0}(k)$,同理把对应于hole分支的写出来，总的基矢变换可以写作：


$$
\begin{aligned}
\left(v_+, v_-\right) & =\begin{array}{llll}(
c_{A k} & c_{B k} & c_{C k} & c_{-A k}^{+} & c_{-B k}^{+} & c_{-C k}^{+})
\begin{pmatrix}
u_{0}(k) & 0 \\\\
0 & u^{\star}_{0}(-k)
\end{pmatrix}
\end{array} \\\\
& = \Psi^{+}(k) \cdot W_1(k)
\end{aligned}
\tag{31}
$$



&emsp;&emsp;把基矢变换作用到哈密顿量矩阵上面：

$$
\begin{aligned}
H_0 & =\sum_k \hat{\Psi}^{\dagger}(k) \begin{pmatrix} h(k) & \Delta(k)\cdot I \\\\
\Delta^{\star}(k)\cdot I & -h^{\star}(-k) 
\end{pmatrix}
\hat{\Psi}(k) \\\\
& = \sum_k   \hat{\Psi}^{\dagger}(k)  W_1(k)W_1^{\dagger}(k)\begin{pmatrix} h(k) & \Delta(k)\cdot I \\\\
\Delta^{\star}(k)\cdot I & -h^{\star}(-k) 
\end{pmatrix} W_1(k)W_1^{\dagger}(k)
\hat{\Psi}(k) \\\\
& = \sum_k   \hat{\Psi}^{\dagger}(k)  W_1(k)  \begin{pmatrix}
u_{0}(k)h(k)u_{0}^{\dagger}(k) & u_{0}^{\dagger}(k)\Delta(k)\cdot I u_{0}^{\star}(-k) \\\\
u_{0}^{T}(k)\Delta^{\star}(k)\cdot I u_{0}(-k) &  u_{0}^{T}(-k)-h^{\star}(-k) u_{0}^{\star}(-k)
\end{pmatrix} W_1^{\dagger}(k)
\hat{\Psi}(k) \\\\
\end{aligned}
$$

&emsp;&emsp; $u_{0}(k)h(k)u_{0}^{\dagger}(k)$就是对角化矩阵，得到接近零的本征值$-2 t \cos (k a)-\mu$，而$u_{0}^{\dagger}(k)\Delta(k)\cdot I u_{0}^{\star}(-k)$就是特征向量归一性，得到$\Delta(k)\cdot I$,把这些结果带入，得到：

$$
H_0 = \sum_k \hat{\Psi}^{\dagger}(k) W_1(k)\left(\begin{array}{cc}
-\mu-2 t \cos (k a) & -i 2 \Delta \sin (k a) \\\\
i 2 \Delta \sin (k a) & \mu+2 t \cos (k a)
\end{array}\right) W_1^{\dagger}(k) \hat{\Psi}(k)
\tag{32}
$$


&emsp;&emsp;第二步我们直接对角化中间的矩阵，定义它是$H_{\text {Kitaev }}(k)$ 定义它的本征向量为$W_2=\left(v_{-}, v_{+}\right)$，$H_{\text {Kitaev }} v_{ \pm}=\varepsilon_{ \pm}(k) v_{ \pm}$，这样就有：

$$
\begin{aligned}
H_0 & =\sum_k \hat{\Psi}^{\dagger}(k) W_1(k) W_2(k)\left(\begin{array}{cc}
\varepsilon_{-}(k) & 0 \\\\
0 & \varepsilon_{+}(k)
\end{array}\right) W_2^{\dagger}(k) W_1^{\dagger}(k) \hat{\Psi}(k) \\\\
& =\sum_k \sum_{n= \pm} \varepsilon_n(k) \hat{a}_n^{\dagger}(k) \hat{a}_n(k) .
\end{aligned}
$$

&emsp;&emsp;第二步对角化的结果是：

$$
\varepsilon_{ \pm}(k)= \pm \sqrt{(-\mu-2 t \cos (k a))^2+4 \Delta^2 \sin ^2(k a)},
$$

$$
v_{ \pm}(k)=\frac{e^{i \phi_{ \pm}(k)}}{\sqrt{\left(\varepsilon_{ \pm}(k)+\mu+2 t \cos (k a)\right)^2+4 \Delta^2 \sin ^2(k a)}}\binom{-i 2 \Delta \sin (k a)}{\varepsilon_{ \pm}(k)+\mu+2 t \cos k a}
\tag{33}
$$

&emsp;&emsp;在这个结果在中可以乘上相位$e^{i \phi_{ \pm}(k)}$。观察公式$(32)$，发现矩阵中的就是单带Kitaev模型的哈密顿量。因此，lieb-Kitaev模型把Kitaev链放入Lieb晶格的结果并不会改变Kitaev链的物理，仍然具有Majorana的物理。做的只是改变一个basis到$W_1$平带上面，从而可以在平带体系中研究该问题。总的本征向量因此可以做直积展开：$W=\left(g_{-}(k), g_{+}(k)\right)=W_1 W_2$，其中:

$$
g_{ \pm 6 \times 1}(k) =v_{  2\times 1\pm}(k)  \otimes u_{ 3 \times 1 }(k) 
\tag{34}
$$


&emsp;&emsp;现在回到波函数的形式，公式$(29)$右半部分：

$$
\psi_R(x) = -\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k(x-a)} U_{01}^{\dagger} \psi(N a)
$$

$$
U_{01}=\left(\begin{array}{cc}
h_{01} & -\tilde{\Delta} \\\\
\tilde{\Delta} & -h_{01}^*
\end{array}\right)
= \tau_{z} \otimes h_{01}  - i \tau_{y} \otimes \tilde{\Delta}
$$

$$
h_{01}=\left(\begin{array}{ccc}
-t & -J & 0 \\\\
0 & -t & 0 \\\\
0 & -J & -t
\end{array}\right) \quad  \quad \tilde{\Delta}=\left(\begin{array}{ccc}
\Delta & 0 & 0 \\\\
0 & \Delta & 0 \\\\
0 & 0 & \Delta
\end{array}\right) .
$$

&emsp;&emsp;其中任意的基都可以按照公式$(34)$做直积展开，我们展开$g_n(k),U_{01},\psi(N a) = \psi^{\mu}(N a) \otimes \psi^{\nu}(N a)$ ,利用直积的性质$(A \otimes B)(C \otimes D)=(AB) \otimes (CD)$ :


$$
\begin{aligned}
& g_{6 \times 1} \cdot g_{1 \times 6}^{\dagger} \cdot U_{6 \times 6}^{\dagger} \cdot \psi_{6 \times 1} \\\\
= & \left(v_{2 \times 1} \otimes u_{3 \times 1}\right) \cdot\left(v_{1 \times 2}^{\dagger} \otimes u_{1 \times 3}^{\dagger}\right) \cdot\left(\tau_{z 2 \times 2}^{\dagger} \otimes h_{013 \times 3}^{\dagger}-{(i \tau_{y 2 \times 2})}^{\dagger} \otimes \Delta_{3 \times 3}^{\dagger}\right) \cdot\left(\psi_{2 \times 1}^\nu \otimes \psi_{3 \times 1}^\mu\right) \\\\
= & \left(v v^{\dagger} \tau_z^{\dagger} \psi^\nu\right) \otimes\left(u u^{\dagger} h_{01}^{\dagger} \psi^\mu\right)-\left(v v^{\dagger}\left(i \tau_y\right)^{\dagger} \psi^\nu\right) \otimes\left(u u^{\dagger} \Delta^{\dagger} \psi^\mu\right)
\end{aligned}
$$

$$
\begin{aligned}
\psi_R(x) & =-\frac{1}{N} \sum_{n= \pm} \sum_k \frac{e^{i k(x-a)}}{E-\varepsilon_n(k)}\left[v_n(k) v_n^{\dagger}(k) \tau_z^{\dagger} \psi^v(N a)\right] \otimes\left[u_0(k) u_0^{\dagger}(k) h_{01}^{\dagger} \psi^u(N a)\right]\\\\
& +\left[v_n(k) v_n^{\dagger}(k)\left(-i \tau_y\right)^{\dagger} \psi^v(N a)\right] \otimes\left[u_0(k) u_0^{\dagger}(k) \tilde{\Delta}^{\dagger} \psi^u(N a)\right]
\end{aligned}
\tag{35}
$$

&emsp;&emsp;四项逐一计算，注意$\varepsilon_n(k)$是PBC下面得到的接近于零的，平带上的能带函数，对应于公式$(33)$，具有性质$\varepsilon_{-}(k)={-\varepsilon_{+}}(k)$而在加入了OBC之后，我们期望得到满足马约拉纳代数的严格的平带$E=0$，第一项为：

$$
\begin{aligned}
& -\frac{1}{N} \sum_{n= \pm} \sum_k \frac{1}{E-\varepsilon_n(k)}\left[v_n(k) v_n^{\dagger}(k) \tau_z^{\dagger} \psi^v(N a)\right] \\\\
& = (-\frac{1}{-\varepsilon_+(k)}v_+(k) v_+^{\dagger}(k) -\frac{1}{-\varepsilon_-(k)}v_-(k) v_-^{\dagger}(k)  )\tau_z^{\dagger} \psi^v(N a) \\\\
&=  \frac{1}{\varepsilon_+(k)}(v_+(k)v_+^{\dagger}(k)  - v_-(k) v_-^{\dagger}(k)  ) \tau_z^{\dagger} \psi^v(N a) \\\\
& =  \frac{1}{\varepsilon_+(k)} ( \frac{1}{\varepsilon_+(k)} \cdot 
\left(\nu_{+} ,\nu_{-}\right)^{\dagger}\begin{pmatrix}
\varepsilon_{+} & 0 \\\\
0 & -\varepsilon_{+} 
\end{pmatrix}\left(v_{+}, v_-\right)
) \tau_z^{\dagger} \psi^v(N a) \\\\
& =  {(\frac{1}{\varepsilon_+(k)})}^{2} H \tau_z^{\dagger} \psi^v(N a) \\\\
& =\left[\frac{1}{\varepsilon_{+}^2(k)}\left(\begin{array}{cc}
-\mu-2 t \cos (k a) & -i 2 \Delta \sin (k a) \\\\
i 2 \Delta \sin (k a) & \mu+2 t \cos (k a)
\end{array}\right)\left(\begin{array}{cc}
1 & 0 \\\\
0 & -1
\end{array}\right)\binom{1}{-1}\right] \\\\
& =\frac{-\mu-2 t \cos (k a)-i 2 \Delta \sin (k a)}{\varepsilon_{+}^2(k)}\binom{1}{-1}
\end{aligned}
\tag{36}
$$

&emsp;&emsp;同理，可以得到：

$$
\begin{aligned}
& \sum_k\left[\frac{1}{\varepsilon_{+}(k)}\left(v_{+}(k) v_{+}^{\dagger}(k)-v_{-}(k) v_{-}^{\dagger}(k)\right)\left(-i \tau_y\right)^{\dagger} \psi^v(N a)\right] \\\\
& = \left[\frac{1}{\varepsilon_{+}^2(k)}\left(\begin{array}{cc}
-\mu-2 t \cos (k a) & -i 2 \Delta \sin (k a) \\\\
i 2 \Delta \sin (k a) & \mu+2 t \cos (k a)
\end{array}\right)\left(\begin{array}{cc}
0 & 1 \\\\
-1 & 0
\end{array}\right)\binom{1}{-1}\right] \\\\
& =-\frac{-\mu-2 t \cos (k a)-i 2 \Delta \sin (k a)}{\varepsilon_{+}^2(k)}\binom{1}{-1} 
\end{aligned}
\tag{37}
$$

&emsp;&emsp;其中用到了$\psi^v(N a)=(1,-1)^{\mathrm{T}}$，同时还有：

$$
\psi^u(N a)=\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)
$$

&emsp;&emsp;这两个关系就是两个端点处的马约拉纳波函数的形式，在公式$(26)$中待定系数写出了波函数，需要严格对角化确定系数。我们也可以待定A轨道的波函数，把其它波函数用A轨道波函数表示，最后确定A轨道波函数就可以了。在开放边界条件的两端，B轨道，C轨道波函数与A轨道波函数有简单的关系，还是要从实空间波函数出发，总的待定波函数可以直积展开,$\psi(N a) = \psi^{\mu}(N a) \otimes \psi^{\nu}(N a)$,其中$\psi^{\mu}(N a)，$对应二个基的particle-hole部分，对应的实空间矩阵是2*2的四个分块，就是公式$(20)$:


$$
\begin{pmatrix}
C & S \\\\
-S^{T} & -C^{T}
\end{pmatrix}
$$

&emsp;&emsp;粒子空穴对称性就要求有两个相互反号的波函数。或者考察对应于 $c_{1A}^{\dagger}$ 和 $c_{1A}$ 的两列，写出当本征值为零时求解本征函数的方程：

$$
\begin{aligned}
& -V \psi_{1A} ^{particle}-J \psi_{1B}^{particle} -J \psi_{1C}^{particle} +\Delta \psi_{2A}^{hole}  = 0 \\\\
& V \psi_{1A}^{hole} +J \psi_{1B}^{hole} +J \psi_{1C}^{hole} -\Delta \psi_{2A}^{particle} = 0
\end{aligned}
$$

&emsp;&emsp;如果没有配对相互作用项，确实$\psi^{particle}=\psi^{hole}$和$\psi^{particle}=-\psi^{hole}$都可行，那是虚假的粒子空穴对称性。现在有这一项从上面这个公式来看似乎仍然都可行，但是这是一个100维的递推式，在V远大于$\Delta$情况下比如假设只有A轨道，可以简单编一个程序，结果非常的神奇,小量$\Delta$让波函数剧变。因此要得到我们所需的波函数，必须使用$\psi^v(N a)=(1,-1)^{\mathrm{T}}$

```python
# V=1 Delta = 0.01
# particle = hole ,这种情况解出来正常波函数，类似波动形式
for s in range(N) :
  H[s,s] = -1
for s in range(N-1) :
  H[s,s+1] = 0.01
  H[s+1,s] = -0.01  
# particle = - hole ,这种情况解出来波函数两头翘起，中间为零
for s in range(N) :
  H[s,s] = -1
for s in range(N-1) :
  H[s,s+1] = -0.01
  H[s+1,s] = 0.01  
```

&emsp;&emsp;另一方面对于$\psi^u(N a)$而言对应三个基$\psi_A,\psi_B,\psi_C$的轨道部分，对应的实空间矩阵是3*3的九个分块，同样从实空间矩阵写出对应于$\psi_A,\psi_B,\psi_C$的方程(particle部分)：

$$
\begin{aligned}
& -V \psi_{NA} + J \psi_{NB} = 0 \\\\
& J \psi_{NB} +  V \psi_{NC} = 0
\end{aligned}
$$

&emsp;&emsp;这样就可以在假定$\psi_{NA}$的情况下把其它轨道表示出来了，就是：

$$
\psi^u(N a)=\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)
\tag{38}
$$


&emsp;&emsp;因此后面两项：

$$
h_{01}^{\dagger} \psi^u(N a) =
\left(\begin{array}{ccc}
-t & 0 & 0 \\\\
-J & -t & -J \\\\
0 & 0 & -t
\end{array}\right)\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)=-t\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)
\tag{39}
$$


$$
\tilde{\Delta}^{\dagger} \psi^u(N a)=
\left(\begin{array}{ccc}
\Delta & 0 & 0 \\\\
0 & \Delta & 0 \\\\
0 & 0 & \Delta
\end{array}\right)\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)=\Delta\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right) \psi_A^u(N a)
\tag{40}
$$

&emsp;&emsp;把这四项组合起来，最终得到了(代入$\varepsilon_{ \pm}(k)= \pm \sqrt{(-\mu-2 t \cos (k a))^2+4 \Delta^2 \sin ^2(k a)}$对应PBC的Lieb-Kitaev模型本征值)

$$
\begin{aligned}
\psi_{\mathrm{R}}(x) & ([t \simeq \Delta]{\mathcal{O}(V / J)}) =\sum_k\frac{-\mu-2 t \cos (k a)-2 i \Delta \sin (k a)}{\varepsilon_{+}^2(k)}\binom{1}{-1}\otimes e^{i k(x-a)} u_0(k) u_0^{\dagger}(k)(-t-\Delta)\begin{pmatrix}
1 \\\\
V / J \\\\
-1
\end{pmatrix} \psi_A^u(N a) \\\\
& (\mu=0, t=\Delta)=\binom{1}{-1} \otimes \sum_ke^{i k x} u_0(k) u_0^{\dagger}(k)\begin{pmatrix}
1 \\\\
V / J \\\\
-1
\end{pmatrix} \psi_A^u(N a)
\end{aligned}
\tag{41}
$$


&emsp;&emsp;曾经，在$u_0(k)$之外，有许多包含着k的项。现在在平带近似下都消失了。这些包含着k的项全都会对计算QML产生影响，现在只有$u_0(k)$包含着k,就只是轨道的部分。这就是说Kitaev部分预言了marjorana,它的衰减只受轨道部分调控，毕竟Kitaev chain 也是要放入一个具体的Lattice中的，边界之外的事情就只归Lattice管了。

#### <font color=purple> Original Definition of Quadric Spread </font>
---


&emsp;&emsp;下面要说明，第一，QML可以描述平带波函数弥散的度量；第二，马约拉纳波函数可以写作两个关联长度指数衰减的过程，其中一个关联长度就是QML。对于第一个论点我们忽略具体模型，仅仅假设该波函数对应平带$MZM$, $E=0,\varepsilon_{n}(k) = \varepsilon_{n}$，这对应上一章第一节没有引入具体哈密顿量时的解析能带表示。定义：

$$
\begin{aligned}
\mathcal{Q} S_{Left} & =\sum_{x=a}^{N a}\left(x-x_{\mathrm{L}}\right)^2\left|\psi_{\mathrm{L}}(x)\right|^2 \\\\
& =\left\langle x^2\right\rangle_{\mathrm{L}}-x_{\mathrm{L}}^{\prime 2}
\end{aligned}
\tag{42}
$$

&emsp;&emsp;我们想用方差描述展宽，而如果quadratic spread是一个好的定义，它需要满足规范不变性。先普适的看看规范不变的quadratic spread形式，定义局域在R处的n能带wannier函数由bloch函数$\psi_{n \mathbf{k}}$组成：

$$
|R n\rangle=\frac{V}{(2 \pi)^3} \int d \mathbf{k} e^{-i \mathbf{k} \cdot R}\left|\psi_{n k}\right\rangle
$$


&emsp;&emsp;bloch函数$\psi_{n \mathbf{k}}$由周期函数与平面波组成：
$$
u_{n \mathbf{k}}(\mathbf{r})=e^{-i \mathbf{k} \cdot \mathbf{r}} \psi_{r \mathbf{k}}(\mathbf{r})
$$

&emsp;&emsp;现在要研究定义在左边界上的wannier函数的扩展性，也就是wannier函数$|0 n\rangle$

$$
\Omega=\sum_n\left[\left\langle r^2\right\rangle_n-\overline{\mathbf{r}}_n^2\right]
$$

$$
\overline{\mathbf{r}}_n=\langle\mathbf{0} n| \mathbf{r}|\mathbf{0} n\rangle      \left\langle r^2\right\rangle_n =\langle\mathbf{0} n| r^2|\mathbf{0} n\rangle
$$

&emsp;&emsp;用上面的bloch函数展开wannier函数。得到：

$$
\begin{aligned}
\langle r\rangle & =\left\langle 0n\right| r\left|0n \right\rangle=\frac{V^2}{(2 \pi)^6} \int d k d k^{\prime} \cdot\left\langle u_{n k^{\prime}}\right| r\left|u_{n k}\right\rangle \cdot e^{i (k-k^{\prime}) r} \\\\
& =\frac{V^2}{(2 \pi)^6} \int d k d k^{\prime}\left\langle u_n k^{\prime}\right|\nabla_k\left[e^{i k r}\left|u_{n k}\right\rangle\right]-e^{i k r} \nabla_k\left(\left|u_{n k}\right\rangle\right) \times \frac{e^{-i k'r}}{i} \\\\
& =\frac{V^2}{(2 \pi )^6}\left[\left\lvert\ \int d k d k^{\prime} \cdot \frac{1}{i}\left\langle\psi_k\right| \nabla_k\left|\psi_k\right\rangle+i e^{i\left(k-k^{\prime}\right) r}\left\langle u_{k^{\prime}}\right| \nabla_k\left|u_k\right\rangle\right.\right. \\\\
& =  \delta_{k \cdot k^{\prime}} 0\left(\psi_G=\psi_0\right)+i \frac{V}{(2 \pi)^3} \int d k \left\langle u_k(r)\right| \nabla_k\left|u_k(r)\right\rangle \\\\
& =i \frac{V}{(2 \pi)^3} \int d k\left\langle u_k(r)\right| \nabla_k\left|u_k(r)\right\rangle
\end{aligned}
\tag{43}
$$

&emsp;&emsp;类似的得到：

$$
\left.\left\langle r^2\right\rangle_n=\frac{V}{(2 \pi)^3} \int d \mathbf{k} \| \nabla_{\mathbf{k}} u_{n \mathbf{k}}\right\rangle\left.\right|^ 2 .
\tag{44}
$$

&emsp;&emsp;如果作用规范变换：
$$
\left|u_{n \mathbf{k}}\right\rangle \rightarrow e^{i \phi_n(\mathbf{k})}\left|u_{n \mathbf{k}}\right\rangle
$$

&emsp;&emsp;$\langle r\rangle$改变一个晶格矢量，但是$\Omega$依赖于规范，需要做修正，定义：

$$
\begin{aligned}
&\Omega=\Omega_{\mathrm{I}}+\tilde{\Omega},\\\\
&\Omega_{\mathrm{I}}=\left.\sum_n\left[\left\langle r^2\right\rangle_n-\sum_{\mathbf{R} m}|\langle\mathbf{R} m| \mathbf{r}| \mathbf{0} n\right\rangle\right|^ 2\\\\
&\left.\tilde{\Omega}=\sum_n \sum_{R m \neq 0n}|\langle\mathbf{R} m| \mathbf{r}| \mathbf{0} n\right\rangle\left.\right|^ 2 .
\end{aligned}
\tag{45}
$$


&emsp;&emsp;定义投影算符：

$$
\begin{aligned}
P= & \sum_{\mathbf{R} n} |\left.\mathbf{R} n\right\rangle  \langle\mathbf{R} n| \\\\
Q = & 1-P 
\end{aligned}
$$

&emsp;&emsp; 得到$\Omega_{\mathrm{I}}$:



$$
\begin{aligned}
& \Omega_1=\sum_{n \alpha}\left|0n\right| r_\alpha^2|0 n\rangle-\sum_{Rmn \alpha}\left\langle R_m\right| r_\alpha|0 n\rangle^*\langle R m| r_\alpha|0 n\rangle \\\\
& =\sum_{n \alpha}\left\langle 0n\right| r_\alpha\left(\hat{\mathbb{I}}-\sum_{R m}\left|R_m\right\rangle\left\langle R_m\right|\right) r_\alpha\left|0n\right\rangle \\\\
& =\sum_{n \alpha}\langle 0 n| r_\alpha Q r_\alpha\left|0n\right\rangle \\\\
& =\operatorname{Tr}\left[P r_\alpha Q r_\alpha\right]
\end{aligned}
$$

&emsp;&emsp; 其中$\alpha$对应$x,y,z$，利用${||A||}^2=\operatorname{tr}_{\mathrm{c}}\left[A^{\dagger} A\right] .P^2=P$，得到：

$$
\Omega_1 
=\|P x Q\|^2+\|P y Q\|^2+\|P z Q\|^2 
\tag{46}
$$

&emsp;&emsp;得到$\Omega_{\mathrm{I}}$里面有一项关键的$PQ$ :

$$
D_{12}^2= Tr[PQ]=1-Tr[P_0P]=
1-\left|\left\langle\Psi_0\left(\boldsymbol{\kappa}_1\right) \mid \Psi_0\left(\boldsymbol{\kappa}_2\right)\right\rangle\right|^2
$$


&emsp;&emsp;可以看到这一项就是规范不变的，$D$也就是量子态之间距离的定义，可以用之前的Quamtum Metric Tensor来描述：

$$
Q_{\mu \nu}(\lambda):=\left\langle\partial_\mu \psi(\lambda) \mid \partial_\nu \psi(\lambda)\right\rangle-\left\langle\partial_\mu \psi(\lambda) \mid \psi(\lambda)\right\rangle\left\langle\psi(\lambda) \mid \partial_\nu \psi(\lambda)\right\rangle
\tag{7}
$$

&emsp;&emsp;也可以直接变换$\Omega_{\mathrm{I}}$得到QMT的形式：

$$
\begin{aligned}
& \Omega_I=\sum_{n \alpha}\left|0n\right| r_\alpha^2|0 n\rangle-\sum_{Rmn \alpha}\left\langle R_m\right| r_\alpha|0 n\rangle^*\langle R m| r_\alpha|0 n\rangle \\\\
& \sim {(| \nabla_{\mathbf{k}} u_{n \mathbf{k}}\rangle)}^{2}-(i\left\langle u_k(r)\right| \nabla_k\left|u_k(r)\right\rangle \times -i \left\langle u_k(r)\right| \nabla_k\left|u_k(r)\right\rangle ^{\dagger}) \\\\
& =(\langle \nabla_{\mathbf{k}} u_{n \mathbf{k}} | \nabla_{\mathbf{k}} u_{n \mathbf{k}}\rangle)-\left\langle u_k(r)\right| [\nabla_k\left|u_k(r)\right\rangle] \times  [\left\langle u_k(r)\right| \nabla_k\left|]u_k(r)\right\rangle \\\\
& \sim Q
\end{aligned}
$$

&emsp;&emsp;另一项$\tilde{\Omega}$在一维的情况下可以通过选取Wannier基让这一项为零：

$$
\left.\tilde{\Omega}=\sum_n \sum_{\mathbf{R} m  \neq \mathbf{0}_n}|\langle\mathbf{R} m| \mathbf{r}| \mathbf{0} n\right\rangle\left.\right|^ 2
$$

$$
\langle R n| x|0 m\rangle=\langle R n| P x P|0 m\rangle=x_{0 m} \delta_{R, 0} \delta_{m, n} .
$$

&emsp;&emsp;由于$\mathbf{R} m  \neq \mathbf{0}n$,如果选取Wannier基$|0m\rangle$是投影x算符$PxP$的本征值,这一项可以为零，注意到$\tilde{\Omega}$非负，一维下是它的极小值，而三维情况$\langle R n| x|0 m\rangle,\langle R n| y|0 m\rangle,\langle R n| z|0 m\rangle$通常不能同时为零，即Wannier基通常不能同时是非对易的$PxP,PyP,PzP$的本征值，计算就复杂。Lieb-Kitaev是一维模型，通过选取规范可以不考虑这一项。因此，我定义的QSL应当是$\left\langle x^2\right\rangle_{\mathrm{L}}-x_{\mathrm{L}}^{\prime 2}$的极小值，只保留前面规范不变的部分，这一部分可以用QML来描述，选取规范，从而抹掉后面一维体系为零的部分。

#### <font color=purple> Calculating QML with the definition of Quadratic Spread </font>
---

$$
\begin{aligned}
\mathcal{Q} S_L & =\sum \left(x-x_{\mathrm{L}}\right)^2\left|\psi_{\mathrm{L}}(x)\right|^2 \\\\
& =\left\langle x^2\right\rangle_{\mathrm{L}}-x_{\mathrm{L}}^{\prime 2}
\end{aligned}
\tag{S16}
$$

&emsp;&emsp;这里存在着一个问题接下来要计算的物理量是$\left\langle x^2\right\rangle_{\mathrm{L}}$ 而去掉后面这一部分，原文章的解释是： $x_L'$ 区别于 $x_L$ by a model-dependent constant in the order of lattice constant a. For instance, in the Lieb-Kitaev model this constant becomes zero in the flat quasiparticle band limit as shown in section.这个说法是不是把后面这一项认为是$a^2$,在作图Fig3时不影响斜率从而不去管它。但是后面这一项根据您所引文献 [68] N. Marzari and D. Vanderbilt, Phys. Rev. B 56, 12847
 (1997)中公式$(11)$，应当是$\left\langle x\right\rangle_{\mathrm{L}}^2$。而$\left\langle x\right\rangle_{\mathrm{L}}$根据Fig2(d)(e)，不会是$a$,这个平带中constant becomes zero解释我其实不太明白。

&emsp;&emsp;我再想了一下，这里和文献的定义是有区别的，不过没有问题，用本文的定义足够推出后面一整套，而且也能写作guage invariant 的QML形式。实际上参考文献定义是：$\left\langle x^2\right\rangle_{\mathrm{L}}-\left\langle x\right\rangle_{\mathrm{L}}^2=\sum \left(x-\langle x\rangle_L\right)^2\left|\psi_{\mathrm{L}}(x)\right|^2$，$\left\langle x\right\rangle_{\mathrm{L}}$与$x_L$差异是来源于模型而非规范的。因此在下一节会看到基于$\sum \left(x-x_{\mathrm{L}}\right)^2\left|\psi_{\mathrm{L}}(x)\right|^2$也能得到QML形式。

&emsp;&emsp;回顾之前的讨论，Wannier函数可以用组成它的bloch函数来表示QSL,$\left\langle x^2\right\rangle_{\mathrm{L}}$可以用二bloch函数项描述，现在如果仍然把marjorana波函数看作是Wannier形式的话(之后作图验证正确那确实可以这样看作)，由于开放边界条件的加入，会出现公式$(29)$导致的四bloch函数项。这些bloch函数对应于非平带Lieb模型，用它们组合为平带模型。这样需要用四个非平带的bloch函数，非平带的$QML$来描述平带的localization length。该文章说明这样的描述是可行的。计算$\left\langle x^2\right\rangle_{\mathrm{R}}=\sum_{x=a}^{N a} x^2\left|\psi_{\mathrm{R}}(x)\right|^2$，上一章直积分解particle-hole部分和orbital部分已经给出了相关的形式：

$$
\begin{aligned}
\psi_{\mathrm{R}}(x) = \binom{1}{-1} \otimes \sum_ke^{i k x} u_0(k) u_0^{\dagger}(k)\begin{pmatrix}
1 \\\\
V / J \\\\
-1
\end{pmatrix} \psi_A^u(N a)
\end{aligned}
\tag{41}
$$

&emsp;&emsp;其中$u_0(k)$是Lieb模型本征函数，具有bloch形式，做内积：


$$
\begin{aligned}
&\rho_{\mathrm{R}}(x)=2\left\langle\psi_{\mathrm{R}}(x) \mid \psi_{\mathrm{R}}(x)\right\rangle=\left|\psi_A^u(N a)\right|^2 \sum_{k, k^{\prime}} e^{i\left(k-k^{\prime}\right) x}\left\langle u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle\left\langle u_0(k)| t_{U}^{o r b} \mid u_0\left(k^{\prime}\right)\right\rangle\\\\
& t_U^{o r b}=\left(\begin{array}{c}
1 \\\\
V / J \\\\
-1
\end{array}\right)\left(\begin{array}{lll}
1 & V / J & -1
\end{array}\right)=\left(\begin{array}{ccc}
1 & V / J & -1 \\\\
V / J & 0 & -V / J \\\\
-1 & -V / J & 1
\end{array}\right)
\end{aligned}
$$


&emsp;&emsp;代入$|u_0(k)\rangle$的形式：

$$
u_0(k)=\frac{1}{\sqrt{2|a_k|^2+V^2}}\left(\begin{array}{c}
a_k \\
V \\
-a_k
\end{array}\right)
\tag{30}
$$

$$
\begin{aligned}
&\left\langle u_0(k)\right| t_U^{o r b}\left|u_0\left(k^{\prime}\right)\right\rangle=\frac{1}{\sqrt{2\left|a_k\right|^2+V^2} \sqrt{2\left|a_{k^{\prime}}\right|^2+V^2}}\left(a_k^{\star},V,\right. \left.-a_k^{\star}\right)\left(\begin{array}{ccc}
1 & V / J & -1 \\\\
V / J & 0 & -V / J \\\\
-1 & -V / J & 1
\end{array}\right)\left(\begin{array}{c}
a_{k^{\prime}} \\\\
V \\\\
-a_{k^{\prime}}
\end{array}\right) \\\\
&=\frac{4 a_k^{\star} a_{k^{\prime}}+2V^2(a_k^{\star}+a_{k'})/J}{\sqrt{2\left|a_k\right|^2+V^2} \sqrt{2\left|a_{k^{\prime}}\right|^2+V^2}} \\\\
&= \frac{4 a_k^{\star} a_{k^{\prime}}-2V^2(2+e^{-ika}+e^{ik'a})}{\sqrt{2\left|a_k\right|^2+V^2} \sqrt{2\left|a_{k^{\prime}}\right|^2+V^2}}+\mathcal{O}\left((V / J)^2\right) \\\\
why &=2\left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle+\mathcal{O}\left((V / J)^2\right) .
\end{aligned}
\tag{S50}
$$

&emsp;&emsp;这里的问题是我大概计算了一下和文章中不同。文章里是$+2V^2$，理由是rank1矩阵的作用类似于一个常数，但是计算下来不一样，符号怎么办，e指数项是否是通过整体上对$k,k'$求和去除的？

&emsp;&emsp;如果对的话，

$$
\rho_{\mathrm{R}}(x)=4\left|\psi_A^u(N a)\right|^2 \sum_{k, k^{\prime}} e^{i\left(k-k^{\prime}\right) x}\left|\left\langle u_{\mathrm{0}}\left(k^{\prime}\right) \mid u_{\mathrm{0}}(k)\right\rangle\right|^2 .
$$


$$
\begin{aligned}
\mathcal{Q} S_R & =\sum_{x=a}^{N a}(x-N a)^2 \rho_1(x) \\\\
& =4\left|\psi_A^u(N a)\right|^2 \sum_{x=a}^{N a}(x-N a)^2 \sum_{k, k^{\prime}} e^{i\left(k-k^{\prime}\right) x}\left|\left\langle u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle\right|^2
\end{aligned}
\tag{42}
$$

&emsp;&emsp;下面我把$(x-N a)^2$拆开，逐项计算。观察到需要对$k,k'$求和,得到原子轨道函数，观察到它应当有倒空间周期性：$\psi_G=\psi_0$，对它有性质$\int dk \nabla_k =0$，$\int dk dk' \nabla_k \nabla_{k'} =0$,$|\psi|^2=const$,再利用$\langle  u_0(k)|\partial_k u_0(k)\rangle$纯虚数，第一项：

$$
\begin{aligned}
& \sum_{k k^{\prime}} x^2 e^{i(k-k^{\prime}) x}\left\langle u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle\left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle \\\\
& =\left[\partial_k \partial_{k^{\prime}}\right][e t c]-(i x) \cdot e^{i\left(k-k^{\prime}\right) x}\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle \left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle-(i x) e^{i\left(k-k^{\prime}\right) x}\left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle\left\langle u_0(k)\right| \partial_{k^{\prime}} u_0(k) \\\\
& + \text { similar two terms }-2 \cdot\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid \partial_k u_0(k)\right\rangle \cdot \delta_{k k^{\prime}} e^{i\left(k-k^{\prime}\right) x} -\left\langle\partial _ { k ^ { \prime } }  u_0\left(k^{\prime}\right)\left|u_0(k)\right\rangle\left\langle\partial_k u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle e^{i\left(k-k^{\prime}\right) x}\right.\\\\
& -\left\langle u_0\left(k^{\prime}\right) \mid \partial_k u_0(k)\right\rangle\left\langle u_0(k) \mid \partial_{k^{\prime}} u_0\left(k^{\prime}\right)\right\rangle e^{i\left(k-k^{\prime}\right) x} \\\\
& =0-(i x) e^{i\left(k-k^{\prime}\right) x} \delta_{k,k^{\prime}}\left[\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle+\left\langle u_0\left(k^{\prime}\right) \mid \partial_k u_0(k)\right\rangle\right]  -2\left\langle\partial_k u_0(k) \mid \partial_k u_0(k)\right\rangle \\\\
& +\delta_{k k^{\prime}} e^{i\left(k-k^{\prime}\right) x}  {\left[\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle\left\langle u_0\left(k^{\prime}\right) \mid \partial_k u_0(k)\right\rangle\right.} +\left\langle\left\langle\partial_k u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle\left\langle u_0(k) \mid \partial_{k^{\prime}} u_0\left(k^{\prime}\right)\right\rangle\right. \\\\
& =0-0-2\left\langle\partial_k u_0(k) \mid \partial_k u_0(k)\right\rangle+2\left\langle\partial_k u_0(k) \mid u_0(k)\right\rangle \langle  u_0(k)|\partial_k u_0(k)\rangle
\end{aligned}
$$

&emsp;&emsp;第二项：

$$
\begin{aligned}
& i \sum_{k k^{\prime}} x e^{i(k-k^{\prime}) x}\left\langle u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle\left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle \\\\
& =\left[\partial_k \right][e t c]-e^{i\left(k-k^{\prime}\right) x}\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle \left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle-e^{i\left(k-k^{\prime}\right) x}\left\langle u_0(k) \mid u_0\left(k^{\prime}\right)\right\rangle\left\langle u_0(k)\right| \partial_{k^{\prime}} u_0(k) \rangle \\\\
& = 0- \delta_{k,k^{\prime}}\left\langle\partial_{k^{\prime}} u_0\left(k^{\prime}\right) \mid u_0(k)\right\rangle -\delta_{k,k^{\prime}}\left\langle u_0(k)\right| \partial_{k^{\prime}} u_0(k) \rangle \\\\
& = 0 - 0
\end{aligned}
$$

&emsp;&emsp;第三项是一个模型无关常数$C$，把这几项组合起来就是：

$$
8\left|\psi_A^u(N a)\right|^2 \sum_{k} \left\langle\partial_k u_0(k) \mid \partial_k u_0(k)\right\rangle-\left\langle\partial_k u_0(k) \mid u_0(k)\right\rangle \langle  u_0(k)|\partial_k u_0(k)\rangle + CN^3a^2
$$

&emsp;&emsp;前面具有QML的形式：

$$
Q_{SR}=8\left|\psi_A^u(N a)\right|^2 \sum_k \mathcal{G}(k) 
\tag{43}
$$

&emsp;&emsp; 计算QML：


$$
\mathcal{G}^(k)=\left\langle\partial_k u_0(k)\right|\left[1-\left|u_0(k)\right\rangle\left\langle u_0(k)\right|\right]\left|\partial_k u_0(k)\right\rangle=\frac{2 V^2 / J^2}{\left(4(1+\cos (k a))+V^2 / J^2\right)^2} a^2
\tag{44}
$$


$$
\begin{gathered}
\overline{\mathcal{G}}=\frac{a}{2 \pi} \int d k \mathcal{G}^0(k)=\frac{\sqrt{2}}{4} \frac{1+\frac{V^2}{4 J^2}}{\frac{V}{J}\left(\frac{V^2}{8 J^2}+1\right)^{3 / 2}} a^2 . \\
\xi_{\mathrm{QM}} \equiv \frac{\overline{\mathcal{G}}}{a}
\end{gathered}
\tag{45}
$$

&emsp;&emsp;这里我也没有求出来，只能假设它是对的。问题第一是把$u_0(k)$带入QML计算公式中是无法得到这样简洁的结论的，就算做$O(V/J)^2$近似也得不到，量纲分析上也对不上。问题第二是$\mathcal{G}^(k)$正比于$a^2$。这是对的因为每次求导都会贡献一个$a$。下面一步是定义了k空间QML平均，理应也正比于$a^2$。但是他说$\xi_{\mathrm{QM}} \rightarrow \frac{\sqrt{2}}{4} \frac{J}{V} \text { when } \frac{V}{J} \rightarrow 0$，是不是少了一个$a$，最终得到的Fig3图像也是这么说。


<img src="https://54749110.github.io/assets/2025-09-13-quantum-geometry/8.png" width = "300" height = "250" alt="图片名称" align=center />

&emsp;&emsp;这样是得到了线性的结论：$Q_{SR}=a\xi_{\mathrm{QM}}+ CN^3a^2$。我估计这其实也不重要，因为原子单位制$a$也影响不了多少，关键的是发现了$Q_{SR}$只依赖于$\xi_{\mathrm{QM}}$而不依赖于$\xi_{\mathrm{BCS}}$，当$t \approx \Delta$ and $\mu=0$，关于$\xi_{\mathrm{BCS}}$正常的关联会在下一章叙述。



#### <font color=purple> Calculating localization length </font>
----


&emsp;&emsp;之前，给出过波函数的解析表达式：

$$
\begin{aligned}
\psi(x) & =-\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k(x-N a)} U_{01} \psi(a)-\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k(x-a)} U_{01}^{\dagger} \psi(N a) \\\\
& =-G^p(x, N a ; E) U_{01} \psi(a)-G^p(x, a ; E) U_{01}^{\dagger} \psi(N a)\\\\
& = \psi_L(x)+\psi_R(x) \\\\
G^p\left(x_j, x_{j^{\prime}} ; E\right) & =\frac{1}{N} \sum_{n=1}^{N_f} \sum_k \frac{g_n(k) g_n^{\dagger}(k)}{E-\varepsilon_n(k)} e^{i k\left(x_j-x_{j^{\prime}}\right)}
\end{aligned}
\tag{29}
$$

&emsp;&emsp;分离particle-orbital部分给出过简化的形式：


$$
\begin{aligned}
G^p\left(x_j, x_{j^{\prime}} ; E=0\right) &=-\frac{1}{N} \sum_k \frac{1}{(\mu+2 t \cos k a)^2+4 \Delta^2 \sin ^2(k a)}\left(\begin{array}{cc}
-\mu-2 t \cos (k a) & -i 2 \Delta \sin (k a) \\\\
i 2 \Delta \sin (k a) & \mu+2 t \cos (k a)
\end{array}\right) \otimes \\\\
& \frac{1}{4(1+\cos (k a))+\frac{V^2}{J^2}}\left(\begin{array}{ccc}
2(1+\cos (k a)) & -\frac{V}{J}\left(1+e^{i k a}\right) & -2(1+\cos (k a)) \\\\
\text { h.c. } & \frac{V^2}{J^2} & \frac{V}{J}\left(1+e^{-i k a}\right) \\\\
\text { h.c. } & \text { h.c. } & 2(1+\cos (k a))
\end{array}\right) e^{i k a\left(j-j^{\prime}\right)} .
\end{aligned}
\tag{46}
$$

&emsp;&emsp;现在就要做这个频率求和，取大N极限转化为积分，定义：$z=e^{ika}$,先找到极点,利用：

$$
\begin{aligned}
sin{ka} &= \frac{Z^2-1}{2Z}i \\\\
cos{ka} &= \frac{(Z+1)^2}{2Z}-1
\end{aligned}
$$

&emsp;&emsp;找到六个可能的极点，注意这里要求$j>j'$，$z^{j-j^{\prime}}$才非极点：

$$
\left(z_1, z_2, z_3, z_4\right)=\left(\frac{-\mu+\sqrt{4\left(\Delta^2-t^2\right)+\mu^2}}{2(\Delta+t)}, \frac{-\mu-\sqrt{4\left(\Delta^2-t^2\right)+\mu^2}}{2(\Delta+t)}, \frac{2(\Delta+t)}{-\mu+\sqrt{4\left(\Delta^2-t^2\right)+\mu^2}}, \frac{-2(\Delta+t)}{\mu+\sqrt{4\left(\Delta^2-t^2\right)+\mu^2}},\right)
$$

$$
z_{ \pm}=-\left(1+\frac{V^2}{4 \overline{J^2}}\right) \pm \frac{V}{2  J} \sqrt{\frac{V^2}{4 J^2}+2}
$$

$$
\begin{aligned}
& G^p\left(x_j > x_{j^{\prime}} ; E=0\right)=\frac{1}{2} \frac{1}{\Delta^2-t^2} \oint_{|z|=1} \frac{d z}{2 \pi i} \frac{z^{j-j^{\prime}}}{\left(z-z_1\right)\left(z-z_2\right)\left(z-z_3\right)\left(z-z_4\right)\left(z-z_{+}\right)\left(z-z_{-}\right)} \\\\
& \times\left(\begin{array}{cc}
-\mu z-t\left(z^2+1\right) & -\Delta\left(z^2-1\right) \\\\
\Delta\left(z^2-1\right) & \mu z+t\left(z^2+1\right)
\end{array}\right) \otimes\left(\begin{array}{ccc}
(z+1)^2 & -\frac{V}{J} z(1+z) & -(z+1)^2 \\\\
-\frac{V}{J}(z+1) & \frac{V^2}{J J^2} & \frac{V}{J}(z+1) \\\\
-(z+1)^2 & \frac{V}{J} z(1+z) & (z+1)^2
\end{array}\right) . \\\\
\end{aligned}
\tag{47}
$$


&emsp;&emsp;围道积分的值等于围道内的极点对应留数求和，这六个都是简单极点，在围道$|z|=1$内的极点有：

$$
z_1， z_2 ， z_+
$$

$$
G^p\left(x_j > x_{j^{\prime}} ; E=0\right) =\frac{z_{+}^{j-j^{\prime}}}{\left(z_{+}-z_1\right)\left(z_{+}-z_2\right)} M\left(z_{+}\right)+\frac{z_1^{j-j^{\prime}}}{\left(z_1-z_{+}\right)\left(z_1-z_2\right)} M\left(z_1\right)+\frac{z_2^{j-j^{\prime}}}{\left(z_2-z_{+}\right)\left(z_2-z_1\right)} M\left(z_2\right)
\tag{48}
$$

$$
M(z) \equiv \frac{1}{2} \frac{1}{\Delta^2-t^2} \frac{1}{\left(z-z_3\right)\left(z-z_4\right)\left(z-z_{-}\right)}\left(\begin{array}{cc}
-\mu z-t\left(z^2+1\right) & -\Delta\left(z^2-1\right) \\\\
\Delta\left(z^2-1\right) & \mu z+t\left(z^2+1\right)
\end{array}\right) \otimes\left(\begin{array}{ccc}
(z+1)^2 & -\frac{V}{J} z(1+z) & -(z+1)^2 \\\\
-\frac{V}{J}(z+1) & \frac{V^2}{J^2} & \frac{V}{J}(z+1) \\\\
-(z+1)^2 & \frac{V}{J} z(1+z) & (z+1)^2
\end{array}\right)
$$

&emsp;&emsp;类似的，对于$j<j'$，定义$z=e^{-ika}$即可，得到：

$$
G^p\left(x_j \leq x_{j^{\prime}} ; E=0\right) =-\frac{z_{+}^{j^{\prime}-j}}{\left(z_{+}-z_1\right)\left(z_{+}-z_2\right)} M^T\left(z_{+}\right)-\frac{z_1^{j^{\prime}-j}}{\left(z_1-z_{+}\right)\left(z_1-z_2\right)} M^T\left(z_1\right)-\frac{z_2^{j^{\prime}-j}}{\left(z_2-z_{+}\right)\left(z_2-z_1\right)} M^T\left(z_2\right.)
\tag{49}
$$


&emsp;&emsp;最终，可以写出右边界marjorana波函数的形式：

$$
\psi_{\mathbf{R}}(x)=\left[\frac{M^T\left(z_{+}\right)}{\left(z_{+}-z_1\right)\left(z_{+}-z_2\right)} z_{+}^{N-j+1}+\frac{M^T\left(z_1\right)}{\left(z_1-z_{+}\right)\left(z_1-z_2\right)} z_1^{N-j+1}+\frac{M^T\left(z_2\right)}{\left(z_2-z_{+}\right)\left(z_2-z_1\right)} z_2^{N-j+1}\right] U_{01}^{\dagger} \psi(N a)
\tag{50}
$$


&emsp;&emsp;这个式子文章里称有两种衰减模式，一是以$z_+$为指标的，${z_+}^{-j}$,一是以$z_{1,2}$为指标的，${z_1}^{-j}$。考虑$\mu=0$的情况，得到$z_1=-z_2=i \sqrt{\frac{t-\Delta}{t+\Delta}}$,得到：

$$
\begin{gathered}
\psi_{\mathrm{R}}\left(x_j\right)=A_{\mathrm{R}}^{\mathrm{QM}} \exp \left[-\frac{(N-j) a}{\xi_{+}}\right]+A_{\mathrm{R}}^{\mathrm{BCS}} \exp \left[-\frac{(N-j) a}{\xi_{\mathrm{BCS}}}\right] \\\\
A_{\mathrm{R}}^{\mathrm{QM}}=(-1)^{N-j} \frac{z_{+}}{z_{+}^2-z_1^2} M^T\left(z_{+}\right) U_{01}^{\dagger} \psi(N a) \\\\
A_{\mathrm{R}}^{\mathrm{BCS}}=\frac{1}{2 z_1}\left[\frac{z_1}{z_1-z_{+}} M^T\left(z_1\right)+(-1)^{N-j} \frac{-z_1}{z_1+z_{+}} M^T\left(-z_1\right)\right] U_{01}^{\dagger} \psi(N a)
\end{gathered}
\tag{51}
$$

&emsp;&emsp;其中<font color=violet> $\xi_{\mathrm{BCS}}=-2 a / \ln \left(\frac{t-\Delta}{t+\Delta}\right)(t>\Delta>0)$ 以及 $\xi_{+}=-a / \ln \left|z_{+}\right|$ </font> ，当小量$V<<J$，展开$\xi_{+}=-a / \ln \left|z_{+}\right|$到$V/J$的一阶得到：

$$
\xi_{+}= \sqrt{2} a J / V
$$


&emsp;&emsp;之前对于QML的严格计算给出了：$\xi_{\mathrm{QM}} \rightarrow \frac{\sqrt{2}}{4} \frac{J}{V} \text { when } \frac{V}{J} \rightarrow 0$。也就是：

$$
\xi_{+}=4 \xi_{\mathrm{QM}}
\tag{52}
$$


&emsp;&emsp;下面作图验证一下这些规律，第一当 $t=\Delta , \mu=0$ Lieb-Kitaev 模型给出$\xi_{\mathrm{BCS}}=0$。第二：观察函数写作$ln\psi(x)=ln(Ae^{-x/QML大量}+Be^{-x/BCS小量})$,因为QML:$\sqrt{2} a J / V$ $J>>V$ , BCS: $\xi_{\mathrm{BCS}}=-2 a / \ln \left(\frac{t-\Delta}{t+\Delta}\right)=2a/lnO(1)$，表示boundary附近由BCS主导，内部由QML主导。第三：该QML衰减的斜率应当在$ln\psi(x)=x/(a*freedom)$图上为：$V/6\sqrt2J$ 。



## [PDF Download](/assets/2025-09-13-quantum-geometry/quantumgeometry.pdf)