---
title: Competition
layout: info
Edit: 2019-03-26
toc: false
commentable: false
protected: true
mathjax: true
numbering: false
---

# Lifelong Robotic Vision Competition

> The competition with IROS 2019 has ended. There had been over 150 registrants
> during the online competition and over 50 attendees to the workshop in Macau.
> Please stay tuned and wait for the next event!

The competition is composed of two challenges with separate scoreboards. Each team can register for either challenge or both. The competition will mostly be online, with an on-site workshop at [IROS 2019](https://www.iros2019.org/) to announce the final scores, demonstrate the best results, and hold technical talks and discussions.

## Challenges

For the details of each challenge, please follow their webpages:

> [Lifelong Object Recognition Challenge]({{site.url}}{{site.baseurl}}/competition/Object-Recognition.html) ([leaderboard](https://codalab.lri.fr/competitions/581#results)) (contact: [Qi She](mailto:qi.she@intel.com))

> [Lifelong SLAM Challenge]({{site.url}}{{site.baseurl}}/competition/SLAM.html) ([leaderboard](https://competitions.codalab.org/competitions/21504#results)) (contact: [Xuesong Shi](mailto:xuesong.shi@intel.com))

<details><summary><b>Schedule</b></summary><br>

<i>Dataset Release - July, 2019</i>
<ul>
<li> Register for the competition first.</li>
<li> Download the dataset.</li>
<li> Develop your algorithm, evaluate it with the dataset and improve it.</li>
<li> Benchmarking metrics will be announced.</li>
</ul>

<i>First Round - July to Sept, 2019</i>
<ul>
<li> Download competition datasets, software tools, and upload the model/results before the deadline.</li>
<li> Highest-scored teams will be invited to the final round and to the workshop.</li>
</ul>

<i>Final Round - Oct, 2019</i>
<ul>
<li> A new set of data will be used for the final round.</li>
<li> The algorithms from each team shall be uploaded to our benchmarking server and run in a controlled environment.</li>
</ul>

<i>Workshop - Nov 4, 2019</i>
<ul>
<li> Each team shall deliver a presentation about their techniques, which will be scored by a technical committee and considered in the final ranking.</li>
<li> Final ranks (final round scores & presentation scores) will be announced.</li>
<li> Results will be visualized for the audience.</li>
</ul>

</details>

## Competition Workshop with IROS 2019

Time: Nov 4, 2019

Venue: The Venetian Macao Resort Hotel, Macau, China

The competition workshop will be open to anyone who has registered [IROS 2019](https://iros2019.org/registration).

### Keynote Talks

#### Bespoke machine learning for humanoid robots
<details><summary><b>Giorgio Metta, Scientific Director, Istituto Italiano di Tecnologia - Genoa, Italy</b></summary>
<p>
Giorgio Metta is the Scientific Director of the Istituto Italiano di Tecnologia (IIT) where he coordinated the iCub Project. He holds a MSc cum laude (1994) and PhD (2000) in electronic engineering both from the University of Genoa. From 2001 to 2002 he was postdoctoral associate at the MIT AI-Lab. He was previously with the University of Genoa and since 2012 Professor of Cognitive Robotics at the University of Plymouth (UK). He is member of the board of directors of euRobotics aisbl, the European reference organization for robotics research. Giorgio Metta research activities are in the fields of biologically motivated and humanoid robotics and, in particular, in developing humanoid robots that can adapt and learn from experience. Giorgio Metta is author of more than 250 scientific publications. He has been working as principal investigator and research scientist in about a dozen international as well as national funded projects.
</p>
</details>

We are interested in developing humanoid robots with learning capabilities. Computation and memory  are typically limited on a robot and there are often requirements of tight real-time performance. Therefore we would like to design algorithms with guaranteed computational and memory bounds. We will show that we do not need to sacrifice much in terms of performance (e.g. recognition rates, accuracy, etc.). We will show practical examples in typical robotics applications such as in the estimation of the robot’s dynamics, on the fly object learning, and speech perception. Results come in different flavors as for example in dynamics estimation the controller has to potentially learn and provide estimates in the millisecond range while longer timescales are acceptable in e.g. visual object recognition. Speech recognition, on the other hand, requires integrating voice input over time. We will show implementations in some of our humanoid robots, namely the iCub and the recently developed R1 service robot.

#### Cross-modal learning for robust autonomous robot systems
<details><summary><b>Jianwei Zhang, Professor, University of Hamburg</b></summary>
<p>
Jianwei Zhang is professor and director of TAMS, Department of Informatics, University of Hamburg, Germany. He received both his Bachelor of Engineering (1986, with distinction) and Master of Engineering (1989) at the Department of Computer Science of Tsinghua University, Beijing, China, his PhD (1994) at the Institute of Real-Time Computer Systems and Robotics, Department of Computer Science, University of Karlsruhe, Germany, and Habilitation (2000) at the Faculty of Technology, University of Bielefeld, Germany. His research interests are sensor fusion, intelligent robotics and multimodal machine learning, cognitive computing of Industry4.0, etc. In these areas he has published about 300 journal and conference papers, technical reports, four book chapters and three research monographs. He holds 40+ patents on intelligent components and systems. He is the coordinator of the DFG/NSFC Transregional Collaborative Research Centre SFB/TRR169 “Crossmodal Learning” and several EU robotics projects. He has received multiple best paper awards. He is the General Chairs of IEEE MFI 2012, IEEE/RSJ IROS 2015, and the International Symposium of Human-Centered Robotics and Systems 2018. Jianwei Zhang is life-long Academician of Academy of Sciences in Hamburg Germany. 
</p>
</details>
In a dynamic and changing world, a robust and effective robot system must have adaptive behaviors, incrementally learnable skills and a high-level conceptual understanding of the world it inhabits, as well as planning capabilities for autonomous operations. Future intelligent robot systems will benefit from the recent research on neurocognitive models in processing cross-modal data, exploiting synergy, integrating high-level knowledge and learning, etc. I will first introduce cross-modal learning issues of intelligent robots. Then I will present our investigation and experiments on synergy technique which uses fewer parameters to govern the high DOF of robot movement. The third part of my talk will demonstrate how an intelligent system like a robot can evolve its model as a result of learning from experiences; and how such a model allows a robot to better understand new situations by integration of knowledge, planning and learning.

#### Robust and efficient visual-inertial SLAM for augmented reality
<details><summary><b>Guofeng Zhang, Professor, Zhejiang University</b></summary>
<p>
Guofeng Zhang received the B.S. and Ph.D. degrees in computer science from Zhejiang University in 2003 and 2009, respectively. He is currently a Full Professor with the State Key Laboratory of CAD&CG, Zhejiang University. His research interests include structure-from-motion, SLAM, 3D reconstruction, augmented reality, video segmentation and editing. The team he leads has developed a series of SfM/SLAM softwares (such as ACTS, LS-ACTS, RDSLAM, RKSLAM), which can be downloaded from the group website <a href="http://www.zjucvg.net">www.zjucvg.net</a>. He also has released the source code of a large-scale structure-from-motion system ENFT-SFM, a segment-based bundle adjustment algorithm SegmentBA, and incremental bundle adjustment algorithms EIBA & ICE-BA, which can be found at <a href="https://github.com/zju3dv/">github.com/zju3dv/</a>. He received the National Excellent Doctoral Dissertation Award, the Excellent Doctoral Dissertation Award of China Computer Federation, and the First Prize of the 2011 Ministry of Education Science and Technology Progress Award (ranked 4th).
</p>
</details>
In the past decade, visual SLAM and visual-inertial SLAM have made significant progress and been successfully applied in AR productions. However, it is still not easy to achieve a robust and efficient SLAM system in real applications due to some critical issues. For example, it is rather easy to encounter rapid camera motion, dynamic or textureless scenes. In addition, it is also not easy to achieve real-time performance on a mobile device. In this talk, I will introduce our recent works for addressing these key issues. Especially, we build a new visual-inertial dataset as well as a series of evaluation criteria for evaluating the performance V-SLAM / VI-SLAM in AR applications. A series of AR demos will be presented based on our developed SLAM system.


#### ~~From 3D vision to robotic vision~~ (cancelled)

<details><summary><b>Baoquan Chen, Professor, Peking University</b></summary>
<p>
Baoquan Chen is an Endowed Professor of Peking University, where he is the Executive Director of the Center on Frontiers of Computing Studies. His research interests generally lie in computer graphics, visualization, and human-computer interaction. He has published more than 100 papers in international journals and conferences, including 30+ papers in ACM SIGGRAPH (TOG). Chen received an MS in Electronic Engineering from Tsinghua University, Beijing (1994), and a second MS (1997) and then PhD (1999) in Computer Science from the State University of New York at Stony Brook. Chen is the recipient of 2002 Microsoft Innovation Excellence Program, 2003 U.S. NSF CAREER award, 2004 University of Minnesota McKnight Land-Grant Professorship, 2005 IEEE Visualization Best Paper Award, and 2014 Chinagraph Outstanding Achievement Award. Chen serves on the editorial board of ACM Transaction on Graphics, and served as associate editor of IEEE Transaction on Visualization and Computer Graphics, and conference chair of both IEEE Visualization 2005 and SIGGRAPH Asia 2014. Personal web: <a href="https://cfcs.pku.edu.cn/baoquan">cfcs.pku.edu.cn/baoquan</a>
</p>
</details>

In this talk, I will discuss how 3D environment acquisition can benefit from robot platform, and then, how 3D vision becomes an essential part of robotic vision, with 3D visual learning the essential underlying technique.

### Competition Reports

The following talks are from finalist teams of the two challenges. The order
is unrelated with the scores.

#### Lifelong Object Recognition Challenge Finalist Reports

<details><summary><b>SDKD: Saliency Detection with Knowledge Distillation </b></summary>
<p>
Lifelong learning is challenging for deep neural networks due to their susceptibility to catastrophic forgetting. Catastrophic forgetting occurs when a trained network is not able to maintain its ability to accomplish previously learned tasks when it is trained to perform new tasks. We study the problem of lifelong object recognition, extending a trained network to new task with a slightly forgetting of previous tasks. In contrast to traditional methods, we disentangle this problem with two aspects: background remove problem and classification problem. Qualitative and quantitaive experimental results on datasets show that the effectiveness of the proposed approach.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/PekingU_linyang.pdf)
</p>
</details>

Lin Yang (Peking University, Shandong University, Beijing Film Academy) 

<details><summary><b>Efficient Continual Learning with Latent Rehearsal </b></summary>
<p>
We propose a new Continual Learning (CL) approach based on latent rehearsal, namely the replay of latent neural network activations instead of raw images at the input level. Experiments show that our approach may save a large amount of computational time at the cost of a moderate loss in accuracy.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/Unibo_slides.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/UofBo_Gabo.pdf)
</p>
</details>
Gabriele Graffieti, Lorenzo Pellegrini, Vincenzo Lomonaco and Davide Maltoni (University of Bologna)

<details><summary><b>Lifelong Learning with Regularization and Data Augmentation </b></summary>
<p>
The challenge Lifelong Object Recognition, requires exploring how knowledge acquired on previous tasks can be leveraged when learning future tasks, while also memorizing the past tasks, efficiently. This capability is explored under a difficulty-incremental scenario, where model is required to perform continual learning under different environmental conditions such as illumination, occlusion, clutter, resolution and camera pose. We show that by using a combination of regularization based lifelong learning and data augmentation,model learning can be made generalized under varying environmental conditions.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/NTU_LL_presentation.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/NTU_Duvindu.pdf)
</p>
</details>
Duvindu Piyasena, Sathursan Kanagarajah, Siew-Kei Lam and Meiqing Wu (Nanyang Technological University)

<details><summary><b>Intelligent Replay Sampling for Lifelong Object Recognition </b></summary>
<p>
In this work we particularly target new instance continual learning, where the number of classes of object remain same in different tasks but the distribution of data shifts gradually due changes in illumination, surroundings (occlusion, clutter) and angle of camera.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/IIT_Lifelong_ObjectReco_Vidit.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/IIT_vidit.pdf)
</p>
</details>
Vidit Goel, Debdoot Sheet and Somesh Kumar (Indian Institute of Technology, Kharagpur)

<details><summary><b>Selective Feature Learning with Filtering Out Noisy Objects in Background Images </b></summary>
<p>
In this competition, we propose a selective feature learning method to eliminate irrelevant objects in target images. We applied a Single Shot multibox Detection (SSD) algorithm to
select desired objects. The SSD algorithm alleviates performance degradation by noisy objects. We trained SSD weights with annotated images in task 1. The refined dataset is fed into a traditional MobileNet classification network. We summarize our next research points through this competition in future works.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/ETRI_presentation-converted.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/HYDRA-DI-ETRI_abstract.pdf)
</p>
</details>
Soonyong Song, Heechul Bae, Hyonyoung Han and Youngsung Son (Electronics and Telecommunications Research Institute (ETRI))

<details><summary><b>Dynamic Neural Network for Incremental Learning </b></summary>
<p>
We present our solution for the data-incremental problem in the openLORIS competition. In this competition, we develop a combined method of knowledge distillation and network expansion. Without using previous data, our method still achieves good performance and low time latency.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/HIK_ILG-oral.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/Hkvision_dnn-abstract_v2.pdf)
</p>
</details>
Liang Ma, Jianwen Wu, Qiaoyong Zhong, Di Xie and Shiliang Pu (Hikvision Research Institute)

<details><summary><b>Learning Without Forgetting Approaches for Lifelong Robotic Vision </b></summary>
<p>
Recent advances in deep learning have achieved exciting results in the ares such as object detection, image recognition and object localization. However, robotic vision poses new challenges for applying visual algorithms due to varying distribution of images from real world and it requires that the model is able to learn knowledge continuously. This competition is about developing lifelong learning algorithms which can be applied to the robotic vision system. This work describes the approach that we submit to this open competition.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/Presentation_IROS.pptx) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/Dublin_zhengwei.pdf)
</p>
</details>
Zhengwei Wang, Eoin Brophy and Tom´as E. Ward (Dublin City University)

<details><summary><b>A Small Step to Remember: Study of Single Model VS Dynamic Model </b></summary>
<p>
When sequentially training a series of tasks, the deep neural networks (DNNs) will suffer from the catastrophic forgetting problem. There are many lifelong learning methods proposed to tackle with this problem recently. Elastic Weights Consolidation (EWC) is a method that prevents the DNN from
forgetting the previous task while learning the current task by measuring the importance of parameters in DNNs with the Fisher Information Matrix that senses the second derivatives of the loss function. However, EWC also limits the learning ability of the network with only a single network. If there are new tasks required to be learned, the dynamic graph will be a more powerful option because of its capacity of preserving more information about the old tasks. LwR is one of the most typically dynamic models for learning multiple tasks sequentially. Moreover, the sampling of old tasks for new task training is also superior in preserving the memory of previous tasks.

> [slide](https://lifelong-robotic-vision.github.io/competition/slides/CUHKSZ_LiguangZhou.pdf) and [paper](https://lifelong-robotic-vision.github.io/competition/papers/)
</p>
</details>
ZLiguang Zhou (The Chinese University of Hong Kong (Shenzhen), Shenzhen Institute of Artificial Intelligence and Robotics for Society)

#### Lifelong SLAM Challenge Finalist Reports

<details><summary><b>Modified ORB-SLAM with learning-based and odometry-aided relocalization</b></summary>
<p>
In order to perform SLAM long-termly in real-world scenarios, we propose a modified ORB-SLAM method to overcome challenging issues of dynamic objects, large viewpoint change and strong lighting change. Considering the effects of the challenging issues on the SLAM procedure, our method mainly aims to cope with relocalization between different times and tracking lost when visual features are failed. The input of our method are RGB-D images. To improve the performance of relocalization, we introduce a learning-based method. NetVLAD network is used to find the most similar scene which has been seen before. Then we perform feature matching through ORB descriptors between the query image and learning-based results to recover tracking. When there are not enough reliable feature matches, we use depth image registration for pose estimation. In addition, for tracking lost caused by textureless scene, we use incremental odometry data to fill the visual tracking gaps. Our method presents the capability of long-term mapping and robust localization. Experimental results on the published OpenLORIS-Scene datasets achieve evaluation score of 68.
</p>
</details>
Rong Wang, Fanle Meng, Xiangbing Meng


<details><summary><b>Multi-Level Sparse Feature Optical Flow Tracking Based Visual-Inertial SLAM with Fast Relocalization</b></summary>
<p>
In this work, we present a new approach for the robust visual-inertial localization under various challenging conditions, including day/night change, different illumination, moving objects and long-term scenarios. In order to solve the problem of very fragile front-end data association, we propose a new multi-level sparse feature optical flow tracking algorithm, which achieves high accuracy and robustness tracking within very sparse concise features. Unlike the existing methods that are costly to deal with a large number of redundant features and 3D map points, which are inefficient for improving positioning accuracy, we focus on the concise visual cues for high-precision pose estimating. Moreover, the lifelong SLAM is more focus on the relocalization in the same coordinate system, so we further improve the fast relocalization module by refine the efficient keyframe based 2D features to local 3D map points matching. Our method outperforms existing state-of-the-art VIO/VI-SLAM systems on the challenging OpenLORIS-Scene challenge datasets. The results effectively verify that the proposed method has better localization accuracy and real-time performance.
</p>
</details>
Hongle Xie, Bowen Song

<details><summary><b>Wheel Odometer-Enhanced VINS with Map-Based Localization</b></summary>
<p>
We proposed a Visual-Inertial Navigation System(VINS) which consists of a wheel odometer-enhanced visual-inertial localization module and a map management module.  The localization module fuses poses from both a wheel odometer-enhanced Visual-Inertial Odometry(VIO) system and relocalizations from map. This module acts as the front-end of VINS. The map management module has been used to build and merge maps, which acts as the back-end of VINS.  Benefited from both modules, the proposed VINS has capabilities of performing real-time localization and building consistent map. Furthermore, to make the proposed system more robust for illumination variation, we embedded deep-learned features in map merging and relocalization parts. The proposed method has been evaluated on Lifelong SLAM Challenge benchmark datasets. The experimental results prove that this method is efficient in real-time localization in illumination variational environments and enables the capability of build globally consistent maps in large scale indoor environments.
</p>
</details>
Segway Robotics

<details><summary><b>Customized VINS-Mono with unsupervised-based deep loop closure</b></summary>
<p>
A monocular vision inertial state estimator based on unsupervised depth neural network. In order to deal with the challenges such as the movement of objects or people and the lack of rich texture , we decided to improve it based on the VINS-Mono framework, and achieve the ideal positioning effect by tightly coupling the visual data and IMU data.
In view of the dynamic objects in the scene, we introduce graph cut RANSAC into the feature tracker to remove the dynamic points. Running graph cutting algorithm in local optimization step , considering spatial consistency, can effectively remove external points and avoid wrong trajectory estimation. At the same time, more accurate estimation can be obtained in fewer iterations by using graph cutting technique.
A trained unsupervised deep learning network is used to detect the closed-loop in the scene with dynamic objects and lighting changes. By inputting randomly generated images of different viewpoints and using fixed length of hog descriptors, the network can better learn the geometric information of the scene and cope with the changes of illumination and viewpoint. This kind of encoder can map the high-dimensional original image to the low-dimensional descriptor space, and compress the image while retaining significant features. Therefore, the extracted features are not only robust to extreme changes in appearance, but also lightweight and efficient enough to help us achieve robust closed-loop detection.
</p>
</details>
Shu Song, Yi Wang


### Technical Committee

**Guofeng Zhang**, Professor, Zhejiang University

**Mihai Bujanca**, Research Assistant, University of Manchester

**Qi She**, Senior Research Scientist, Intel Labs China

**Xuesong Shi**, Senior Research Scientist, Intel Labs China

**Yao Guo**, Department of computing, Imperial College London

### Program
<style>
table th:first-of-type {
    width: 10%;
}

table th:nth-of-type(2) {
    width: 30%;
}
</style>

| Time          | Event  |
|-------------- | ------ |
| 8:30 - 9:00   | Team registration |
| 9:00 - 9:15   | Welcome and overview |
| 9:15 - 10:00  | **Giorgio Metta**: Bespoke machine learning for humanoid robots |
| 10:00 - 10:30 | **Jianwei Zhang**: Cross-modal learning for robust autonomous robot systems |
| 10:30 - 12:00 | Lifelong Object Recognition Challenge finalist reports |
| 12:00 - 13:30 | Break |
| 13:30 - 14:40 | Lifelong SLAM Challenge finalist reports |
| 14:40 - 15:00 | **Yao Guo**: RGBD based long term and canonical gait analysis system |
| 15:00 - 15:20 | **Mihai Bujanca**: SLAMBench: a framework for automated evaluation of SLAM algorithms |
| 15:20 - 15:40 | **Xuesong Shi**: OpenLORIS: towards lifelong robotic vision |
| 15:40 - 16:00 | Coffee break & Poster session |
| 16:00 - 16:35 | **Guofeng Zhang**: Robust and efficient visual-inertial SLAM for augmented reality |
| 16:35 - 17:00 | Awards ceremony |
| 17:00 - 17:30 | Panel discussion |

[CHINA ROBOTC](https://www.robotc.com.cn/) will be onsite to support the
workshop and present their robots.

[Intel Realsense](http://www.intelrealsense.com/) will be onsite to present
their products and answer any questions.

## Further Reading

### Papers
- [Are We Ready for Service Robots? The OpenLORIS-Scene Datasets for Lifelong SLAM](https://arxiv.org/abs/1911.05603)
- [OpenLORIS-Object: A Dataset and Benchmark towards Lifelong Object Recognition](https://arxiv.org/abs/1911.06487)

### Reports & Articles (some in Chinese)

- 11/22 Intel AI: **[Meeting the Challenges of Lifelong Robotic Vision](https://www.intel.ai/lifelong-robotic-vision) ★**
- 11/22 Intel RealSense: [Intel RealSense Technology at IROS 2019](https://www.intelrealsense.com/intel-realsense-at-iros-2019/)
- 11/17 AI开发者: **[IROS 2019 机器人挑战赛冠军方案：商业机器人如何应对真实环境中的诸多挑战？](https://mp.weixin.qq.com/s?__biz=MjM5ODU3OTIyOA==&mid=2650680182&idx=1&sn=7c956756831f4366f62fe5b153512222&chksm=bec2160589b59f13bef06f822e4661ca1e69a9d74822f8e771e2279a5a57c9b88599c749edfc&mpshare=1&scene=1&srcid=&sharer_sharetime=1574675803399&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=LkYMO76kZakk%2FvhWeXJ%2FXz6t94ssrjgYlZGIvezI7KeL4NGp3G2FZmAqjGOD%2FuRh#rd) ★**
- 11/7机器人与人工智能实验室: [机器人实验室学生荣获IROS Lifelong Robotic Vision Challenge Finalist Award](https://mp.weixin.qq.com/s?__biz=MzIwNDM3NjQxMA==&mid=2247483739&idx=1&sn=8c81490baeb3cd6b64f60207fff4817d&chksm=96c0516ea1b7d878cda31a1664bff3e9ef9b33ca1e633b0c5439c3caf07513fcd08bf3124fac&mpshare=1&scene=1&srcid=1115lbEsIm4mDWPdpwM9SsR3&sharer_sharetime=1573785544049&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 11/5 硬蛋 & AI开发者: **[Lifelong Robotic Vision挑战赛完美落幕，全球Lifelong豪杰齐聚！](https://mp.weixin.qq.com/s?__biz=MzA4MjAxNjMxMQ==&mid=2650699983&idx=1&sn=97a930a4d6b72eb8adf2c5635447dba8&chksm=8786f997b0f17081fb05995e38114afe27d75890b001ecb7843a792b72c7fda5dfcedb0db499&mpshare=1&scene=1&srcid=1112FNjFOo4vKCPbT0CYd08Q&sharer_sharetime=1573785207576&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd) ★**
- 11/4 九号机器人官方: [Segway Robotics团队获IROS 2019赛事单项冠军](https://mp.weixin.qq.com/s?__biz=MjM5ODA0MTY3Ng==&mid=2652260192&idx=1&sn=2ce42b43e046e5174e65aae61d58e63d&chksm=bd3226438a45af55d82b1f1c25702f86bdf16bf0a8f955dc7d1835a0d3d8ac9f7185752a72af&mpshare=1&scene=1&srcid=1104P1pQtKv4KS9HsCfBlXpV&sharer_sharetime=1573784965708&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 10/31 机器人创新生态: [4天后，全球Lifelong赛事冠军将在此诞生，快来围观全球顶级专家及团队！](https://mp.weixin.qq.com/s?__biz=MzI0MzI2MjcwNw==&mid=2247492642&idx=1&sn=d5bd6f6f5979fdfc5adb0ee6ac705320&chksm=e96d11bede1a98a886d09421c722606ed5e54465190ba4c06e2cbc28639da92e9b64898c792e&mpshare=1&scene=1&srcid=&sharer_sharetime=1573785139867&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 10/4 泡泡机器人SLAM: [Lifelong SLAM数据集与挑战赛@IROS19](https://mp.weixin.qq.com/s?__biz=MzI5MTM1MTQwMw==&mid=2247508548&idx=1&sn=8584453497c862922c47646175c4ad50&chksm=ec131c40db64955630e829bcfba5953fe0a4b85bc090f57e760a2dc580baa6c2e24cdf0c00bb&mpshare=1&scene=1&srcid=&sharer_sharetime=1573784904607&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 9/6 PaperWeekly: [2019 IROS—终生机器视觉数据集全球挑战赛](https://mp.weixin.qq.com/s?__biz=MzIwMTc4ODE0Mw==&mid=2247499403&idx=2&sn=692a0944158d8bc1965c3d4caa2d90e0&chksm=96ea210ba19da81d20a131a54cc5c147c7b57da64ac8d7b338ff90758409a15cad48acfa3cff&mpshare=1&scene=1&srcid=1115Cr0Ux00XAQyoeJFSNw9Q&sharer_sharetime=1573785929545&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 8/19 英特尔中国: [Lifelong Robotic Vision挑战赛，不服来战！](https://mp.weixin.qq.com/s?__biz=MjM5MTE0Mjg2Mw==&mid=2651865009&idx=1&sn=65ecd53ecdd4f8097600e0ab897a78ee&chksm=bd5e99118a291007e170719ebf3284578bb96375863cf68f88af689e2f02ecefe00851788090&mpshare=1&scene=1&srcid=&sharer_sharetime=1573784735304&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd)
- 3/22 英特尔中国: **[厚积薄发！懂增量学习才能做聪明的机器人](https://mp.weixin.qq.com/s?__biz=MjM5MTE0Mjg2Mw==&mid=2651863187&idx=1&sn=7095159e39a4269182308418bd80bba1&chksm=bd5e9e338a29172546c3632c63c5ab8be1c379a5a85749e020fc708937a83c2ae1a557af24d9&mpshare=1&scene=1&srcid=0322Un8eN7HyODeAcT7BHIqQ&sharer_sharetime=1573784699354&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd) ★**
- 3/1 英特尔中国: **[我是机器人，我从哪来，要到哪去？语义地图与空间智能](https://mp.weixin.qq.com/s?__biz=MjM5MTE0Mjg2Mw==&mid=2651863001&idx=1&sn=52de30f913fb1a3d8615dde5ef57409e&chksm=bd5e91798a29186f76821788bac40b993e85108e286954560ec8e96ddd43c8c3473560616041&mpshare=1&scene=1&srcid=0301aPj0LPrM4RwBHS6Y93cK&sharer_sharetime=1573784688846&sharer_shareid=3cab9b89f0eba25f8e73647a1010e424&pass_ticket=cUpEX4Kbxv609XNp9qC7I2kkxa0n%2BKqZHg%2Bz3X%2FCq9CqXN9yXQJDGi%2BG8Ii7dltu#rd) ★**







## Organizers
<img src="https://lifelong-robotic-vision.github.io/about/organizer.png" alt="Human-Robot-Computer" max-width="820" height="auto">

## Partners
We thank the following partners for their data contribution and valuable suggetions on the competition.

<img src="https://lifelong-robotic-vision.github.io/about/partner.png" alt="partner" width="900" height="auto">


