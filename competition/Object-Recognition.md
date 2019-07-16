---
title: Competition
layout: info
Edit: 2019-04-15
toc: false
commentable: false
protected: true
mathjax: true
---

# Lifelong Object Recognition 

<img src="https://lifelong-robotic-vision.github.io/competition/object.gif" alt="Objects-demo" width="700">

> Lifelong Object Recognition Challenge starts online now, [please join the competition on Codalab](https://codalab.lri.fr/competitions/581) ! Give us feedback at [Github page](https://github.com/lifelong-robotic-vision/lifelong-robotic-vision.github.io) or mail to [Qi She](mailto:qi.she@intel.com) if you encounter any problem.

- This challenge intends to explore how to leverage the knowledge learned from previous tasks that could generalize to new task effectively, and also how to efficiently memorize of previously learned tasks. Making the robot behaves like the human with knowledge transfer, association, and combination capabilities.

- To our best knowledge, the provided lifelong object recognition dataset is the 1st one that explicitly indicates the task difficulty under the incremental setting, which is able to foster the lifelong/continual/incremental learning in a supervised/semi-supervised manner. Different from previous instance/class-incremental task, the difficulty-incremental learning is to test the model’s capability over continuous learning when faced with multiple environmental factors, such as illumination, occlusion, camera-object distances/angles, clutter, and context information in a low or high dynamic scene. 

<!---
- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognition; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value, and (3) the running time for inference under the same setting. An evaluation metric will be provided.---> 

# Task-specific Rules
- The methods should be incremental, which means the model should be only trained over the current task, and test over all previous，current，future tasks. In the 1st round we provide $9$ batches of datasets, for each batch, we have train/validation/test data splits. The core of this incremental learning setting is, we need the first train on the 1st batch of the dataset, and then 2nd batch, 3rd batch, until the 9th batch, and then use the final model to obtain the test accuracy of all encounter tasks (batches). The training/validation datasets can only be accessed during the model optimizations, and any participant use the testing dataset once detected will be removed from the rank list (after the 1st round, the top-ranked participants should provide reproducible procedures). 

<!---
- The memory requirement of the model should be bounded by a finite bound, especially, the bound shall be independent of the number of training samples presented to the system, e.g. fixed model size.
- The computational demand of adding new training tasks or making a single inference should be bounded by a finite bound.
--->
- We will hold our competition on the codalab, and the participants should submit their prediction results (object label) and can be evaluated online with our ground truth.
 
<!---
- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognition; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value, and (3) the running time for inference under the same setting. An evaluation metric will be provided.
--->

- We will provide two baseline methods that the participants can be used and think about how to optimize based on them. The 1st one is transfer learning based method, which we continuously fine-tune our model over the $9$ batches; the 2nd is the multi-task (cumulative) based method, we train our whole $9$ batches dataset together, which is potential to be the upper bound of testing accuracy results.

- The participants who achieve the high ranking results are encouraged to deliver an oral presentation in IROS 2019 competition section and have a official award from IROS onsite. 



