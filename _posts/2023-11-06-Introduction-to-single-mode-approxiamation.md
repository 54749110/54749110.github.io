---
layout: post
title:  "From Ground States to Excitations"
description: 《Interacting Electrons and Quantum Magnetism》Assa Auerbach Chapter 9
pin: true
math: true
mermaid: true
categories: [Goldstone Modes,AKLT]
tags: [Goldstone Modes,AKLT]
author: Xuan
---
 

## Abatract
---
&emsp;&emsp;前几章我们都关注于海森堡模型的基态，而我们可以利用线性相应理论预测一些激发态的性质，在本章中就会利用基态的关联函数去构造较低的激发态。这种方法被称为单模近似(SMA),之后会检验构造的激发态与基态的联系，其是否是有带隙的，这与体系对称破缺的关联，最后会介绍一种有带隙的情况，即AKLT模型。

## Definition
---
&emsp;&emsp; 定义一些算符以及它们数学上的联系：

$$
\begin{aligned}
S(\mathbf{q}, \omega) & =\mathcal{N}^{-1} \int_{-\infty} d t e^{i \omega t} \sum_{i j} e^{i \mathbf{q}\left(x_i-x_j\right)}\left\langle S_i^z(t) S_j^z(0)\right\rangle \\\\
& =\frac{2 \pi}{\mathcal{N} Z} \sum_{\alpha, \beta} e^{-E_\alpha / T}\left\langle\alpha\left|S_{\mathbf{q}}^z\right| \beta\right\rangle\left\langle\beta\left|S_{-\mathbf{q}}^z\right| \alpha\right\rangle \delta\left(\omega+E_\alpha-E_\beta\right) .
\end{aligned}
\tag{Appendix B.15}
$$

&emsp;&emsp;为动力学结构因子，或是类比于Bruus书中的趋大格林函数，区别之一是Assa[1]书激发的是动量空间q处的一个z方向自旋。

$$
\begin{aligned}
S(\mathbf{q}) & =\int_{-\infty}^{+\infty} \frac{d \omega}{2 \pi} S(\mathbf{q}, \omega) \\\\
& =\frac{2 \pi}{N Z} \cdot \frac{1}{2 \pi} \cdot \sum_{\alpha} e^{-E_{\alpha} / T}\left\langle\alpha \mid S_{q}^z\right\rangle \sum_\beta|\beta\rangle\langle\beta|\left\langle S_{-q}^z \mid \alpha\right\rangle \int_R d w \cdot \delta\left(w+E_{\alpha}-E_\beta\right) \\\\
& =\sum_{\alpha} \frac{1}{NZ} e^{-E_{\alpha} / T}\left\langle \alpha\left|S_q^z S_{-q}^z\right| \alpha\right\rangle  \\\\
& =\mathcal{N}^{-1}\left\langle S_{\mathbf{q}}^z S_{-\mathbf{q}}^z\right\rangle 
\end{aligned}
\tag{9.2}
$$

&emsp;&emsp;为同时关联函数（静态结构因子），一种理解为类比固体物理中的结构因子，布拉格散射的散射振幅可以写作：


$$
F_G=N \int_{\text {cell }} \mathrm{d} V n(\boldsymbol{r}) \exp (-i \boldsymbol{G} \cdot \boldsymbol{r})=N S_G
$$

&emsp;&emsp; 其中$S_{G}$为结构因子，其反映电荷密度分布在特定晶体类型中对整体散射振幅的影响。更一般的写法为考虑q粒子布拉格散射前后动量守恒，两个散射波由于内积指数上叠加，为：

$$
S(\mathbf{q})=\frac{1}{N}\left\langle \sum_{j=1}^N \sum_{k=1}^N n_j n_k \mathrm{e}^{-i \mathbf{q} \cdot\left(\mathbf{R}_j-\mathbf{R}_k\right)}\right\rangle
$$

&emsp;&emsp;我们作类比，多体体系中“自旋分布”在特定晶体类型中对整体散射振幅的影响：

$$
S(\mathbf{q})=\frac{1}{N}\left\langle \sum_{j=1}^N \sum_{k=1}^N S_j S_k \mathrm{e}^{-i \mathbf{q} \cdot\left(\mathbf{R}_j-\mathbf{R}_k\right)}\right\rangle
$$

&emsp;&emsp;对其作傅里叶变换到k空间就是(9.2)式。从趋大格林函数的角度Bruus书上对$G^{>}$同样做积分得到的是q态的平均占据数，也可以与这里作类比。

$$
F(\mathbf{q})=\mathcal{N}^{-1}\left\langle\left[S_{-\mathbf{q}}^z,\left[\mathcal{H}, S_{\mathbf{q}}^z\right]\right]\right\rangle
\tag{9.3}
$$

&emsp;&emsp; 为双对易子关联函数，也是基态做平均，其满足公式：

$$
\begin{aligned}
& \int_{-\infty}^{+\infty} \frac{d \omega}{2 \pi} \omega S(\mathbf{q}, \omega) \\\\
& =\sum_{\alpha \beta}\left(E_{\alpha}-E_\beta\right) e^{-E_\alpha / T}\left\langle\alpha\left|S_q^z\right| \beta\right\rangle\left\langle\beta\left|S_{-q}^z\right| \alpha\right\rangle \cdot \frac{1}{N Z} \\\\
& =\sum_{\alpha \beta}\left\langle E_{\alpha} \alpha\left|S_q^z\right| \beta\right\rangle\left\langle\beta\left|S_{-q}^z\right| \alpha\right\rangle e^{-E_\alpha / T}\frac{1}{NZ} +\text { similar } \\\\
& +\sum_{\alpha \beta}\left\langle\alpha\left|S_q^z\right|-E_\beta \beta\right\rangle\left\langle\beta\left|S_{-q}^z\right| \alpha\right\rangle e^{-E_\alpha / T}\frac{1}{NZ} + \text { similar } \\\\
& =\sum_{\alpha}\left\langle\alpha \mid \left( H S_q^z S_{-q}^z+S_q^z S_{-q}^z H-S_q^z H S_{-q}^z-S_{-q}^z H S_q^z\right) \mid \alpha \right\rangle \times e^{-E_{\alpha} / T} \frac{1}{N Z} \\\\
& =\frac{1}{N}\left\langle S_{-q}^z,\left[H, S_q^z\right]\right\rangle = F(q)
\end{aligned}
$$


## Single Mode Approxiamation (SMA)
---

&emsp;&emsp; 在本章中我们讨论的激发态为单模激发态(single mode state),其定义为：

$$
|\mathbf{q}\rangle=S_{\mathbf{q}}^z|0\rangle 
\tag{9.5}
$$
&emsp;&emsp; 如果我们之前假设的S(q)与F(q)都是做基态平均的话，那么单模激发态相对于基态的的变分能量就可以写出，要注意的是变分法得到的这个能量不是真实的能量，只是它的一个上界。即使我们精确的算出单模激发态的能量存在一个Gap，我们不能说就是有Gap的，毕竟这是一种初级的激发，不一定是最弱的激发；但我们可以说如果利用单模激发态得到的变分能量上界趋于基态，那么一定是Gapless的。

$$
\begin{aligned}
\omega_{q} & =\frac{\left\langle q\left|H-E_0\right| q\right\rangle}{\langle q \mid q\rangle}=\frac{\langle 0| S_{-q}^z \left (H-E_0)S_q^z | 0\right\rangle}{\left\langle 0\left|S_{-q}^z S_q^z\right| 0\right\rangle} \\\\
& =\frac{\left\langle 0\left|S_{-q}^z H S_q^z-S_{-q}^z S_q^Z H \right| 0\right\rangle}{\left\langle 0\left|S_{-q}^z S_q^z\right| 0\right\rangle} \\\\
& =\frac{F(q)}{S(q)}
\end{aligned}
$$

&emsp;&emsp;我们还可以使用如下的定义不改变$\omega_{q}$的值却可以使得单模激发态与基态正交(代入上式检验即可)：

$$
|\mathbf{q}\rangle= (S_{\mathbf{q}}^z-\left\langle S_q^z \right\rangle )    |0>
$$

&emsp;&emsp;事实上，单模激发对应了一个相当尖锐的动力学结构因子，在零温时，尖锐的处于$\omega=\omega_{q}$处，即所能激发的一个自旋分布q,其能量接近$\omega_{q}$,这种激发对应的空间只是基态与不同$S_q^z$建立的联系，是相当纯净的。

$$
S(\mathbf{q}, \omega) \approx 2 \pi S(\mathbf{q}) \delta\left(\omega-\omega_{\mathbf{q}}\right)
\tag{9.6}
$$




## Goldstone Modes  
---
<font color=teal>Goldstone Theorem 9.1 9.2  </font>  
&emsp;&emsp; 如果自旋的关联函数S(q)在某个q处发散，或者说体系在某个q处出现了对称性破缺(6.6式)，那么我们说体系存在一种戈德斯通模式(激发)，其激发能量在这个q处为零：(自发对称性破缺导致无带隙)

$$
\lim _{\mathbf{q} \rightarrow \overline{\mathbf{q}}} E(\mathbf{q})=0
\tag{9.14}
$$ 

Example: 短程海森堡哈密顿量为：
$$
\begin{gathered}
\mathcal{H}=\frac{1}{2} \sum_{i j} J_{i j} S_i \cdot S_j \\\\
\bar{J}=\frac{1}{2 \mathcal{N}} \sum_{i j}\left|J_{i j}\right|\left|\mathbf{x}_i-\mathbf{x}_j\right|^2<\infty
\end{gathered}
$$

&emsp;&emsp; 其符合6.2节的Mermin and Wagner 定理，所证即上文的$\omega_{q}$,当上文的S(q)发散时，如果F(q)不同时发散，$\omega_{q}$即为零，存在Gapless的激发，类似于第六章的讨论，再不厌其烦地计算一遍F(q):

$$
\begin{aligned}
& F(q)=\frac{1}{2}\left\langle\left[S_{-q}^z,\left[H, S_q^z\right]\right]\right\rangle=\frac{1}{2 N} \sum_{i j} e^{i q\left(r_i-r_j\right)}\left\langle\left[S_j^z,\left[H, S_i^z\right]\right]\right\rangle \\\\
& =\frac{J}{2 N} \sum_{i j\langle k l\rangle} e^{i q\left(r_i-r_j\right)}\left\langle\left[S_j^z,\left[S_k \cdot S_l, S_i^z\right]\right]\right\rangle  (l=i ; k=i+1 or i-1)\\\\
& =\frac{J}{2 N} \sum_{j\langle k i\rangle} e^{i q\left(r_i-r_j\right)}\left\langle\left[S_j^z,\left[S_k^x S_i^x+S_k^y S_i^y, S_i^z\right]\right]\right\rangle \\\\
& =\frac{J}{2 N} \sum_{j\langle  i\rangle} e^{i q\left(r_i-r_j\right)}\left\langle\left[S_j^z,-i S_{i+1}^x S_{i}^y+i S_{i+1}^y S_i^x-i S_{i-1}^x S_{i}^y+i S_{i-1}^y S_i^x\right]\right\rangle (j=i;i+1;i-1)\\\\
& =\frac{2 J}{N}(\cos qa-1) \sum_{\langle i j\rangle}\left\langle S_j^y S_i^y+S_j^x S_i^x\right\rangle \\\\
& \leq \frac{2}{N}|J(\cos qa-1)| \sum_{\langle i j\rangle}\left|\left\langle S_j^y S_i^y+S_j^x S_i^x\right\rangle\right| \leq 2  S^2|J||qa|^2
\end{aligned}
$$

&emsp;&emsp; 总之，J、q、a都是有限量，故F(q)不发散，故$\omega_{q}$当S(q)发散时为零，验证完毕。相反，无带隙的激发态并不一定意味着真正的长程序，比如说一维反铁磁海森堡链在q=0处无带隙，但是考虑对于所有的q，S(q)都不发散，故没有长程序。
一个例子是铁磁体低于居里温度，自旋的特定取向可以形成自旋波。相较于自由的自旋排列，自旋波中的自旋以相位相差互相约束，破坏了连续旋转对称性，所以出现了Gapless(十一章)。

## The Haldane Gap and the SMA
---
&emsp;&emsp; 计算AKLT模型的$\omega_{q}$，AKLT模型的哈密顿量对应了自旋为1的VBS态，在第八章介绍过，其哈密顿量为：

$$
\mathcal{H}^{A K L T}=K \sum_{\langle i j\rangle}\left[\mathbf{S}_i \cdot \mathbf{S}_j+\frac{1}{3}\left(\mathbf{S}_i \cdot \mathbf{S}_j\right)^2+\frac{2}{3}\right]
\tag{9.18}
$$

&emsp;&emsp;  在第八章得到了自旋关联函数的表达式：

$$
\begin{aligned}
\left\langle S_i \cdot S_j\right\rangle= & Z^{-1}\left(S+1-\delta_{i j}\right)(S+1) \times \int \prod_i d \hat{\Omega}_i\left|\Psi^{V B S}[\hat{\Omega}]\right|^2 \hat{\Omega}_i \cdot \hat{\Omega}_j \\\\
Z=&\int \prod_i d \hat{\Omega}_i\left|\Psi^{V B S}[\hat{\Omega}]\right|^2
\end{aligned}
$$

&emsp;&emsp;对其作傅里叶变换后就得到了静态结构因子S(q):

$$
S(q)=\frac{2(1-\cos q)}{(5+3 \cos q)}
\tag{9.19}
$$

&emsp;&emsp;类似的可以得到F(q)的表达式：

$$
F(q)=\frac{10 K}{27}(1-\cos q)
\tag{9.20}
$$

&emsp;&emsp;最终得到${\omega}_{\mathbf{q}}$的结果：

$$
{\omega}_{\mathbf{q}}=\frac{5 K}{27}(5+3 \cos q) \geq 0.370 K
$$

&emsp;&emsp;可以看到单模近似后的GAP至多为0.370K，尽管这个GAP可能不对应真实的激发，但是在AKLT模型中，实际上也可以找到0.350K的GAP，类比于一维标准海森堡模型的GAP为0.325K，两者相差不大，说明AKLT模型哈密顿量的自旋平方项并没有明显改变比如单模近似这样微弱的激发，两者基态的自旋关联仍然时类似的。这个AKLT模型的Haldane GAP在十二章至十五章会讨论。

&emsp;&emsp;<font color=teal>QUESTION  </font>  对这个式子的证明可以用转移矩阵的方法。Z的形式比较好，能不能写成是$Tr[T^n]$的形式。关联函数的转移矩阵是有结论的，只要构造出来$T_{i,i+1}$，那么关联自旋算符就可以写出，而最终可以用转移矩阵的特征值，转移矩阵特征向量与自旋算符的均值来计算关联函数(称${\lambda_1}/{\lambda_0}$为关联长度)。

$$
\begin{aligned}
\left\langle S_i S_j\right\rangle & =\frac{\operatorname{Tr}\left[e^{-\beta H} S_i S_j\right]}{\operatorname{Tr}\left[e^{-\beta H}\right]} \\\\
& =\frac{\operatorname{Tr}\left[T^N S_i S_j\right]}{\operatorname{Tr}\left[T^N\right]} \\\\
& =\frac{\operatorname{Tr}\left[T^i S_i T^{j-i} S_j T^{N-j}\right]}{\operatorname{Tr}\left[T^N\right]} .\\\\
\operatorname{Tr}\left[T^i O_i T^{j-i} O_j T^{N-j}\right] & \approx \lambda_0^N\left[\left\langle 0\left|O_i\right| 0\right\rangle\left\langle 0\left|O_j\right| 0\right\rangle+\left(\frac{\lambda_1}{\lambda_0}\right)^{j-i}\left\langle 0\left|O_i\right| 1\right\rangle\left\langle 1\left|O_j\right| 0\right\rangle\right] \\\\
\end{aligned}
$$

