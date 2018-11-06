---
title: Introduction to Homology
Edit: 2018-11-01
category: Blog
tags: De-Rahm-Cohomology Topology
keywords: Topology Homology Cohomology 
description: My interpretation on homology, as a preparation for K-theory
mathjax: true
---

# Funny Name

I struggled a little for all the terms in Topology meaning "equivalence" (with their even messier Chinese translations:  homomorphism(同态), isomorphism(同构), homeomorphism(同胚), homotopy(同伦), homology(同调), isotopy(同痕). Well, Zexian Cao wrote an [article](http://www.wuli.ac.cn/fileup/PDF/2014-43-08-010.pdf) in Chinese acclimating the strange names, and here's a explanation from [Wiktionary](https://en.wiktionary.org/wiki/homology).

Guess I will write an article once I have understood these concepts. 

# Euler characteristic

The Homology is very similar to the Euler characteristic, which is a topological invarirant. Many of Chinese students encounter this concept around primary school or middle school, as a interesting excerise to develop a sense of space. Nevertheless, it's probably the most famous topological invariant. The law is somethings stated as Eular's rule, it states:

>Let $V, E,F$ denote respectively the numbers of vertices (corners), edges and faces of a polyhedron, then
>$$
>V-E+F=2
>$$
>

Most of the students will draw a few polyhedrons, a cube or a tetrahedron, count these numbers can get the number $2$ and call it a day. But that is only part of the story. If you really try to break the rules, you can come up with at least two more "polyhedrons" to prove your teacher wrong.


|            Name            |                            Image                             | Vertices $V$ | Edges $E$ | Faces $F$ | Euler characteristic: $V-E+F$ |
| :------------------------: | :----------------------------------------------------------: | ------------ | --------- | --------- | ----------------------------- |
|        Tetrahedron         | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/tetrahedron.png) | 4            | 6         | 4         | 2                             |
|            Cube            | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/Cube.png) | 8            | 12        | 6         | 2                             |
|  Cube with a hole (wrong)  | ![](https://raw.github.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/wrongCubeWithHole.png) | 16           | 24        | 10        | 2                             |
| Cube with a hole (correct) | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/CubeWithHole.png) | 16           | 32        | 16        | 0                             |
|        Hollow cube         | ![](https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/hollowCube.png) | 16           | 24        | 12        | 4                             |





# Homology

## Triangulation of objects

Triangulation is again no stranger for anyone who ever took part in IYPT, CUPT, or any PTs, and had some experience with COMSOL®. The following is a triangulation, or a "meshing" as in COMSOL®, of a spring, from [Nishant Nath](https://nishantnath.wordpress.com/2012/06/21/comsol-tutorials-meshing/)

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/COMSOL(R)mesh.png" width="100%">

It's also very commonly seen at 3D modeling (image from [freepik](https://www.freepik.com/blog/10-free-low-poly-animal-vector-images/)), see also [here](https://poly.google.com/view/46bXrRt8pFF).

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-11-01-Introduction-to-Homology/assets/LowPolyBear.png" width="30%">

It's self-evident that this technique is very useful as it converts a smooth object to a "discrete" one, while maintaining its most important traits so that you can still recognize it's a bear. 

Similar techniques can be adopted to topology spaces. We can use "triangles" to mesh out any oddly shaped topological space, turning it into a "polyhedron". From this polyhedron, we can calculate the Euler characteristic of the space, telling us how many "holes" are in this topological space. This gives us a way to classify topology spaces according to its "holes". This is an important aspect of a topological space as in the famous example of topology - a cup and a doughnut is topological equivalent.

<img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Mug_and_Torus_morph.gif">

## Simplexes



## Simple complexes



 



