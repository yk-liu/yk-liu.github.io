---
title: OpenLORIS-Scene
layout: info
Edit: 2019-04-15
toc: false
commentable: false
protected: true
mathjax: true
---

# OpenLORIS-Scene Dataset

The OpenLORIS-Scene dataset aims to help evaluate the maturity of SLAM and scene
understanding algorithms for real-world deployment, by providing *visual*,
*inertial* and *odometry* data recorded with real robots in real scenes, and
ground-truth robot trajectories acquired by motion capture system or
high-resolution LiDARs. Multiple trajectories are provided for each scene,
to capture scene changes caused by human activities, day-night shifts and other
factors, which are crucial to address for long-term robot autonomy.

OpenLORIS is an open dataset. We welcome contribution of data from third
parties. We can help with sensor setup, calibration, data collection and
post-processing. Please contact [Xuesong Shi](mailto:xuesong.shi@intel.com) for
collaboration.

With OpenLORIS-Scene, we also set up a benchmark for *lifelong SLAM*. Please
refer to the [IROS 2019 Lifelong SLAM
Challenge](({{site.url}}{{site.baseurl}}/competition/SLAM.html)) for a brief
description of the benchmark and competition results.

More description of the datasets and benchmark can be found in [this paper](https://arxiv.org/abs/1911.05603):

> X Shi, D Li et al. "Are We Ready for Service Robots? The OpenLORIS-Scene Datasets
for Lifelong SLAM." arXiv:1911.05603 (2019).

    @article{shi2019openlorisscene,
        title={Are We Ready for Service Robots? The {OpenLORIS-Scene} Datasets for Lifelong {SLAM}},
        author={Xuesong Shi and Dongjiang Li and Pengpeng Zhao and Qinbin Tian and Yuxin Tian and Qiwei Long and Chunhao Zhu and Jingwei Song and Fei Qiao and Le Song and Yangquan Guo and Zhigang Wang and Yimin Zhang and Baoxing Qin and Wei Yang and Fangshi Wang and Rosa H. M. Chan and Qi She},
        journal={arXiv preprint arXiv:1911.05603},
        year={2019}
    }


<div class="container">
<iframe src="https://www.youtube.com/embed/SxEld0IoVhQ" 
frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="video"></iframe>
</div>

## Robot and Sensors

The data is collected by a wheeled robot moving at human walking speed or
slower. The primary sensors include a RealSense D435i camera and a RealSense
T265 camera, both mounted at a fixed height of about 1m. The color images and
depth images from D435i are recommended for monocular/RGB-D algorithms, while
the dual fisheye images from T265 are recommended for stereo algorithms. Both
provide IMU measurements with hardware synchronization with corresponding images.
Odometry data from wheel encoders will also be provided.

[![robot](robot.png "The robot for data collection")](robot.png)

List of available data:

| device | data          | FPS | resolution | FOV |
|--------|---------------|-----|------------| ----|
| D435i  | color         | 30  | 848x480    | H:69 V:42 D:77 |
| D435i  | depth         | 30  | 848x480    | H:91 V:65 D:100 |
| D435i  | aligned depth | 30  | 848x480    | H:69 V:42 D:77 |
| D435i  | accel         | 250 |            | - |
| D435i  | gyro          | 400 |            | - |
| T265   | fisheye1      | 30  | 848x800    | D:163 |
| T265   | fisheye2      | 30  | 848x800    | D:163 |
| T265   | accel         | 62.5|            | - |
| T265   | gyro          | 200 |            | - |
| base   | odom          | 20  |            | - |
| LiDAR  | laser scan    | 40  | 1080       | H:270 |

[![robot-frames](robot-frames.png "Coordinates")](robot-frames.png)

## Ground-truth

The ground-truth trajectory of the robot is obtained by an OptiTrack motion capture system
for the office scene, and from offline LiDAR SLAM based on the Hokuyo laser scans for other scenes.

## Download

Fill [this form](http://openloris.sv.mikecrm.com/Nv8LzXF) to download the data.
The form is for us to track how many people are using the datasets, and to
contact with users when further data or related competitions are available.
Please leave the email field blank if you do not want to receive such emails.

## Known Issues

- The first 9 data points in the ground-truth of home1-1 are unaligned with the remaining. Please remove them if that would be a concern. Please file an issue if you find similar problems in other data sequences.

- For all data, the noise factors of D435i IMU are not provided. An estimation of noise variances of D435i should be 0.0002678 for accel, and 1.0296e-5 for gyro. These values are derived from T265 noise factors scaled by their filter bandwidth.

- (Fixed in Nov 2019 release) ~~For office/corridor/cafe/home data, there is an translation error of over 1cm in the extrinsics of D435i IMU. The translation of d400_imu from d400_color should be [0.0203127935528755, -0.0051032523624599, -0.0112013882026076], while the current values are [0.014881294220686, -2.32995425903937e-05, 0.000588475959375501].~~

- (Fixed in Nov 2019 release) ~~There are duplicated messages on the /odom topic in office-1 bags. Can be removed with [this script](https://github.com/lifelong-robotic-vision/lifelong-slam/issues/2).~~

## FAQ

<ul><li>
Are all data synchronized?
</li></ul>
<ul><p>
Yes. The data from the same RealSense camera are hardware synchronized. Others are synchronized by software with a millisec level accuracy.
</p></ul>

<ul><li>
Where are the intrinsics and extrinsics?
</li></ul>
<ul><p>
With the data. In the ROS bags, camera/IMU intrinsics are included in the camera_info/imu_info topics, extrinsics are in the tf_static topic.
</p></ul>

<ul><li>
Can I assume identical intrinsics and extrinsics for all trajectories of the same scene?
</li></ul>
<ul><p>
Yes. For each scene the sensor setup are unchanged.
</p></ul>

<ul><li>
How did you get the intrinsics and extrinsics?
</li></ul>
<ul><p>
All the intrinsics are from RealSense factory calibration (except for D435i IMU which was from <a href="https://www.intelrealsense.com/wp-content/uploads/2019/07/Intel_RealSense_Depth_D435i_IMU_Calibration.pdf">official calibration procedure</a>). Extrinsics are calibrated with various tools, as listed in the paper.
</p></ul>

<ul><li>
Why are there two sets of IMU data?
</li></ul>
<ul><p>
Both RealSense D435i and RealSense T265 has an integrated IMU (BMI055). Please choose the IMU data from the same device of your primary image source for better synchronization. Note that the two sets of IMU data have different axis directions.
</p></ul>

<ul><li>
Are the IMU data calibrated?
</li></ul>
<ul><p>
No. Those are raw data from the sensor. You may want to apply the intrinsic matrix onto the data for better accuracy.
</p></ul>

<ul><li>
What are the variances in IMU intrinsics?
</li></ul>
<ul><p>
They are the estimated variances of the noise and bias of the <i>discrete</i> measurements. The unit is (m/s<sup>2</sup>)<sup>2</sup> for accel and (rad/s)<sup>2</sup> for gyro. The values are from RealSense T265 factory calibration. They have a rough relation with the <a href="https://www.bosch-sensortec.com/products/motion-sensors/imus/bmi055.html">BMI055</a> datasheet values. For example, the sampling rate of accel in T265 is 62.5 Hz, implying a low-pass filtering bandwidth of 31.25 Hz. The BMI055 datasheet gives gyro noise density of 150μg/√Hz. So the thereotical value of T265 gyro noise variance is (150 * 1e-6 * 9.80665)<sup>2</sup> * 31.25 = 6.76198014064453e-05. The given value is 6.695245247101411e-05.
</p></ul>

<ul><li>
Can I get the exposure time of each image?
</li></ul>
<ul><p>
Yes. The exposure time is in header.seq of each image message in the ROS bags.
</p></ul>

<ul><li>
Do the timestamps represent the true time of each recording?
</li></ul>
<ul><p>
No. Random biases have been added to the stamps.
</p></ul>

Other questions? Please open an issue [here](https://github.com/lifelong-robotic-vision/lifelong-slam/issues).

