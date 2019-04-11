---
title: About
layout: info
Edit: 2019-03-26
toc: false
commentable: false
protected: true
mathjax: true
---

<!--
# Lifelong Learning Definition (Opinions are my own)

The first and the most crutial thing needed to be seriously considered is what is **"lifelong learning"** in robotic vision area. Below we have summaried some senarios that should be included under this definition. Robot continuously learns 


- the instances of the known class, and improves classifier based on accumulated intances, it is an enhancement process.
- the novel class, which has not been appeared in the previous learning procedure. The model should be able to increase class-incremental capability.
- multiple tasks which are highly relevant, such as from I.I.D assumptions, we can say the tasks are within the same environment.
- multiple tasks which are from None I.I.D situations.--> 


# Lifelong Robotic Vision
![Humman-Computer-Robot](https://github.com/lifelong-robotic-vision/lifelong-robotic-vision.github.io/blob/master/about/Relation.png)

Humans have the remarkable ability to **learn continuously** from the external environment and the inner experience. One of the grand goals of robots is also building an artificial **"lifelong learning"** agent that can shape a cultivated understanding of the world from the current scene and their previous knowledge via an **autonomous lifelong development.**

Recent advances in computer vision and deep learning techniques have been very impressive due to large-scale datasets, such as ImageNet, COCO, etc. The breakthroughs in object/person recognition, detection, and segmentation have heavily relied on the availability of these large representative datasets for training. **However, robotic vision poses new challenges for applying visual algorithms developed from computer vision datasets due to their implicit assumption over non-varying distributions for a fixed set of categories and tasks.** It is obvious that the semantic concepts of the real environment are dynamically changing over time. Specifically, in real scenarios, the robot operates continuously under open-set and sometimes detrimental conditions, which has the requirements for the lifelong learning capability with reliable uncertainty estimates and robust algorithm designs. 

> Providing a robotic vision dataset collected from the real time-varying environments can accelerate both research and applications of visual models for robotics!
 
 
# Dataset and Competition
We will utilize the unique characteristics of robotics for enhancing robotic vision research by using additional high-resolution sensors (e.g. depth and point clouds), controlling the camera directions & numbers, and even shrinking the intense labeling effort with self-supervision. For accelerating the lifelong robotic vision research, we will provide **robot sensor data (RGB-D, IMU, etc.) in several kinds of typical scenarios, like homes, offices, and malls, with multiple objects, persons, scenes, and ground-truth trajectory acquired from auxiliary measurements with high-resolution sensors.** Not only the sensor information, scenarios, task types are highly diverse, but also our datasets embrace slow and fast dynamics, which is to our knowledge the **first** real-world dataset under the **robotic vision** setting.

The major challenge for lifelong robotic vision is continuous understanding of a dynamic environment. In the level of objects, the robot should be able to learn new object models incrementally without forgetting previous objects. In the scene level, the robot should be able to incrementally update its world model without getting lost. Thus, we start from the particular research topics of lifelong object recognition and lifelong SLAM, provide benchmarks for both tasks, and organize competitions to accelerate related research. The first competition will be held at IROS 2019 in Macau, November 2019.

# Vision and Expectation
- Research outcomes. Research challenges or competitions should improve the state-of-the-arts by providing rich training/testing data and context information. Moreover, the realistic environments would enlighten the development of more practical and scalable learning methods. Our collected dataset should be able to provide potential modifications to the existing robotic vision contest that we believe will encourage these directions.

- Improving Participation. The purpose of our collected dataset and organized challenge in research is to provide both an opportunity to exchange ideas as well as a venue to evaluate and encourage state-of-the-art research. Lifelong Robotic Vision challenge is to encourage the participation of machine learning, robotics and computer vision researchers. Below we discuss practical suggestions to increase researcher participation.

<!--# Posts

The posts are at different status.

| Status    | Meaning                                                      |
| --------- | ------------------------------------------------------------ |
| Completed | This post is considered completed, but I might edit it when I came up with something new. |
| Writing   | This post is being actively edited.                          |
| Paused    | This post is considered of low priority. I will come back to this post later. |
| Archived  | This post is outdated and I probably won't update it anymore. |>

# Sources

This website (source code [here](https://github.com/yk-liu/yk-liu.github.io)) uses these sources:

| Module                                                       | Mainly used in                                  | License/ TOS                                                 |
| ------------------------------------------------------------ | ----------------------------------------------- | ------------------------------------------------------------ |
| [Particle.js](https://github.com/VincentGarreau/particles.js) | Homepage                                        | [MIT](http://opensource.org/licenses/MIT)                    |
| [Visitor map](https://clustrmaps.com/)                       | Homepage, footer                                | [TOS](https://clustrmaps.com/legal)                          |
| [Homepage and color scheme](https://github.com/nrandecker/particle) | Layout @ homepage, color scheme @ all pages     | [MIT](http://opensource.org/licenses/MIT)                    |
| [List of recent post](https://github.com/mdo/jekyll-snippets/blob/master/posts-list.html) | Homepage, Post index                            | [MIT](http://opensource.org/licenses/MIT)                    |
| [Search](https://github.com/christian-fei/Simple-Jekyll-Search) | Post index, Tags index                          | [MIT](http://opensource.org/licenses/MIT)                    |
| [Side bar](https://github.com/poole/lanyon)                  | Post, all pages with these elements             | [MIT](https://github.com/poole/lanyon/blob/master/LICENSE.md) |
| [Table of content](https://github.com/allejo/jekyll-toc)     | Post                                            | [BSD-3](https://opensource.org/licenses/BSD-3-Clause) or [MIT](http://opensource.org/licenses/MIT) |
| [Markdown vue theme and color scheme](https://github.com/blinkfox/typora-vue-theme) | Markdown theme @ Post, color scheme @ all pages | [Apache-2.0](http://www.apache.org/licenses/LICENSE-2.0)     |
| [Tags, Tag cloud, Tag page](https://hyunyoung2.github.io/2016/12/17/Tag_Cloud/) | Post, Post index, Tags index                    | [MIT](http://opensource.org/licenses/MIT), repo [here](https://github.com/hyunyoung2/hyunyoung2.github.io). Tag page inspired by [haixing-hu](https://haixing-hu.github.io/tags.html) |
| [Font size adjustment](https://codepen.io/robgolbeck/pen/yePRwa) | Post                                            | [MIT](http://opensource.org/licenses/MIT)                    |
| [comment](https://commentit.io)                              | Post                                            | [APGL-3.0](https://www.gnu.org/licenses/agpl-3.0.html)       |
| [404 T-rex game](https://github.com/wayou/t-rex-runner)      | 404 page                                        | from [Chromium source code](https://cs.chromium.org/chromium/src/components/neterror/resources/offline.js?q=t-rex+package), [license](https://chromium.googlesource.com/chromium/src.git/+/master/LICENSE) |
| [Encryption](https://github.com/robinmoisson/staticrypt)     | Secret Pages                                    | [MIT](http://opensource.org/licenses/MIT)                    |

Additional licensing information can be found [here](https://github.com/yk-liu/yk-liu.github.io/blob/master/LICENSE.md).

I mainly use [Typora](https://www.typora.io) to write my post.-->

# Organizers
- Dr. Qi She (<b>Intel Labs China</b>)
- Dr. Xuesong Shi (<b>Intel Labs China</b>)
- Dr. Yimin Zhang (<b>Intel Labs China</b>)
- Prof. Fei Qiao (<b>Tsinghua University</b>)
- Prof. Rosa Chan (<b>City University of Hong Kong</b>)

# Acknowledgement 

# Sponsor

# Further materials

- [Incremental Learning Makes the Robot Smarter](https://mp.weixin.qq.com/s/_txt3Y9HJlNDFljDCjKODA)
- [From Computer Vision to Rbotic Spatial Intelligence](https://mp.weixin.qq.com/s/9d0sbFdeAzgu81rzwDii9A)



