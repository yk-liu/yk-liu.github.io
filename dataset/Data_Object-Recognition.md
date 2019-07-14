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
- This challenge intends to explore how to leverage the knowledge learned from previous tasks that could generlize to new task effectively, and also how to efficiently memorize of previously learned tasks. Making the robot behaves like the human with knowledge transfer, association, and combination capabilities.

- To our best knowlege, the provided lifelong object recognition dataset is the 1st one that explicitly indicates the task diffculty under the incremental setting, which is able to foster the lifelong/continual/incremental learning in an supervised/semi-supervised manner. Different from previsous instance/class-incremental task, the difficulty-incremental learning is to test the model’s capability over continuous learning when faced with multiple environmental factors, such as illumination, occlusion, camera-object distances/angles, clutter, and context information in a low or high dynamic scence. 

- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognition; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value, and (3) the running time for inference under the same setting. An evaluation metric will be provided. 

# Task-specific Rules
- The methods should be incremental, which means the model should be only trained over current task, and test over all previous，current，future tasks. In the 1st round we provide 10 batches of datasets, for each batch, we have train/validation/test data splits. The core of this incremental learning setting is, we need first train on 1st batch of dataset, and then 2nd batch, 3rd batch, until the 10th batch, and then use the final model to obatin the test accurcy of all encounter tasks (batches).

<!---
- The memory requirement of the model should be bounded by a finite bound, especially, the bound shall be independent of the number of training samples presented to the system, e.g. fixed model size.
- The computational demand of adding new training tasks or making a single inference should be bounded by a finite bound.
--->
- We will hold our competition on the codalab, and the participants should sumbit their prediction results (object label) and can be evaluated online with our ground truth.
 
<!---
- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognitions; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value; and (3) the running time for inference under same setting. An evaluation metric will be provided.
--->

- We will provide two baseline methods that the partipants can be used and think about how to optimize based on them. The 1st one is transfer learning based method, which we continuously fine tune our model over the 10 batches; the 2nd is the multi-task (cumulative) based method, we train our whole 10 batches dataset together, which is potential to be the upper bound of testing accury results.



