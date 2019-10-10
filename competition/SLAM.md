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

> Registration has been closed.

> Please submit your results to [codalab](https://competitions.codalab.org/competitions/21505). Deadline: Oct 11 00:00 Anywhere on Earth (UTC-12).

> Please visit [Lifelong Robotic Vision Competition](https://lifelong-robotic-vision.github.io/competition/) for the workshop information.

In most real-world robotic scenarios, robots should be able to long-termly operate in dynamic and daily changing environments, and SLAM should be one of their most fundemental capabilities. However, most existing SLAM frameworks are evaluated in static environments, or in scenes containing some apparent dynamics such as moving people and objects. This competition brings new challenges by introducing *out-of-sight scene changes*. For example, in home scenarios, most objects may be movable or deformable, and the visual features of the same place may be significantly different in some successive days. Such out-of-sight dynamics pose challenges to the robustness of (re-)localization and the reusability of mapping, which to our knowledge have not been well studied. We use the term *Lifelong SLAM* to emphasize the capability of long-term mapping and robust localization.

[![home](home.png "Pictures taken in someone's home"){:width="640px"}](home.png)

[![office](office-compressed.gif "Videos taken in an office")](office.gif)

The dataset for this competition is collected in homes, offices, and other indoor places. Data are collected for multiple times in each place, to get scene changes in real life. Ground-truth trajectories are acquired by a motion capture system and other auxiliary means. Benchmarking tools will be released to evaluate SLAM algorithms in the lifelong setting.

Though the problem of *Lifelong SLAM* may be bit different from conventional SLAM, we will do our best to provide user-frinedly data format and evaluation tools to ensure minimum overhead of participating this competition.

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
