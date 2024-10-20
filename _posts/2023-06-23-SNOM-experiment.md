---
layout: post
title:  "SNOM experiment"
description: Near-field nano-optical microscope work
pin: true
math: true
mermaid: true
categories: [Small Survey , SNOM experiment]
tags: [graphene,plasmons]
author: Xuan
---

# <center> 近场纳米光学实验报告

- [ 近场纳米光学实验报告](#-近场纳米光学实验报告)
  - [ Abstract](#-abstract)
  - [ Introduction and Research Materials](#-introduction-and-research-materials)
    - [近场纳米光学显微镜](#近场纳米光学显微镜)
    - [石墨烯性质介绍](#石墨烯性质介绍)
    - [表面等离激元介绍](#表面等离激元介绍)
  - [ Research Procress and Results](#-research-procress-and-results)
    - [制备单层石墨烯](#制备单层石墨烯)
    - [获得表面等离激元](#获得表面等离激元)
  - [ Conclusion](#-conclusion)
  - [ Bibliography](#-bibliography)
  - [PDF Download](#pdf-download)


## <center> Abstract
---
近场纳米光学显微镜(SNOM)的发明极大的提升了对微观尺度上物质结构的探测能力，包括对于物质尺度，态密度，电磁性质的探索。而石墨烯具有优异的光学、电学、力学特性，在材料学、微纳加工、能源、生物医学和药物传递等方面具有重要的应用前景。单层石墨烯的制取使人们可以在其基础上增添，以完善其功能。本实验以单层石墨烯为介质，以近场纳米光学显微镜为仪器，观察单层石墨烯的物理性及其在不同偏压下激发的等离激元的性质。  


The invention of the near-field nano-optical microscope (SNOM) has greatly improved the ability to detect the structure of matter on the microscopic scale, including the exploration of the scale of matter, density of states, and electromagnetic properties. Graphene has excellent optical, electrical, and mechanical properties, and has important application prospects in materials science, micro-nano processing, energy, biomedicine, and drug delivery. The preparation of single-layer graphene allows people to add on its basis to improve its function. In this experiment, single-layer graphene was used as the medium, and the near-field nano-optical microscope was used as the instrument to observe the physical properties of single-layer graphene and the properties of plasmons excited under different bias voltages.


## <center> Introduction and Research Materials
---
### 近场纳米光学显微镜
&emsp;&emsp; NSOM 技术是一种基于近场光学效应的高分辨率成像技术，通过控制光与样品之间的距离来实现纳米级别的成像分辨率。NSOM 技术在表面形貌、光学性质、生物分子等领域的研究中具有广泛的应用前景，特别是在纳米材料和纳米结构的研究中，可以提供重要的信息和洞察力，促进材料、物理和生命科学的研究进展。

&emsp;&emsp; NSOM 技术的原理基于近场光学效应，即当光与物体非常接近时，它们之间的相互作用会产生一系列不同于远场光学的效应。在远场光学中，光通过透镜聚焦后，形成的光斑大小受到光波长的限制，因此分辨率受到限制。而在近场光学中，当光线与物体非常接近时，光的波长不再是限制分辨率的主要因素，而是可以通过控制光与物体之间的距离来实现更高的分辨率。此外，NSOM还有不同类型，包括透射式以及反射式，其区别在于探针是在下方接受透射信号光还是在上方接受反射信号光。

&emsp;&emsp;在我们实验的 NSOM 中，探针与样品之间存在着一种称为“光与物质的近场耦合”的现象。当探针与样品非常接近时，它们之间的电磁场会相互作用，从而实现尺寸小于光波长的光斑。其主要基于两个关键的特征频率，第一个是探针的机械振动频率，可以有精密的压电系统控制，使得探针可以在一定周期下足够接近样品。而在探针的尖端，由于尖端效应，存在着大量聚集的能量，体现为一个强电场，这个电场在接近样品时足以与样品相互作用，样品发生的变化体现在散射光上从而被接受。

&emsp;&emsp; 就光学测量而言，第二个频率即激光器频率是重要的。激光照射探针的尖端以及样品，从而产生上述的反应得到了散射光。其中包括反应的近场光与未发生反应的远场光。在频谱上，发生反应的光在几倍激光器频率上都保持稳定，而未反应散射光则快速衰减，我们截取高频信号可以剔除杂音。更进一步，我们还可以利用类似迈克尔逊干涉仪的原理同时测量振幅与相位的变化，只需要求解一个简单的方程组即可。

### 石墨烯性质介绍
&emsp;&emsp; 石墨烯是一种二维的碳材料，由单层的碳原子构成，呈现出类似蜂窝状的六边形结构，是目前已知的最薄、最坚硬、最导电和最热导的材料之一。这是石墨结构的电子和晶格振动可以在平面上自由传播，同时由于其单层的纯净结构，不存在类似晶格缺陷、杂质等导致的散射，因此电子传输能力非常优秀。石墨烯的光学性质也非常特殊，它在可见光和红外区域的吸收率非常低，几乎是透明的，但在紫外区域具有很高的吸收率。
我们还在石墨烯中发现了量子霍尔效应。电子在磁场作用下只沿着边界运动，而不进入样品内部，这种现象在电子学和量子计算领域也有广泛的应用。

### 表面等离激元介绍
&emsp;&emsp; 表面等离激元是一种在金属和介电质表面的电磁波和电子波相互作用的物理现象。当光线与金属表面相遇时，光子与金属表面电子间的相互作用会形成一种亚波长尺度的电磁波，即表面等离激元。它的产生可以通过表面等离激元共振来实现，这是一种光与表面等离激元相互作用的现象。当光线垂直入射到金属表面上时，光子和金属表面电子会发生相互作用，形成一种共振状态。在共振状态下，表面等离激元的波长和电磁场强度都会发生变化，使得光在金属表面上的传播方式发生改变。

&emsp;&emsp;石墨晶体的能带呈现一个叉形，是我们所谓“无质量的狄拉克费米子”的来源。在杂质等的作用下，石墨并不能填满它的导带，我们增大偏压以提升石墨的费米能，使得费米面更接近这个交点。同时，对费米面的激发也随着费米面的上升而变化。总体来说，当费米面距离狄拉克点更近，所能激发的载流子浓度越小，也就意味着等离激元波长越短。从这个叉形我们还可以推知这个波长与偏差呈现线性关系。

&emsp;&emsp; 根据之前对表面等离激元的介绍，在SNOM中这种电磁波会从探针尖端开始在样品表面传播，并遇边界后返回，从而形成干涉条纹。在大多数情况下，我们只能看到一级干涉条纹，但我们仍可以从中读出表面等离激元的波长，并以此反映其与偏压，即激发强度与费米面位置的线性关系。

## <center> Research Procress and Results
---
### 制备单层石墨烯
&emsp;&emsp; 单层石墨烯制取采用“撕胶带”的方法，又叫机械剥离法：这是一种最早也是最简单的制备单层石墨烯的方法。通过用胶带或其他黏性物质粘取石墨晶体表面，然后剥离，就可以得到一层一层厚度逐渐减少的石墨烯。也有一些比如化学气相沉积法，但那需要金属衬底，考虑到我们实验中的实际情况，并没有采取这种方法。左下图是我们得到的单层石墨烯在光学显微镜下的图像，中间微弱的紫色为单层的石墨烯，右图是测量石墨烯在SNOM下厚度的结果。

<img src="https://54749110.github.io/assets/2023-06-23-SNOM-experiment/1.jpg" width = "290" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2023-06-23-SNOM-experiment/2.png" width = "290" height = "200" alt="图片名称" align=center />

&emsp;&emsp; 在测量单层石墨烯的厚度中，我们借助了Gwyddion软件。由于本组实验的样本量较小，我们截取多组实验线并在软件上得到了沿着这些线的厚度变化，取明显的变化部分我们得到了单层石墨烯的厚度，其厚度大约为0.993nm。

### 获得表面等离激元
&emsp;&emsp; 根据上文的原理，我们垂直于干涉条纹，截取明暗变化，得到了一个波长的图像，可惜的是，这个波长的图像在大于一倍波长后就不明显了，我们只能大约读出在不同偏压下的等离激元波长，左下图为0偏压下的等离激元波长，右下图为不同偏压下的等离激元波长示意图：

<img src="https://54749110.github.io/assets/2023-06-23-SNOM-experiment/3.png" width = "290" height = "200" alt="图片名称" align=center />
<img src="https://54749110.github.io/assets/2023-06-23-SNOM-experiment/4.jpg" width = "290" height = "200" alt="图片名称" align=center />



## <center> Conclusion
---
&emsp;&emsp; 通过本次实验，我们了解了近场纳米光学测量的原理，石墨烯的物理性质以及其表面等离激元的性质。我们得到了单层石墨烯的厚度大约在1微米量级，受限于我们制取的进度，这个测量尚存在较大误差；当然这种厚度也与我们选取的衬底性质有关。我们大致得到了一个线性的等离激元波长与偏压的关系，受制于只能读得一级波长，有些接近狄拉克点的数据甚至难以读清。总之，本次实验是我们对凝聚态得探测技术有了更深的了解。

## <center> Bibliography
--- 
[1]Wikipedia 关于SNOM的论述  


## [PDF Download](/assets/2023-06-23-SNOM-experiment/snom.pdf)


