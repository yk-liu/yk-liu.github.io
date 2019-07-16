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

> Lifelong Object Recognition Challenge starts online now, [please join the competition on Codalab](https://codalab.lri.fr/competitions/581) ! Give us feedback at [Github page](https://github.com/lifelong-robotic-vision/lifelong-robotic-vision.github.io) or mail to [Qi She](mailto:qi.she@intel.com) if you encounter any problem.

- This challenge intends to <b>explore how to leverage the knowledge learned from previous tasks that could generalize to new task effectively, and also how to efficiently memorize of previously learned tasks</b>. Making the robot behaves like the human with knowledge transfer, association, and combination capabilities.

- To our best knowledge, the provided lifelong object recognition dataset is the 1st one that explicitly indicates the task difficulty under the incremental setting, which is able to foster the lifelong/continual/incremental learning in a supervised/semi-supervised manner. Different from previous instance/class-incremental task, the difficulty-incremental learning is to test the model&rsquo;s capability over continuous learning when faced with <b>multiple environmental factors, such as illumination, occlusion, camera-object distances/angles, clutter, and context information in both low and high dynamic scenes</b>.

<img src="https://lifelong-robotic-vision.github.io/competition/object-demo.gif" alt="object-demo" width="900">

<!---
- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognition; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value, and (3) the running time for inference under the same setting. An evaluation metric will be provided.---> 

# Task-specific Rules
- The methods should be <b>incremental</b>, which means the model should be only trained over the current task, and test over all previous，current，future tasks. In the 1st round we provide 9 batches of datasets, for each batch, we have train/validation/test data splits. <b>The core of this incremental learning setting is, we need the first train on the 1st batch of the dataset, and then 2nd batch, 3rd batch, until the 9th batch, and then use the final model to obtain the test accuracy of all encounter tasks (batches)</b>. The training/validation datasets can only be accessed during the model optimizations, and any participant use the testing dataset once detected will be removed from the rank list (after the 1st round, the top-ranked participants should provide reproducible procedures). 

<!---
- The memory requirement of the model should be bounded by a finite bound, especially, the bound shall be independent of the number of training samples presented to the system, e.g. fixed model size.
- The computational demand of adding new training tasks or making a single inference should be bounded by a finite bound.
--->
- We hold our competition on the <a href="https://codalab.lri.fr/competitions/581" target="_blank">Codalab website</a>, and the participants should submit their prediction results (object label) and can be evaluated online with our ground truth.
 
<!---
- The final score is obtained via averaging the 3 aspects scores. (1) accuracy over both new and old tasks, e.g. object recognition; (2) the memory efficiency. The model size should be fixed not exceeding our bounded value, and (3) the running time for inference under the same setting. An evaluation metric will be provided.
--->

- We have provided <a href="https://github.com/ffeng1996/IROS2019-lifelong-robotic-vision---lifelong-object-recognition-challenge" target="_blank">3 pre-trained models over the provided datasets</a>. The participants can use and think about how to optimize based on them.

- The participants who achieve the high ranking results are encouraged to deliver an oral presentation in IROS 2019 competition section and have a official award from IROS onsite.


# OpenLORIS-Object Dataset
- Please find the 9 batches of datasets, each containing train/validation/test splits here: <a href="https://pan.baidu.com/s/1eNMD51Polx36ZL1-6IK2ag">Baidu Pan</a>, for obtaining the password, please contact the maintainer <a href="mailto:qi.she@intel.com">Qi She</a>. please provide your <b>intitute</b>, <b>email</b> and <b>the names of participants</b>.

# Evaluation Procedure
- The results you submitted are required to be named of &ldquo;test_batch1.csv&rdquo;, &ldquo;test_batch2.csv&rdquo; &hellip;&hellip; &ldquo;test_batch9.csv&rdquo;, and the format of each CSV file is shown below.

<ul>
<table border="1" cellspacing="5" cellpadding="5">
<tbody>
<tr>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>file&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>label_predict</td>
</tr>
<tr>
<td>0</td>
<td>0000</td>
<td>xxx</td>
</tr>
<tr>
<td>1</td>
<td>0001</td>
<td>xxx</td>
</tr>
<tr>
<td>...</td>
<td>...</td>
<td>...</td>
</tr>
</tbody>
</table>
&nbsp;
</ul>

# Baseline Model
- To make every participant quickly familiar with the procedure, we have <a href="https://github.com/ffeng1996/IROS2019-lifelong-robotic-vision---lifelong-object-recognition-challenge" target="_blank">provided 3 pre-trained models over the provided datasets</a>. Please follow the readme for running the models.

# Discussion Channel
- Data details are shown on <a href="https://lifelong-robotic-vision.github.io/competition/Object-Recognition.html" target="_blank">our "lifelong robotic vision" website</a>.

- If you have any questions about the dataset, pre-trained modules, or any other competition problem <a href="https://github.com/lifelong-robotic-vision/lifelong-robotic-vision.github.io" target="_blank">please open issues on our github </a>. You are welcome to join the online discussion with our organizers.

# FAQ
<ul>
<li>Do we have to train our model sequentially as your provided 9 batches ?</li>
</ul>
<ul>
<p>Yes. To obtain the consistent and comparable results, you need to train your model and design your own learning algorithm that can train sequentially over provided 9 batches.</p>
</ul>
<ul>
<li>Can you provide a briefer introduction how to train the model that can meet the competition requirements ?</li>
</ul>
<ul>
<p>For example, when you train the 1st batch of datasets, you can only have access to train/validation data of 1st batch, but need to test over 1-9 batch test datasets; next when you train the model over 2nd batch of datasets, you can only have access to train/validation data of 2nd batch, but you can also keep some of validation data from 1st batch for learning current model. Finally, you need to provided your model sequentially trained on 9 batches of dataset.</p>
</ul>
<ul>
<li>Can you provide a briefer introduction how to train the model that can meet the competition requirements ?</li>
</ul>
<ul>
<p>For example, when you train the 1st batch of datasets, you can only have access to train/validation data of 1st batch, but need to test over 1-9 batch test datasets; next when you train the model over 2nd batch of datasets, you can only have access to train/validation data of 2nd batch, but you can also keep some of validation data from 1st batch for learning current model. That means the validation dataset can be kept for the sequential learning task. Finally, you need to provide your model that have been sequentially trained over 9 batches of datasets.</p>
</ul>
<ul>
<li>The motivation of these training procedure constraints ?</li>
</ul>
<ul>
<p>This scenario is quite common when the system is deployed as the real-world application, which should be able to update the model day after day, also the system memory is also valuable that we can not keep old dataset on the current systems, sometimes, we only select some coresets of the dataset that we have used. It is non-trivial to pick out the data that can be the summarizations of the encountered data. We constrain our learning/training procedure that approach this kind of real-world scenario.</p>
</ul>
<ul>
<li>Can we submit the provided baseline models for joining the competition ?</li>
</ul>
<ul>
<p>Yes, you can submit the provided baseline models, but as we have tested, the results are not state-of-the-arts. The models provided can be used for your quicker familiar with the procedure.</p>
</ul>
<ul>
<li>Is there any state-of-the-art method that can learn continuous learning strategy ?</li>
</ul>
<ul>
<p>Yes, we recommend you go through the recent review paper over this topic:<a href="https://arxiv.org/pdf/1802.07569.pdf" target="_blank">Continual Lifelong Learning with Neural Networks: A Review</a>.</p>
</ul>

# License
- OpenLORIS-object dataset is maintained by <a href="mailto:qi.she@intel.com">Qi She</a>

- This work is licensed under a <a href="https://creativecommons.org/licenses/by/4.0/" target="_blank">Creative Commons Attribution 4.0 International License. 

