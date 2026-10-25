---
layout: post
title:  "Mean field with H-wave"
description: "Try mean field method with h-wave , following the work on single layer graphene "
pin: true
math: true
mermaid: true
categories: [Numerical method, Mean field]
tags: [mean field, graphene]
author: Xuan
---

## REF
---

[hwave-tool](https://issp-center-dev.github.io/HPhi/doxygen/struct_std_int_list.html)
[Stdface-tool](https://issp-center-dev.github.io/H-wave/manual/main/en/html/howtouse/ho-index.html)
[1]Magnetism of finite graphene samples: Mean-field theory compared with exact diagonalization and quantum Monte Carlo simulations, Hélène Feldner, et al, PHYSICAL REVIEW B 81, 115416 (2010)
[2]Mean-field solution of the Hubbard model: the magnetic phase diagram,Y Claveau et al, 2014 Eur. J. Phys. 35 035023
[3]Semi-Metal-Insulator Transition of the Hubbard Model in the Honeycomb Lattice,S. Sorella and E. Tosatti 1992 EPL 19 699

## 平均场原理
---

&emsp;&emsp;在实空间中，Hubbard模型的哈密顿量为：

$$
\begin{gathered}
H_0=-t \sum_{\langle i j\rangle \sigma} c_{i, \sigma}^{\dagger} c_{j, \sigma}+\text { h.c. }-\mu \sum_{i, \sigma} n_{i, \sigma} \\
H_U=U \sum_i n_{i \uparrow} n_{i \downarrow}
\end{gathered}
\tag{1}
$$

&emsp;&emsp; 可以选取相互作用四费米子项中的$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$作为平均场参数，认为其偏离平衡值的变化为小量，相互作用的等效哈密顿量为：

$$
{H_U}^{MF}=U \sum_{ \alpha \sigma} n_{ \alpha \sigma} \left\langle n_{\alpha ,-\sigma}\right\rangle-U  \sum_\alpha\left\langle n_{\alpha \uparrow}\right\rangle\left\langle n_{\alpha \downarrow}\right\rangle
\tag{2}
$$

&emsp;&emsp; 对角化这些二费米子算符，得到用平均场参数表示的新基矢下的本征能量，利用基矢变换反解原先的$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$，从而完成自洽求解。
&emsp;&emsp; 在$k$空间中，Hubbard模型的哈密顿量为：

$$
\begin{aligned}
H_0 & =\sum_{\vec{k}}\left(\varepsilon_{\vec{k}}-\mu\right) c_{\vec{k} \sigma}^{\dagger} c_{\vec{k} \sigma} \\
H_U & =U \sum_{\vec{q}} \rho_{\vec{q}, \uparrow} \rho_{-\vec{q}, \downarrow} \\
\rho_{\vec{q}, \sigma} & =\frac{1}{\sqrt{N}} \sum_{\vec{k}} c_{\vec{k}+\vec{q}, \sigma}^{\dagger} c_{\vec{k}, \sigma}
\end{aligned}
\tag{3}
$$

&emsp;&emsp; 可以选取相互作用四费米子项中的$\left\langle{\rho_{\vec{q}, \sigma}}\right\rangle$作为平均场参数，认为其偏离平衡值的变化为小量，相互作用的等效哈密顿量为：

$$
{H_U}^{MF}=U \sum_{\vec{q}}\left\langle\rho_{\vec{q}, \uparrow}\right\rangle \rho_{-\vec{q}, \downarrow}+\rho_{q, \uparrow}\left\langle\rho_{-\vec{q}, \downarrow}\right\rangle-\left\langle\rho_{\vec{q}, \uparrow}\right\rangle\left\langle\rho_{-\vec{q}, \downarrow}\right\rangle
\tag{4}
$$

&emsp;&emsp; 按照之前的方法自洽求解即可。

## H-wave 程序包求解平均场
---

&emsp;&emsp; H-wave是一个求解平均场的程序包，本质上做的是实空间的Hartree-Fock近似。先利用Stdface程序输入作用量的形式与体系的几何参数，比如对于单层石墨烯而言，输入：单层石墨烯的几何参数，transfer项，onsiteU项，平均场参数，得到：

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/1.png" width = "450" height = "150" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/2.png" width = "450" height = "170" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/3.png" width = "450" height = "105" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/4.png" width = "450" height = "120" alt="图片名称" align=center />

&emsp;&emsp; H-wave程序包需要输入的就是上面确定几何形状与相互作用形式的文件，再加上确定平均场参量的文件，最终用hwave程序执行下面的文本文件得到输出的结果。平均场参量的定义式是$\left\langle C_{i \sigma}^{+} C_{j \sigma'}\right\rangle$，当只保留$i=j,\sigma=\sigma'$时，平均场参量就是onsiteU项实空间中的参量$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$，简单的情况下该文件就可以如此定义。

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/5.png" width = "200" height = "400" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/6.png" width = "200" height = "400" alt="图片名称" align=center />

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/7.png" width = "200" height = "400" alt="图片名称" align=center />

&emsp;&emsp; 这样的文本文件定义方法为之后进一步计算创造了条件。比如双层石墨烯的计算，虽然Stdface中只有单层的结构，但是只要通过修改几个Stdface的输出文件，用几何关系找到4个子格在晶格矢量下的坐标，把现在的1类改为4类transfer作用形式，增加1倍onsiteU相互作用就可以了。比如我想要向模型中加入更多的项，利用hwave中已经定义好的作用形式，或是找到一种可以写作四费米子相互作用的普遍形式，也是可以计算的。

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/8.png" width = "600" height = "280" alt="图片名称" align=center />

## Result and Disscussion part 1
---

&emsp;&emsp; MODEL :
$$
\begin{gathered}
H_0=-t \sum_{\langle i j\rangle \sigma} c_{i, \sigma}^{\dagger} c_{j, \sigma}+\text { h.c. }-\mu \sum_{i, \sigma} n_{i, \sigma} \\
H_U=U \sum_i n_{i \uparrow} n_{i \downarrow}
\end{gathered}
\tag{1}
$$

&emsp;&emsp; LATTICE :   &emsp;&emsp;&emsp;&emsp;&emsp;&emsp; SINGLE-LAYER GRAPHENE

>Energy Band
><img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/10.png" width = "300" height = "300" alt="图片名称"  align=center />
><img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/11.png" width = "300" height = "300" alt="图片名称" align=center />
>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; Half-Filling,  $S_z=0$ , $N=[32,32,2]$, $U=t=1$,  $T=0$

>Ground State Energy
><img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/12.png" width = "300" height = "300" alt="图片名称" align=center />
><img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/15.png" width = "300" height = "300" alt="图片名称" align=center />
>Half-Filling,  $S_z=0$, $N=[16,16,2]$,  $T=0,EPS=-8$ &emsp; Half-Filling,  $S_z=0$, $N=[16,16,2]$,  $T=0,EPS=-6$

>Charge Gap   &emsp;&emsp;&emsp;&emsp;   E(N+1)-E(N)-(E(N)-E(N-1))
><img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/13.png" width = "300" height = "300" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/16.png" width = "300" height = "300" alt="图片名称" align=center />
>(Left)  Half-Filling,  $S_z=0$, $N=[16,16,2]$,  $T=0,EPS=-8$
>(Right) PHYS.REV.B, 81,115416 (2010) $N=16$

&emsp;&emsp;由于计算精度所限，可以认为在$U=2.3t$附近发生了相变，更为精确的石墨烯Hartree-Fock平均场应当在$U=2.23t$左右，这实际上是Hubbard模型的Hubbard-Mott相变，使得单层石墨烯从半金属态变为反铁磁绝缘体态。在原本的狄拉克锥上对于A，B两个子格石墨烯存在重合的能带，石墨烯A,B子格共计提供两个价电子，重合的能带需要四个电子填满，半满的带呈现金属性。随着onsiteU作用的增强，如果仍然用能带理论近似去看的话，如果石墨烯所呈现的反铁磁性质，其会打开带隙。具体来说，原本无相互作用的低能有效石墨烯哈密顿量，$H=\vec{q}\vec{\sigma}$不会对A,B子格做出选择，加入反铁磁作用后相当于取定z方向自旋，加入的相互作用使得Half-filling $\left\langle{n_{i A \uparrow}}\right\rangle +\left\langle{n_{i A\downarrow}}\right\rangle =1$下，$\left\langle{n_{i A \uparrow}}\right\rangle >1/2$与 $\left\langle{n_{i A\downarrow}}\right\rangle <1/2$，以及 $\left\langle{n_{i B \uparrow}}\right\rangle <1/2$与 $\left\langle{n_{i B\downarrow}}\right\rangle >1/2$，写在矩阵中：

$$
\begin{pmatrix}
 1/2> &  &  & \\
 & <1/2 &  & \\
 &  & <1/2 & & \\
 &  &  &  >1/2  \\
\end{pmatrix}
\tag{5}
$$

&emsp;&emsp; 求解能带，打开带隙，准粒子描述下的电子需要带隙的能量$E(N+1)-E(N)$才会被激发，charge gap非零，并且原本重合的能带产生差距，从而两个价电子填满能带呈绝缘体。

## 求解量子磁性（未完成）
---

&emsp;&emsp;想要画出的相图应当是$FM,PM,AFM$指标在不同filling，$U/t$下面的值，[Y Claveau et al (2014)][3]$(Hubbard,Square)$得到的相图为：

<img src="https://54749110.github.io/assets/2024-11-10-mean-field-with-h-wave/17.png" width = "450" height = "400" alt="图片名称" align=center />

&emsp;&emsp; 上文所述，平均场参量的定义式是$\left\langle C_{i \sigma}^{+} C_{j \sigma'}\right\rangle$，当只保留$i=j,\sigma=\sigma'$时，平均场参量就是onsiteU项实空间中的参量$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$。我们知道顺磁，铁磁与反铁磁可以通过动量空间平均场参数 $\left\langle\rho_{q}\right\rangle$来表示：

$$
\begin{aligned}
PM : & \left\langle\rho_{\vec{q}=0, \sigma}\right\rangle = \left\langle\rho_{\vec{q}=0, \sigma}\right\rangle = m \\
PM : & \left\langle\rho_{\vec{q}=0, \sigma}\right\rangle - \left\langle\rho_{\vec{q}=0, -\sigma}\right\rangle \neq 0 \\
AFM： & \left\langle\rho_{\vec{q}=(\pi, \pi), \sigma}\right\rangle - \left\langle\rho_{\vec{q}=(\pi, \pi), -\sigma}\right\rangle \neq 0
\end{aligned}
\tag{6}
$$

&emsp;&emsp; 并且，实空间与动量空间的平均场参数有关联：

$$
\left\langle\rho_{q}\right\rangle = \sum_i \left\langle{n_{i }}\right\rangle e^{iqr_i}
\tag{7}
$$

&emsp;&emsp; 因此平均场可以做如下计算，设定$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$为平均场参量，自洽求解之后得到最终的值，利用关系求解$\left\langle\rho_{q}\right\rangle$,利用上面的关系得到相图。

&emsp;&emsp;如果可以直接以$\left\langle\rho_{q}\right\rangle$自然最好，但是H-wave并不支持这样的定义方法。实际上，H-wave对角化k空间需要先将实空间哈密顿量写作二费米子的形式，再直接利用傅里叶变换到k空间的二费米子哈密顿量：

$$
H_{HF}=\sum_{k \alpha \beta \sigma \sigma'} h_{\alpha \beta \sigma \sigma'}(k) c_{k \alpha \sigma^{\prime}}^{\dagger} c_{k \beta \sigma^{\prime}}
\tag{8}
$$

&emsp;&emsp;这样只要对角化指标$(\alpha \beta \sigma \sigma')$下的关于$k$的小矩阵就可以了，把原先关于$N_{site}$对角化变为$N_{site}$个$(\alpha \beta \sigma \sigma')$的对角化，这大大节省了计算量。代价是需要$k$是好量子数，即所求解的basis为$(k1,k2……)$,这时候$\left\langle\rho_{q}\right\rangle$即$\left\langle(k1,k2……)|\frac{1}{\sqrt{N}} \sum_{\vec{k}} c_{\vec{k}+\vec{q}, \sigma}^{\dagger} c_{\vec{k}, \sigma}|(k1,k2……)\right\rangle$要想非零只能$q=0$,也就只能解出$\left\langle\rho_{\vec{q}=0, \sigma}\right\rangle$，即铁磁项。

&emsp;&emsp;如果想要算出反铁磁项几种方法可以尝试。第一种是在实空间做，自行设定平均场参量$\left\langle{n_{i \uparrow}}\right\rangle$与$\left\langle{n_{i \downarrow}}\right\rangle$的值，缺点是还是要对角化$N_{site}$矩阵迭代若干次，计算量太大格点不能取多。第二种是扩大$k$空间需对角化矩阵的维数,使得$\left\langle\rho_{q}\right\rangle$非零，对于给定的$q(\pi,\pi)$可以定向扩胞。第三种或许可以借助H-wave中定义的InterAll,普遍的四费米子相互作用形式$c_{i \sigma_1}^{\dagger} c_{j \sigma_2} c_{k \sigma_3}^{\dagger} c_{l \sigma_4}$，认为$(i,j,k,l)$就是$k$空间的坐标,缺点是需要根据晶格的几何与作用形式自行大改前面的参数。

## [PDF Download](/assets/2024-11-10-mean-field-with-h-wave/hwave.pdf)
