---
layout: post
title:  "Nonlinear Sigma Model"
description: 《Interacting Electrons and Quantum Magnetism》Assa Auerbach Chapter 11
pin: true
math: true
mermaid: true
categories: [NLSM,Haldane Gap]
tags: [NLSM,Haldane Gap]
author: Xuan
---


##  Derivation of NLSM
---
&emsp;&emsp; 在第十一章，我们采用HP玻色子半经典展开的方法得到了自旋波理论，在三维情况下磁序是有限的，然而，在有限温一二维的条件下，$<n_{b}> \ll 2S$ 条件失效，得到的是发散解，这也说明自旋波理论在一二维的失效。在第六章中介绍过Mermin和Wagner定理，即有限温一二维海森堡模型没有自发对称性破缺，如何处理这一类问题就是这几章的主题。   
&emsp;&emsp;另一方面， 在一维和二维系统中，量子涨落的效应变得更加显著，因为自旋之间的相互作用变得更强。在这些系统中，涨落导致自旋与其周围自旋之间的相互作用具有长程的、非局域的特性。 如果直接运用第十一章当中自旋波的路径积分的话，它对于自旋只是微小扰动从而做出的推导就要失效。需要引入一些长程的相互作用的参数来描述一、二维的路径积分。  
&emsp;&emsp;本章中仍然采用第六章的短程反铁磁海森堡哈密顿量，利用第十章中得到的路径积分的形式：


$$
\begin{aligned}
H[\hat{\Omega}] & =\frac{1}{2} S^2 \sum_{i j} J_{i j} \hat{\Omega_{i}} \cdot \hat{\Omega_{j}} \\\\
\frac{1}{d} & \sum_{j}\left|J_{i j}\right|\left|\mathbf{x}_j-\mathbf{x}_i\right|^2  <\infty \\\\
Z[j] & =\int \mathcal{D} \hat{\Omega}(\tau) \exp (-\tilde{\mathcal{S}}[\hat{\Omega}]) \\\\
\tilde{\mathcal{S}}[\hat{\Omega}] & =-i S \sum_i \omega\left[\hat{\Omega}_i\right]+\int_0^\beta d \tau H(\tau) \\\\
\end{aligned}
$$

&emsp;&emsp; 在第十一章中，我们用两个自由度来描述某个i的自旋情况：

<img src="https://54749110.github.io/assets/2023-12-04-NLSM-theory/1.png" width = "600" height = "300" alt="图片名称" align=center />

&emsp;&emsp; 而我们也可以采用六个自由度+两个限制条件的方法来描述某个i的自旋情况：

$$
\begin{aligned}
\hat{\Omega}_i& =\eta_i \hat{\mathbf{n}}\left(\mathbf{x}_i\right) \sqrt{1-\left|\frac{\mathbf{L}\left(\mathbf{x}_i\right)}{S}\right|^2}+\frac{\mathbf{L}\left(\mathbf{x}_i\right)}{S} \\\\
& \left|\hat{\mathbf{n}}\left(\mathbf{x}_i\right)\right| =1 \\\\
& \mathbf{L}\left(\mathbf{x}_i\right) \cdot \hat{\mathbf{n}}\left(\mathbf{x}_i\right) =0 \\\\
\end{aligned}
\tag{12.4-12.6}
$$

&emsp;&emsp; where

$$
\eta_i=e^{i \mathbf{X}_i \vec{\pi}}
$$

&emsp;&emsp; 为什么要定义n和L参数，自由度何种情况下是匹配的？  
&emsp;&emsp;一个逻辑是：NLSM处理长波的、低能的、连续极限下的作用量。长波低能，即是说这个自旋含时改变是缓慢的，就是说这些自由度参量随时间缓慢变化。这是因为实际上的体系中，总自旋一定是一个好量子数，即不随时间变化，即傅里叶变换得到的S(q)（自旋密度分布）在动量原点不随时间变化，而因此在接近动量原点远离布里渊区边界时S(q)只随时间微弱变化。另一方面，在布里渊区边界处，第九章中介绍的在海森堡反铁磁模型中的戈德斯通模式依赖于低能激发。长波低能近似足够许多描述有趣的物理。  

&emsp;&emsp;上面的参数变换是完备的，在上面定义的参数变换下，其实根号项就是归一化系数，$\eta$项就类比于$(-1)^{i}$表示反铁磁的特征，场n模长是1，表示了一种短程的或是说“固有的”场；而与之正交的场L反映长程的作用对某个i自旋的影响，在接下来的叙述中会看到。

&emsp;&emsp;具体来说我们要选取一个动量空间截断 $\Lambda$ ,其关联波长$\Lambda^{-1}$ 肯定远大于最近邻的间距，但远小于整个原子链(平面)的范围。这说明路径积分中相空间参数在$\Lambda^{-1}$尺度上缓慢变换，或者说取较大的q时$n_{q}$与L参数远小于一，或者说在布里渊区边界处路径积分的贡献是那么的小以至于可以随便取一个形状的布里渊区边界，这里就取作球形。

&emsp;&emsp; 现在利用新定义的n,L重新表达哈密顿量：

<img src="https://54749110.github.io/assets/2023-12-04-NLSM-theory/2.JPG" width = "330" height = "465" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2023-12-04-NLSM-theory/3.JPG" width = "320" height = "320" alt="图片名称" align=center />



&emsp;&emsp;可以定义第一项中的“stiffness constant":(物理含义？)

$$
\rho_s=-\frac{S^2}{2 d \mathcal{N} a^d} \sum_{i j} J_{i j} \eta_i \eta_j\left|\mathbf{x}_i-\mathbf{x}_j\right|^2
\tag{12.20}
$$

&emsp;&emsp;可以定义第二项中的“inverse uniform susceptibility":（物理含义？）

$$
\chi_{\mathbf{X}, \mathbf{X}^{\prime}}^{-1}=\frac{1}{\mathcal{N} a^d} \sum_{i j} J_{i j}\left[\delta\left(\mathbf{x}-\mathbf{x}_i\right) \delta\left(\mathbf{x}^{\prime}-\mathbf{x}_j\right)-\delta\left(\mathbf{x}^{\prime}-\mathbf{x}\right) \delta\left(\mathbf{x}-\mathbf{x}_i\right) \eta_i \eta_j\right]
\tag{12.21}
$$

&emsp;&emsp; 得到了哈密顿量的形式后，下一步求解路径积分中的贝瑞相位，仍然认为n为主体，长程场L为微扰，展开项$\omega[\Omega]$:

$$
-i S \sum_i \omega_i=  -i S \sum_i \eta_i \omega\left[\hat{\mathbf{n}}_i+\eta_i\left(\mathbf{L}_i / S\right)\right] 
$$

$$
=-i S \sum_i\left[\eta_i \omega\left[\hat{\mathbf{n}}_i\right]+\frac{\delta \omega}{\delta \hat{\mathbf{n}}_i} \cdot\left(\mathbf{L}_i / S\right)\right]
$$

&emsp;&emsp;利用第十章式子（10.34）及其推论：

$$
\delta \omega[\hat{\Omega}]=\int_0^t d t^{\prime} \hat{\Omega} \cdot(\dot{\hat{\Omega}} \times \delta \hat{\Omega})
$$

$$
\frac{\delta \omega(\{\boldsymbol{n}(\tau)\})}{\delta \boldsymbol{n}(\tau)}=\frac{\partial \boldsymbol{n}(\tau)}{\partial \tau} \times \boldsymbol{n}(\tau)
$$

&emsp;&emsp; 贝瑞相位可以写做：

$$
 -i \Upsilon-i \int_0^\beta d \tau \sum_i\left(\hat{n_i} \times \partial_\tau \hat{\mathbf{n}}_i \cdot \mathbf{L}_i\right) 
 \tag{12.28}
$$

$$
 \Upsilon[\hat{\mathbf{n}}]=S \sum_i \eta_i \omega\left[\hat{\mathbf{n}}\left(\mathbf{x}_i\right)\right]
$$


&emsp;&emsp; 结合哈密顿量和贝瑞相位，就可以写出作用量的形式，就可以计算配分函数了：



<img src="https://54749110.github.io/assets/2023-12-04-NLSM-theory/4.JPG" width = "250" height = "330" alt="图片名称" align=center />




&emsp;&emsp;这是一个非常简洁的式子，除了对相空间的积分外，积分内的式子只和n场有关（L场神奇的被积掉了），而且只和n场对事件和空间的导数有关,最终就得到了Nonlinear Sigma Model配分函数的形式：

$$
\begin{aligned}
Z & \propto \int_{\Lambda} \mathcal{D} \hat{\mathbf{n}} e^{i \Upsilon} \exp \left(-\int d^{d+1} x \mathcal{L_{N L S M}}^{d+1}\right) \\\\
\mathcal{L_{N L S M}}^D & =\frac{\Lambda^{D-2}}{2 f_D} \sum_{\mu=1}^D \partial_\mu \hat{\mathbf{n}} \cdot \partial_\mu \hat{\mathbf{n}} \\\\
\end{aligned}
\tag{12.35}
$$

$$
f_D=\frac{c}{\rho_s} \Lambda^{D-2}
$$


##  Haldane Gap [Assa Nagaosa]
---
&emsp;&emsp; 我们计算NLSM路径积分的时候贝瑞相位中前半部分所贡献的为：

$$
 \Upsilon[\hat{\mathbf{n}}]=S \sum_i \eta_i \omega\left[\hat{\mathbf{n}}\left(\mathbf{x}_i\right)\right]
$$

&emsp;&emsp; 比如考虑一个一维情况，引入周期边界条件，我们可以得到：

$$
\begin{aligned}
S \sum_{i=1}^{2 N} & (-1)^i \omega(\{\boldsymbol{\Omega}(\mathrm{i} a)\}) \\\\
& =S \sum_{k=1}^N[\omega(\{\boldsymbol{\Omega}(2 k a)\})-\omega(\{\boldsymbol{\Omega}((2 k-1) a)\})] \\\\
& \cong \frac{S}{2} \int_0^\beta \mathrm{d} \tau \int \mathrm{d} x \frac{\delta \omega(\{\boldsymbol{\Omega}(x, \tau)\})}{\delta \boldsymbol{\Omega}(x, \tau)} \frac{\partial \boldsymbol{\Omega}(x, \tau)}{\partial x} \\\\
& =\frac{S}{2} \int_0^{\beta c} \mathrm{~d} x_0 \int_0^{L=2 N a} \mathrm{~d} x_1 \frac{\partial \boldsymbol{\Omega}(x)}{\partial x_0} \times \boldsymbol{\Omega}(x) \cdot \frac{\partial \boldsymbol{\Omega}(x)}{\partial x_1} \\\\
\end{aligned}
$$

&emsp;&emsp;其中仍然用到了第十章（10.34）式及其推论。现在要计算的就是下面这个积分，积出来Q这个数被称为Skyrmion number。一个想法是联想到这个积分和贝瑞曲率积分比较类似——当时采用Stokes定理积分贝瑞曲率得到整数霍尔电导，或可采用类似的方法。结论是这个Skyrmion number 是一个整数。

$$
Q=\frac{1}{4 \pi} \int \mathrm{d} x_0 \int \mathrm{d} x_1\left(\frac{\partial \boldsymbol{\Omega}}{\partial x_0} \times \frac{\partial \boldsymbol{\Omega}}{\partial x_1}\right) \cdot \boldsymbol{\Omega}
$$

&emsp;&emsp;现在如果完整的写出这一项对路径积分的贡献则是:

$$
\mathrm{e}^{-\mathrm{i} 2 \pi S Q}
$$

&emsp;&emsp; 由于Q已经是一个整数，对于半整数的自旋这一项就可能是-1，整数自旋必然是1。更进一步考虑到余下项对路径积分的贡献是，由于NLSM中间n场全都是取模方，恒正，其路径积分也一定恒正，配分函数一定恒正。这可以类比于经典和量子的情况。半整数自旋的符号变化使得某些路径细分相干相消，相当于环路贝瑞相位是零；而在整数自旋的情况下这种相位始终存在；因此说整数自旋相较于半整数自旋表现更多量子性质。


$$
Z^{-1} \sum_m\left|\left\langle\Psi_0|\hat{\mathbf{n}}(0)| \Psi_m\right\rangle\right|^2 \exp \left[-\left(E_m-E_0\right) \tau\right]=\langle\hat{\mathbf{n}}(0,0) \hat{\mathbf{n}}(0, \tau)\rangle
\tag{12.38}
$$


&emsp;&emsp;是虚时基态关联函数的定义，再定义关联长度$\xi$,关联函数以$\xi^{-1}$衰减，而（12.38）式中关联函数又指数上又是激发能量$E_m-E_0$且以最低激发能量项为主要贡献。这就是说最低激发能量$\Delta$正比于$\xi^{-1}$。更经典的半整数自旋存在着长程的关联，随着系统尺寸的增大，对于半整数自旋而言$\xi$趋于无穷而$\Delta$趋于零，成为了无带隙的激发。而对于整数自旋而言，关联长度始终是有限的，而一个Haldane Gap因此存在。

&emsp;&emsp; 在十三、十四章，将研究本节中未详细定义的cutoff，求解长程关联。十五章将再次计算十一章中失败的反铁磁海森堡模型一、二维的情况。


<img src="https://54749110.github.io/assets/2023-12-04-NLSM-theory/5.png" width = "600" height = "350" alt="图片名称" align=center />


## REF
---
[1]《Interacting Electrons and Quantum Magnetism》Assa Auerbach  
[2]《Quantum Field Theory in Strongly Correlated Electronic Systems》Naoto Nagaosa  
[3]《Topological Insulators》Shun-Qing Shen

## [PDF Download](/assets/2023-12-04-NLSM-theory/NLSMtheory.pdf)
