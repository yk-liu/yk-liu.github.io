---
title: Fiber and Fiber Bundles
categories: Topology
edit: 2018-12-15
status: Writing
tags: Fiber Fiber-bundles 
keywords: 
description: My study notes on Fiber bundles for Berry Phase. 
---

# Intuition on Fiber and Fiber bundles

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/pasta.png' width="20%">

A fiber bundle is just like a bunch of pasta. Each pasta is a fiber. All the pasta put together becomes the entire topological space which we call a fiber bundle. 

Generally speaking, a fiber bundle is a topological space where there are extra structures. This structure is summarized as the topological space locally looks like the direct product of two subspaces - a typical fiber and a base space.

<img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/fiber-bundle.png' width="30%">

Formally, a (differentiable) fiber bundle is a quintuple $(E,\pi,M,F,G)$ consists of the following elements:

1. A differentiable manifold $E$ called the **total space.**
2. A differentiable manifold $M$ called the **base space**.
3. A differentiable manifold $E$ called the **fiber** (or **typical fiber**).
4. A surjection $\pi : E\rightarrow M$ called the **projection**. The inverse image of a point $p\in M$, $\pi^{-1}(p)$ is called the fiber $F_p\simeq F$ at point $p$.
5. A 

Examples of fiber bundles are 

- Calabi-Yau space. See [here](https://www.mat.univie.ac.at/~westra/calabiyau3.pdf), picture from *B.Greene, The Elegant Universe, Vintage, 2000.*

  <img src='https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2018-12-10-Fiber-and-Fiber-Bundles/assets/calabi-yau.png' width="50%">

- Hilbert space. 

