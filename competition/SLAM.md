---
title: Competition
layout: info
Edit: 2019-04-15
toc: false
commentable: false
protected: true
mathjax: true
---

# Lifelong SLAM Challenge

> The competition with IROS 2019 has ended. The description of the methods from
> eight finalists are available on this page.

> Please visit [Lifelong Robotic Vision Competition](https://lifelong-robotic-vision.github.io/competition/) for the workshop information.

In most real-world robotic scenarios, robots should be able to long-termly operate in dynamic and daily changing environments, and SLAM should be one of their most fundemental capabilities. However, most existing SLAM frameworks are evaluated in static environments, or in scenes containing some apparent dynamics such as moving people and objects. This competition brings new challenges by introducing *out-of-sight scene changes*. For example, in home scenarios, most objects may be movable or deformable, and the visual features of the same place may be significantly different in some successive days. Such out-of-sight dynamics pose challenges to the robustness of (re-)localization and the reusability of mapping, which to our knowledge have not been well studied. We use the term *Lifelong SLAM* to emphasize the capability of long-term mapping and robust localization.

[![home](home.png "Pictures taken in someone's home"){:width="640px"}](home.png)

[![office](office-compressed.gif "Videos taken in an office")](office.gif)

The dataset for this competition is collected in homes, offices, and other indoor places. Data are collected for multiple times in each place, to get scene changes in real life. Ground-truth trajectories are acquired by a motion capture system and other auxiliary means. Benchmarking tools will be released to evaluate SLAM algorithms in the lifelong setting.

Though the problem of *Lifelong SLAM* may be bit different from conventional SLAM, we will do our best to provide user-frinedly data format and evaluation tools to ensure minimum overhead of participating this competition.

## Results

The following rank is based on the scores of the final round competition. Detailed results
can be viewed on [the CodaLab
page](https://competitions.codalab.org/competitions/21504#results) (click
the Final button on the page).
Please note that some of the top ranked teams have aligned maps built from different data sequences, and have reported pose estimates after the alignment.
So it may be inappropriate to compare their results with the real-time outputs from a strictly online SLAM system.

A [long-term evaluation server](https://competitions.codalab.org/competitions/21724) has been set up for
anyone to evaluate SLAM results with the rule of this competition.

**1. Segway Robotics**
<details><summary><b>Wheel Odometer-Enhanced VINS with Map-Based Localization</b></summary>
<p>
We proposed a Visual-Inertial Navigation System(VINS) which consists of a wheel odometer-enhanced visual-inertial localization module and a map management module.  The localization module fuses poses from both a wheel odometer-enhanced Visual-Inertial Odometry(VIO) system and relocalizations from map. This module acts as the front-end of VINS. The map management module has been used to build and merge maps, which acts as the back-end of VINS.  Benefited from both modules, the proposed VINS has capabilities of performing real-time localization and building consistent map. Furthermore, to make the proposed system more robust for illumination variation, we embedded deep-learned features in map merging and relocalization parts. The proposed method has been evaluated on Lifelong SLAM Challenge benchmark datasets. The experimental results prove that this method is efficient in real-time localization in illumination variational environments and enables the capability of build globally consistent maps in large scale indoor environments.
</p>
</details>

**2. Hongle Xie, Bowen Song (Winner of $500 Segway Robotics Award)**

Shanghai Jiao Tong University

<details><summary><b>Multi-Level Sparse Feature Optical Flow Tracking Based Visual-Inertial SLAM with Fast Relocalization</b></summary>
<p>
In this work, we present a new approach for the robust visual-inertial localization under various challenging conditions, including day/night change, different illumination, moving objects and long-term scenarios. In order to solve the problem of very fragile front-end data association, we propose a new multi-level sparse feature optical flow tracking algorithm, which achieves high accuracy and robustness tracking within very sparse concise features. Unlike the existing methods that are costly to deal with a large number of redundant features and 3D map points, which are inefficient for improving positioning accuracy, we focus on the concise visual cues for high-precision pose estimating. Moreover, the lifelong SLAM is more focus on the relocalization in the same coordinate system, so we further improve the fast relocalization module by refine the efficient keyframe based 2D features to local 3D map points matching. Our method outperforms existing state-of-the-art VIO/VI-SLAM systems on the challenging OpenLORIS-Scene challenge datasets. The results effectively verify that the proposed method has better localization accuracy and real-time performance.
</p>
</details>

**3. Shu Song, Yi Wang**

Beijing University of Posts and Telecommunications

<details><summary><b>Customized VINS-Mono with unsupervised-based deep loop closure</b></summary>
<p>
A monocular vision inertial state estimator based on unsupervised depth neural network. In order to deal with the challenges such as the movement of objects or people and the lack of rich texture , we decided to improve it based on the VINS-Mono framework, and achieve the ideal positioning effect by tightly coupling the visual data and IMU data.
In view of the dynamic objects in the scene, we introduce graph cut RANSAC into the feature tracker to remove the dynamic points. Running graph cutting algorithm in local optimization step , considering spatial consistency, can effectively remove external points and avoid wrong trajectory estimation. At the same time, more accurate estimation can be obtained in fewer iterations by using graph cutting technique.
A trained unsupervised deep learning network is used to detect the closed-loop in the scene with dynamic objects and lighting changes. By inputting randomly generated images of different viewpoints and using fixed length of hog descriptors, the network can better learn the geometric information of the scene and cope with the changes of illumination and viewpoint. This kind of encoder can map the high-dimensional original image to the low-dimensional descriptor space, and compress the image while retaining significant features. Therefore, the extracted features are not only robust to extreme changes in appearance, but also lightweight and efficient enough to help us achieve robust closed-loop detection.
</p>
</details>


**4. Rong Wang, Fanle Meng, Xiangbing Meng**

Information Science Academy of China Electronics Technology Group Corporation

Institute of Automation, Chinese Academy of Sciences

<details><summary><b>Modified ORB-SLAM with learning-based and odometry-aided relocalization</b></summary>
<p>
In order to perform SLAM long-termly in real-world scenarios, we propose a modified ORB-SLAM method to overcome challenging issues of dynamic objects, large viewpoint change and strong lighting change. Considering the effects of the challenging issues on the SLAM procedure, our method mainly aims to cope with relocalization between different times and tracking lost when visual features are failed. The input of our method are RGB-D images. To improve the performance of relocalization, we introduce a learning-based method. NetVLAD network is used to find the most similar scene which has been seen before. Then we perform feature matching through ORB descriptors between the query image and learning-based results to recover tracking. When there are not enough reliable feature matches, we use depth image registration for pose estimation. In addition, for tracking lost caused by textureless scene, we use incremental odometry data to fill the visual tracking gaps. Our method presents the capability of long-term mapping and robust localization. Experimental results on the published OpenLORIS-Scene datasets achieve evaluation score of 68.
</p>
</details>



**5. Ge Jin, Can Huang**


**6. Huanyu Wen, Xiaofeng Shang, Yiming Zhou, Jian Zhou**

Shenzhen University

<details><summary><b>PEVINS: VIO based on point-edge feature combination</b></summary>
<p>
In this work, we present PEVINS, a visual inertial navigation SLAM system based on point-edge feature. Our system build a complete SLAM pipeline with pose estimation, sliding window optimization, loop closure and relocation. First, we use the depth map to initialize quickly and make a good initial pose estimation. Characteristics at weak texture environment or rare cases, we detect the edge features tracking to improve the system robustness. Then, the pose of the whole system is optimized globally by the method of graph optimization. Finally, we establish a visual dictionary of point and edge features for loop detection and relocation. It is worth mentioning that we have the option of using depth maps for dense map reconstruction (CPU only).
</p>
</details>

**7. Liming Cheng**

Nanjing University of Posts and Telecommunications

<details><summary><b>Direct Sparse Odometry with Self-Supervised Monocular Depth Estimation</b></summary>
<p>
There is no double that the reliability and accuracy of visual odometry is crucial in SLAM system. While the performance of monocular direct sparse odometry (DSO) is outstanding, there is a obvious scale uncertainty problem that affects localization accuracy. This project improves the DSO mapping by initializing the depth at a pixel position in accordance with the depth prediction from a deep learning network predicting depth of single-image. With obvious decrease of the depth uncertainty of map point, twofold benefits are obtained: trusty feature correspondence between visual frames and quick convergence to the true depth value so as to create fresh map points. We evaluate our method on the publicly available KITTI dataset, and the experimental results demonstrate that our improved approach leads to significant increase of localization accuracy.
</p>
</details>

**8. Berta Bescos**

University of Zaragoza

<details><summary><b>DynaSLAM: Tracking, Mapping, and Inpainting in Dynamic Scenes</b></summary>
<p>
The assumption of scene rigidity is typical in SLAM algorithms. Such a strong assumption limits the use of most visual SLAM systems in populated real-world environments, which are the target of several relevant applications like service robotics or autonomous vehicles. In this letter we present DynaSLAM, a visual SLAM system that, building on ORB-SLAM2, adds the capabilities of dynamic object detection and background inpainting. DynaSLAM is robust in dynamic scenarios for monocular, stereo, and RGB-D configurations. We are capable of detecting the moving objects either by multiview geometry, deep learning, or both. Having a static map of the scene allows inpainting the frame background that has been occluded by such dynamic objects. We evaluate our system in public monocular, stereo, and RGB-D datasets. We study the impact of several accuracy/speed trade-offs to assess the limits of the proposed methodology. DynaSLAM outperforms the accuracy of standard visual SLAM baselines in highly dynamic scenarios. And it also estimates a map of the static parts of the scene, which is a must for long-term applications in real-world environments.
</p>
</details>

## Data

The competition will use a subset of [the OpenLORIS-Scene Dataset](https://lifelong-robotic-vision.github.io/dataset/scene.html). The data are from a university building (office and corridor), a home, a supermarket, and a café. There are 2 to 7 data sequences in each scene, recorded at different times. For each scene, all the sequences shall be feed to the SLAM algorithm in a predefined order. The algorithm will get a notification when loading a new sequence, and shall re-estimate its state since the robot may have been moved from the last location of the previous sequence. However, participants may choose to get a pseudo-ground-truth starting state for each sequence if re-localization is not supported by their SLAM algorithm (aided_reloc). In this way the algorithm will get no score for re-localization.

Participants may choose from monocular, depth-only, RGB-D, or stereo fisheye as visual input of their algorithm, and use IMU or odometry data as they wish. The algorithm shall be evaluated in a real-time way, i.e., the data shall be feed to the algorithm at their original rate, and the immediate output of the algorithm shall be evaluated (rather than a trajectory after offline optimization). The participants shall either play ROS bags without changing the publish rate, or run their algorithm with [SLAMBench](https://github.com/lifelong-robotic-vision/slambench2). We will provide benchmarking tools for both methods.

For more details of the data, please visit [the OpenLORIS-Scene Dataset](https://lifelong-robotic-vision.github.io/dataset/scene.html).

## Task and Rules

- Participants should build a visual or visual-inertial SLAM system to join the competition.
- Participants can choose a subset of sensor data for their algorithm, e.g. monocular or RGB-D, with IMU or without.
- Participants should feed their SLAM algorithm with given data in real time, record the results (with [openloris_test_ros](https://github.com/lifelong-robotic-vision/lifelong-slam/issues/1) or [SLAMBench](https://github.com/lifelong-robotic-vision/slambench2)), and submit the results to [the codalab server](https://competitions.codalab.org/competitions/21505).
- Finalists will be invited to give a 10-min talk about their techniques at IROS 2019 on Nov 4. The presentation quality will be scored together with algorithm performance in the final ranking, and winners will be awarded at IROS 2019 Award Luncheon.
- Manual or hardcoded adaption to the evaluation data is prohibited and might be considered as cheating, including
    - any kind of manual input at runtime
    - any kind of hardcoded states or features
    - loading extra data that are strongly correlated with the evaluation data
    - training a neural network or other machine learning models with the evaluation data (this can be controversial; please send an email to the organizers or open a github issue to discuss about your training method if you believe it is moral)

## Evaluation Metrics

The major consideration is the robustness of pose estimation. Two metrics will be used to score the performance.

### Correct Rate (CR)

- An estimated pose is considered to be **correct** if both its absolute trajectory error (ATE) and absolute orientation error (AOE) are no larger than a threshold. The ATE threshold for this competition is 1 meter for office, 3 meters for cafe/home, and 5 meters for corridor/market. The AOE threshold is 30 degree for all scenes.
- The **correct time** of a trajectory is the total time with correct poses. Each correct pose will contribute a piece of correct time until the next pose or end of the sequence, with a upper limit of 1 sec.
- The **correct rate** of a trajectory is ratio of correct time and total length of the sequence (from ground-truth).
- **Total CR** is the sum of CR for each sequence weighted by the sequence length. It indicates the percentage of correct pose estimates over all data sequences.

### Re-localization Score

- A **re-localization score** is calculated for each non-first sequence. The score is 0 if the first pose on the trajectory is incorrect (with the same criterion as for CR above), otherwise it is exp(-(t0-tmin)/60), where t0 is the time of the first pose, and tmin is the starting time of the sequence.
- **Total re-localization score** is the sum of re-localization scores for each sequence.

### Total Score

The total score to rank for this competition is a weighted sum of total CR (60%) and total re-localization score (40%). Total CR is a percentage itself. Total re-localization score is percentalized by dividing the total number of re-localizations (i.e. the number of all non-first sequences, equals 13 in the first round of competition).

Total_Score = Total_CR * 60 + Total_Reloc_Score / Total_Reloc_Number * 40

### Correct ATE (C-ATE) RMSE

A value of C-ATE RMSE is also reported on the leaderboard. It is the RMSE of all correct estimated poses. This is for reference only and contribute to the rank only to multiple teams with the same total score (unlikely to happen).

## Timeline

* First Round - now to ~~Sept 30~~ **Oct 10**, 2019
* Final Round - Oct, 2019
* [Workshop](https://lifelong-robotic-vision.github.io/competition) - Nov 4, 2019

## Registration (closed)

~~[Register now](http://sv.mikecrm.com/jTS0wi7) to get email instructions of dataset downloading.~~
