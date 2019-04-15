---
title: Competition
layout: info
Edit: 2019-04-15
toc: false
commentable: false
protected: true
mathjax: true
---

# Lifelong SLAM in the Real Environment

In most real-world robotic scenarios, robots should be able to long-termly operate in dynamic and daily changing environments, and SLAM should be one of their most fundemental capabilities. However, most existing SLAM frameworks are evaluated in static environments, or in scenes containing some apparent dynamics such as moving people and objects. This competition brings new challenges by introducing *out-of-sight scene changes*. For example, in home scenarios, most objects may be movable or deformable, and the visual features of the same place may be significantly different in some successive days. Such out-of-sight dynamics pose challenges to the robustness of (re-)localization and the reusability of mapping, which to our knowledge have not been well studied. We use the term *Lifelong SLAM* to emphasize the capability of long-term mapping and robust localization.

![home](home.png "Pictures taken in someone's home")

[![office](office-compressed.gif "Videos taken in an office")](office.gif)

The dataset for this competition is collected in homes, offices, and other indoor places. Data are collected for multiple times in each place, to get scene changes in real life. Ground-truth trajectories are acquired by a motion capture system and other auxiliary means. Benchmarking tools will be released to evaluate SLAM algorithms in the lifelong setting.

Though the problem of *Lifelong SLAM* may be bit different from conventional SLAM, we will do our best to provide user-frinedly data format and evaluation tools to ensure minimum overhead of participating this competition.

# Competition Task

- Participants should build a visual or visual-inertial SLAM system to join the competition.
- Participants can choose a subset of sensor data for their algorithm, e.g. monocular or RGB-D, with IMU or without.
- The SLAM system is encouraged to have re-localization capability to deal with kidnapped robot issue and to recover from tracking failures.
- The SLAM system is encouraged to make use of semantic information for robust localization in changed scenes.
- The SLAM system is encouraged to be power efficient (i.e. being able to run on an edge device instead of servers).

More detailed rules are under discussion. Please feel free to [contact us](mailto:xuesong.shi@intel.com) to negotiate for your best interest.

# Evaluation Metrics

We will introduce some new metrics for this competition, as traditional SLAM evaluation (e.g. ATE, RPE) measures mostly the accuracy of pose tracking. We will emphsize more on the robustness of tracking (and maybe also re-localization, which we have not decided). The metrics will be announced before the competition starts.

# Important Dates
*Dataset Release - June, 2019*
- Choose your favourite subset of sensors (e.g. monocular or depth-only) and develop your SLAM system.
- Evaluate your SLAM with our lifelong robotic vision data.

*First Round - Sept, 2019*
- Register for the competition first. 
- Download datasets, software tools, and upload the results before the deadline.
- Highest-scored teams will be invited to the final round and to the onsite event.

*Final Round - Oct, 2019*
- A new set of data will be used for the final round.
- The algorithms from each team shall be uploaded to our benchmarking server and run in a controlled environment.

*Onsite Event - Nov 5, 2019*
- Results of the final round will be announced.
- Results will be visualized for the audience.

