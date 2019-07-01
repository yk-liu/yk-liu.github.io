---
title: Dataset
layout: info
Edit: 2019-03-26
toc: false
commentable: false
protected: true
mathjax: true
---
# Lifelong Robotic Vision Dataset

We will provide a dataset, along with benchmarking tools, for the Lifelong Robotic Vision Competition on IROS 2019 and for any other research purpose.Currently we are collecting data by ourselves, but we welcome contribution of data from third parties, as long as the data are relevant to lifelong robotic vision research and are in a good enough quality. Please contact [Xuesong Shi](mailto:xuesong.shi@intel.com) for data contribution.

In the following parts we describe how we collect our data. The dataset will be released to IROS competition teams around June. More details will be added before the releasing.

## Scenes

Data will be collected in office and home environments. We will collect data for multiple times at each place, to get scene changes in real life.

## Robot and Sensors

We will collect sensor data with a grounded robot, which is like common service robots you would expect in hotels or restaurants. It will move relatively smoothly at a speed of no faster than 1 m/s.

The primary sensors include a RealSense D435i camera and a RealSense T265 camera, both mounted at a fixed height of about 1m. The D435i camera provides aligned color images and depth images, and IMU measurements. The T265 camera provides stereo fisheye images and aligned IMU measurements.

Odometry data from wheel encoders will also be provided.

## Ground-truth

For SLAM evaluation, the ground-truth trajectory of the robot is obtained by a motion capture system or a LiDAR, with alignment to the camera coordinates.

For object recognition, the ground-truth of the objects is labelled at both class and instance level under different illuminations, camera directions, and occlusions.

**[Pre-register the competition](mailto:xuesong.shi@intel.com?subject=Pre-register%20for%20Lifelong%20Robotic%20Vision%20Competition&Body=Dear%20Organizers,%0D%0A) and get the first time notice when the data be available!**
