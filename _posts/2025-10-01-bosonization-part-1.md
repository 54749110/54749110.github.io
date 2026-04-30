---
layout: post
title:  "Bosonization part 1"
description: "Introduction to Luttinger Liquid"
pin: true
math: true
mermaid: true
categories: [Bosonization, Luttinger Liquid]
tags: [Bosonization, Luttinger Liquid]
author: Xuan
---

&emsp;&emsp;这次读书会时我想说明这样一个技术：利用玻色化方法可以处理一维费米子相互作用体系，著名的就是Luttinger 液体 。 我们会看到费米子模型变成了连续玻色场体系。后面的读书会上会看到重整化流的参数就包含在这个玻色场中，从而可以分析相。比如Hubbard-Kitaev模型有几篇文章就是这么做的。这个技术相当复杂，这次玻色化的部分也有许多深刻的地方我也许理解不对。

## REF
---
[1]《Many-Body Theory in Condensed Matter Physics—— An Introduction》Henrik Bruus and Karsten Flensberg   
[2] R. Shankar, Quantum Field Theory and Condensed Matter—An
 Introduction (Cambridge University Press, Cambridge, 2017).  
[3]I.Mahyaeh and E.Ardonne, study of the phase diagram of the Kitaev-Hubbard chian , phys.rev.B,101,085125(2020)  
[4]Armin Rahmani1, Xiaoyu Zhu1,2, Marcel Franz1, and Ian Affleck,Phase diagram of the interacting Majorana chain model.Phys. Rev. B 92, 235123(2015)

## Luttinger Liquid
---
&emsp;&emsp;Luttinger 液体是非费米液体，是玻色化方法应用的典型例子。我们可以先采用费米液体理论处理一维相互作用电子气模型，来看看其缺陷在哪里。我们要找寻电子如果可以被准粒子表述，那就会有准粒子激发谱。得到激发谱需要两个公式，第一个是介电常数的dielectric function. (Bruus, Chap6.4)

&emsp;&emsp;dielectric function 的经典表示就是 $\epsilon = 1- V_q  \rho_{ind} /  \phi_{total}$ ，或$\epsilon \cdot \phi_{total}=\phi_{ext}$。介电常数的定义就是外场所能激发的总电荷，在线性相应理论中写作：

$$
\varepsilon(q, \omega)=1-V(q) \frac{2}{V} \sum_k \frac{n_F\left(\xi_{k+q}\right)-n_F\left(\xi_k\right)}{\xi_{k+q}-\xi_k-\omega+i\eta}
\tag{1}
$$

&emsp;&emsp;在RPA近似下面自能只保留到一阶的圈图，此时$\chi_(q,\omega) \rightarrow \chi_0(q,\omega)$ :

$$
\varepsilon(q, \omega)=1-V(q) \frac{2}{V} \chi_0(q,\omega)
\tag{2}
$$


&emsp;&emsp;其中$\varepsilon(q, \omega)$的不同数值代表了准粒子激发的不同模式，比如$\varepsilon(q, \omega)=0$的准粒子在无外场下仍可以形成内部的电荷密度分布$\rho_q$,这也是我们需要的，通过(1)式中左边为零，最终可以解出$\omega = \omega(q)$的准粒子激发谱。

&emsp;&emsp;另外一个公式就是极化率的形式，极化率的虚部代表了准粒子的寿命，虚部非零，准粒子才得以激发,这由Lindhard formula给出：

$$
\chi_0 =  \frac{1}{V} \sum_k \frac{n_F\left(\xi_{k+q}\right)-n_F\left(\xi_k\right)}{\xi_{k+q}-\xi_k-\omega+i\eta}
\tag{3}
$$


&emsp;&emsp;一维和三维的区别一是在于$V(q)$的形式，需要对实空间的库伦作用做一维和三维的傅里叶变换产生了差异，其中$a$是为了避免一维傅里叶变换发散做的截断。更重要的是在于对k的求和会变为对于$dk$的一维或三维积分，下面是它们的差异：


$$
\omega_{1D} = q \sqrt{\frac{4 e_0^2}{\pi v_{\mathrm{F}}} \ln \left(\frac{1}{q a}\right)}
\tag{4}
$$

$$
\omega_{3D} = \omega_p + \frac{v_F^2}{\omega_p}q^2
\tag{5}
$$

&emsp;&emsp;下面是准粒子激发的$\omega-q$关系，其中阴影部分是极化率虚部非零的区域，可以由上面的lindhard formula 给出 ，虚线为在$\varepsilon(q, \omega)=0$的模式下的色散关系$\omega = \omega(q)$：

<img src="https://54749110.github.io/assets/2025-10-01-bosonization-part-1/1.png" width = "550" height = "200" alt="图片名称" align=center />

&emsp;&emsp;可以画一个费米球理解这个问题，三维接近费米速度的处激发$q$总能通过“转”让它无激发能量，而一维的限制让它总要有激发能量。

&emsp;&emsp;之所以说费米液体理论失效，可以通过计算准粒子寿命来表示，

$$
\tau^{-1}= -2Im\chi
$$

&emsp;&emsp;三维时：$\tau^{-1} \sim T^2$ 。在相空间中只有费米能级附近一个尺度下的电子能参与散射，而零温下不存在这个尺度，不会散射，零温时准粒子寿命无穷，费米液体理论适用。一维时$\tau^{-1} =const$ ,这表明即使是零温下也存在一些散射机制要干掉准粒子，比如说集体激发的关联。


## Bosonization of Luttinger Liquid
---
&emsp;&emsp;想要把相互作用费米子系统变为玻色系统，可以从二次量子化哈密顿量出发，一维相互作用电子气在动量空间的哈密顿量为：


$$
\begin{aligned}
H_0 & =\sum_k \xi_k c_k^{\dagger} c_k \\
H_{\mathrm{int}} & =\frac{1}{2 \mathcal{L}} \sum_{k k^{\prime} q}^{\prime} V(q) c_k^{\dagger} c_{k^{\prime}}^{\dagger} c_{k^{\prime}-q} c_{k+q} \\
\end{aligned}
\tag{6}
$$

$$
\xi_k=\varepsilon_k-\mu \approx\left(|k|-k_{\mathrm{F}}\right) v_{\mathrm{F}}
$$

&emsp;&emsp; 把$k$动量的电子看作要么是左移的$k>0$，要么是右移的$k<0$,从而产生的是“左移费米子算符”与“右移费米子算符”：

$$
c_k=c_{k R} \Theta(k)+c_{k L} \Theta(-k)
$$


&emsp;&emsp; 定义左移和右移的密度算符为：

$$
\begin{aligned}
\rho_R(q) & =\sum_{k>0} c_k^{\dagger} c_{k+q} \approx \sum_{k>0} c_{k R}^{\dagger} c_{k+q R}, \\
\rho_L(q) & =\sum_{k<0} c_k^{\dagger} c_{k+q} \approx \sum_{k<0} c_{k L}^{\dagger} c_{k+q L},
\end{aligned}
\tag{7}
$$

&emsp;&emsp;  从而可以把哈密顿量表示为：

$$
\begin{aligned}
H_0 & =\frac{2 \pi v_F}{\mathcal{L}} \sum_{q>0}\left[\rho_R(-q) \rho_R(q)+\rho_L(q) \rho_L(-q)\right]+C\left(N_L, N_R\right), \\
H_{\text {int }} & =\frac{1}{2 \mathcal{L}} \sum_{q \neq 0} V_1\left[\rho_R(q)+\rho_L(q)\right]\left(\rho_R(-q)+\rho_L(-q)\right), \\
V_1 & =V(0)-V\left(2 k_{\mathrm{F}}\right) .
\end{aligned}
\tag{8}
$$

&emsp;&emsp;  说明一下这个变换如何处理哈密顿量的：正是因为一维体系的特点，散射都发生在费米面附近，也就是只有$k_F$和$-k_F$两处。所有的散射过程中，相互作用只能使得$k_F$到$-k_F$附近,$-k_F$到$k_F$附近，以及$k_F$到$k_F$附近,$-k_F$到$-k_F$附近，这两个过程可以发生。譬如$k_F$到$k_F$附近，却想使得另一个电子$k_F$到$-k_F$附近概率几乎为零。（半满的时候还有一个 Umklapp processes，此时+2kf等价于-2kf,4kf=G）。如果不是一维体系，各种各样的$q$都可以完成这个散射过程，再分为$L$与$R$两部分就没有意义了。现在只要关注这几项就可以了，而它们恰好可以写作（8）式的形式。

&emsp;&emsp;对于无相互作用部分，即使不存在$q$的内容，仍然想把它变为$\rho(q)$的形式。注意到了 Kac-Moody 代数：

$$
\begin{gathered}
{\left[\rho_R(q), \rho_R\left(q^{\prime}\right)\right]=-\frac{q L}{2 \pi} \delta_{q+q^{\prime}, 0}} \\
{\left[\rho_L(q), \rho_L\left(q^{\prime}\right)\right]=+\frac{q L}{2 \pi} \delta_{q+q^{\prime}, 0}} \\
{\left[\rho_R(q), \rho_L\left(q^{\prime}\right)\right]=0}
\end{gathered}
\tag{9}
$$

&emsp;&emsp;它使得无相互作用哈密顿量满足对易关系：$\left[H_0, \rho_L(q)\right] \approx q v_F \rho_L(q)$。要注意这就是一个类似海森堡运动学方程的形式，实际上玻色化是基于运动方程类比地构造出来的。公式（8）中的玻色哈密顿量确实验证是满足这个对易关系的，它并非唯一选择。所谓的理论等价，只是指运动方程等价。也就是说常数可以任意选取，这里的常数特意选取了


$$
C\left(N_L, N_R\right) =\frac{\pi v_F}{2 L}\left(\hat{N}^2+\hat{J}^2\right)
\tag{10}
$$

&emsp;&emsp;其中$N=N_L+N_R$,  $J=N_L-N_R$,这一项在海森堡对易关系里是零。我们知道在费米子体系里面$q=0$描述了一个电荷密度均匀分布的状态，$q \neq 0$是一个涨落，体现在$\rho(q)$上面。$q=0$的部分也必须包含进去，这是玻色化之后所没有的项，就是所谓的化学势，体现的是总粒子数。把费米部分的化学势摘出来，固定总粒子数下它就是一个常数，加到玻色系统里作为基底能量，就是公式10的常数。最终可以看到玻色表象$\rho_{Rq},\rho_{Lq}$下面是可对角化的形式，在该表象下的本征能量也可以解出了。


&emsp;&emsp;接下来尝试把这个哈密顿量连续化，我们处理的是费米面附近的低能激发，实际上连续化需要一个缓变的场，而晶格场又是剧变的，两者在低能等效中可以共存（姚老师暑校的说法）：

$$
\begin{aligned}
c_j= & \int_{2 \Lambda} d k c_k e^{i x} (在费米面附近2 \Lambda小区间积分 ,x=ja离散变量) \\
   = & \int_{2 \Lambda LEFT}+\int_{2 \Lambda RIGHT} (对一维成立) \\
   = & \psi_{L}(x) e^{ik_Fx}+\psi_{R}(x) e^{-ik_Fx} \\
   where  \psi_{L}(x) = &\int_{2 \Lambda LEFT} d \Delta k c_{(-k_F+\Delta k)} e^{i \Delta k x}
\end{aligned}
$$

&emsp;&emsp;剧变来源于$e^{ik_Fx}$，导致了$c_j$的剧变，场$\psi_{L}(x)$是缓变的，因此虽然$x=ja$是离散变量可以连续处理。因此直接对密度算符做傅里叶连续化，$\rho_L(q) \rightarrow \rho_L(x)$ ：


$$
\begin{gathered}
H_0=\pi v_{\mathrm{F}} \int_{-\mathcal{L} / 2}^{\mathcal{L} / 2} d x\left[\rho_R(x) \rho_R(x)+\rho_L(x) \rho_L(x)\right]+C\left(N_L, N_R\right) \\
H_{\text {int }}=\frac{V_1}{2} \int_{-\mathcal{L} / 2}^{\mathcal{L} / 2} d x\left[\rho_R(x)+\rho_L(x)\right]\left[\rho_R(x)+\rho_L(x)\right]
\end{gathered}
\tag{11}
$$

&emsp;&emsp; 如同上文低能的动量截断，对应长波尺度要做位置截断。定义(忽略了一个基底常数）：

$$
\begin{aligned}
\frac{1}{\sqrt{\pi}} \partial_x \phi(x) & \equiv \rho_R(x)+\rho_L(x) \\
-\frac{1}{\sqrt{\pi}} P(x) & \equiv \rho_R(x)-\rho_L(x) \\
\end{aligned}
\tag{12}
$$

&emsp;&emsp; 这两个场如同共轭的位置和动量满足哈密顿动力学。得到最终的哈密顿量为：

$$
\begin{gathered}
H=\frac{\tilde{v}}{2} \int_{-\mathcal{L} / 2}^{\mathcal{L} / 2} d x\left[g P^2(x)+\frac{1}{g}\left(\partial_x \phi(x)\right)^2\right] \\
g^{-1}=\sqrt{1+\frac{V(0)-V(2k_F)}{\pi v_{\mathrm{F}}}}, \quad \tilde{v}=\frac{1}{g} v_{\mathrm{F}}
\end{gathered}
\tag{13}
$$


## Fermonic Field in Representation of  Bosonic Field
---
&emsp;&emsp;上面的过程只是把哈密顿量用它的密度算符来表示，就算做玻色化了。更一般的，能否把一个费米子场，在一维，低能的条件的情况下表示为玻色子场的形式？我们知道，费米子场满足以下两个规律。第一反对易关系，第二与密度算符的对易关系，第二个式子确保了$\psi_{r}^{\dagger}(x)$的物理定义：在位置x增加了一个费米子，从而改变了该点的密度。

$$
\psi(x)\psi^{\dagger}(y) +\psi^{\dagger}(y)\psi(x)=\delta(x-y)
\tag{14}
$$

$$
\left[\rho_{r^{\prime}}(y), \psi_r(x)\right]=-\delta_{r, r^{\prime}} \delta(x-y) \psi_r(x)
\tag{15}
$$

&emsp;&emsp; 也就是说这样一个玻色场需要替代上面费米场的位置，满足上面二式，从公式（12）中已经知道密度算符可以表示为一对共轭玻色场的形式：
$\rho_R=-\frac{1}{2 \sqrt{\pi}}\left(\partial_x \phi-\partial_x \theta\right)$，其中$\partial_x \theta=P(x)$。能否把费米场表达为这两个场的组合呢？

&emsp;&emsp;定义 <font color=blue>Bosonization Identity</font>:

$$
\psi_R(x) \sim \frac{1}{\sqrt{2 \pi \alpha}} F_R e^{-i \sqrt{4 \pi} \phi_R(x)}
\tag{16}
$$

&emsp;&emsp;其中$\phi_R=\frac{1}{2}(\phi-\theta), \phi_L=\frac{1}{2}(\phi+\theta)$ 我们要利用从密度算符对易关系得到的玻色场算符的对易关系$\left[\phi(x), \partial_y \theta(y)\right]=i \pi \delta(x-y)$，指数展开公式：$e^Ae^B=e^{A+B}e^{1/2AB-BA}$,等等（过程太长，详见Bruus Chap19.7)。其中$\alpha$为截断。

&emsp;&emsp;作为一个例子，可以证明下面的式子成立，即自由费米子场可以由自由玻色场表示

$$
\begin{aligned}
&H_F=\int\left[\psi_{+}^{\dagger}(x)\left(-i \partial_x\right) \psi_{+}(x)+\psi_{-}^{\dagger}(x)\left(i \partial_x\right) \psi_{-}(x)\right] d x\\
= &H_B=\frac{1}{2} \int\left[\Pi^2+\left(\partial_x \phi\right)^2\right] d x \\
\end{aligned}
\tag{17}
$$

$$
\begin{aligned}
&\psi^{\dagger}(x)\left(\partial_x\right) \psi(x)=\lim _{\epsilon \rightarrow 0} \psi^{\dagger}(x)\left(\frac{\psi(x+\epsilon)-\psi(x-\epsilon)}{2 \epsilon}\right)\\
\end{aligned}
$$


&emsp;&emsp;利用$e^Ae^B=e^{A+B}e^{1/2AB-BA}$, $\left[\phi(x), \partial_y \theta(y)\right]=i \pi \delta(x-y)$

$$
\begin{aligned}
\psi_{+}^{\dagger}(x) \psi_{+}(x+\epsilon)= & \frac{1}{2 \pi a} e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{i \sqrt{4 \pi} \phi_{+}(x+\epsilon)} \\
= &\frac{1}{2 \pi a} e^{i \sqrt{4 \pi}\left[\phi_{+}(x+\epsilon)-\phi_{+}(x)\right]} e^{-i \pi \cdot \operatorname{sgn}(\epsilon) / 2}
\end{aligned}
$$


&emsp;&emsp; 逐阶展开，直到$\epsilon$一阶项，得到：

$$
\begin{aligned}
\psi\left(x^{\prime}\right) \psi^{\dagger}(x) & =\frac{1}{2 \pi \varepsilon}+i \frac{1}{\sqrt{\pi}} \partial_x \varphi+i \frac{\varepsilon}{\sqrt{4 \pi}} \partial_x^2 \varphi-\varepsilon\left(\partial_x \varphi\right)^2 \\
\psi^{\dagger}\left(x^{\prime}\right) \psi(x) & =\frac{1}{2 \pi \varepsilon}-i \frac{1}{\sqrt{\pi}} \partial_x \varphi-i \frac{\varepsilon}{\sqrt{4 \pi}} \partial_x^2 \varphi-\varepsilon\left(\partial_x \varphi\right)^2 \\
\end{aligned}
$$

&emsp;&emsp;最后只留下了：

$$
\begin{aligned}
&\psi_{+}^{\dagger}(x)\left(-i \partial_x\right) \psi_{+}(x) \rightarrow \frac{1}{2}\left[\left(\partial_x \phi_{+}\right)^2+\text { 常数 }\right]\\
&\psi_{-}^{\dagger}(x)\left(i \partial_x\right) \psi_{-}(x) \rightarrow \frac{1}{2}\left[\left(\partial_x \phi_{-}\right)^2+\text { 常数 }\right]
\end{aligned}
$$


&emsp;&emsp;其中：

$$
\phi=\phi_{+}+\phi_{-}, \quad \theta=\phi_{-}-\phi_{+}
$$

&emsp;&emsp;因此得到了：

$$
H_F \rightarrow \frac{1}{2} \int\left[\left(\partial_x \phi\right)^2+\Pi^2\right] d x=H_B
$$


&emsp;&emsp; 为了下面的一系列推导。不加证明的写出下面四个恒等式：


$$
\begin{aligned}
\bar{\psi} \psi(x) & =-i \psi_{+}^{\dagger}(x) \psi_{-}(x)+\text { h.c. } \\
& =\frac{1}{2 \pi \alpha}\left[e^{-i \sqrt{4 \pi} \phi_{+}(x)} e^{-i \sqrt{4 \pi} \phi_{-}(x)}(-i)+\text { h.c. }\right] \\
& =\frac{1}{2 \pi \alpha}\left(e^{-i \sqrt{4 \pi} \phi(x)} e^{\frac{1}{2} 4 \pi(-1) \frac{i}{4}}(-i)+\text { h.c. }\right) \\
& =-\frac{1}{\pi \alpha} \cos \sqrt{4 \pi} \phi .
\end{aligned}
\tag{18}
$$

$$
\begin{aligned}
\bar{\psi} i \gamma^5 \psi & =-\left[\psi_{+}^{\dagger}(x) \psi_{-}(x)+\psi_{-}^{\dagger}(x) \psi_{+}(x)\right] \\
& =\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi .
\end{aligned}
\tag{19}
$$


$$
\left[\frac{-1}{\pi \alpha} \cos \sqrt{4 \pi} \phi\right]^2=-\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2+\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi
\tag{20}
$$

$$
\left[\frac{1}{\pi \alpha} \sin \sqrt{4 \pi} \phi\right]^2=-\frac{1}{\pi}\left(\frac{\partial \phi}{\partial x}\right)^2-\frac{1}{2 \pi^2 \alpha^2} \cos \sqrt{16 \pi} \phi .
\tag{21}
$$

&emsp;&emsp; 最后，我们重新得到上面的连续模型Luttinger Liquid 哈密顿量，第一部分无相互作用部分可以用上面得到的自由玻色场表示，对于相互作用部分$Un_in_j$,其中$n_j$:

$$
\begin{aligned}
n_j = & [ \psi_{+}^{\dagger}(x) e^{i\pi/2j} + \psi_{-}^{\dagger}(x) e^{-i\pi/2j}][ \psi_{+}(x) e^{-i\pi/2j} + \psi_{-}(x) e^{i\pi/2j}] \\
   = & [\psi_{+}^{\dagger}(x)\psi_{+}(x) +\psi_{-}^{\dagger}(x)\psi_{-}(x)] + [\psi_{+}^{\dagger}(x)\psi_{-}(x) - \psi_{+}(x)\psi_{-}^{\dagger}(x)]
\end{aligned}
$$

&emsp;&emsp; 这都可以由上面四个恒等式得到，最后得到：


$$
V= U \int d x\frac{2\partial_x \phi^2}{\pi}
$$

&emsp;&emsp;  把自由玻色场加上去，得到：

$$
H=\int d x\left(\frac{1}{2}\left[\Pi^2+\left(1+\frac{4 U}{\pi}\right)\left(\partial_x \phi\right)^2\right]\right)
\tag{22}
$$

&emsp;&emsp; 这就是之前通过二次量子化得到的玻色化哈密顿量形式。

## [PDF Download](/assets/2025-10-01-bosonization-part-1/bosonization.pdf)


