---
title : Fortran with VS2017
category: Fortran
tags: Fortran Coding
toc: false
keywords: Fortran Visual-Studio
description: Instructions on using Fortran with VS2017
---

1. Install VS2017

2. Minimally, select **Desktop development with C++**, and in the right panel, select one of **windows 10 SDK**s or when you install ifort stuff it'll complain.

3. Install [intel Fortran Compiler](https://software.intel.com/en-us/fortran-compilers) 

4. Open VS2017 and make a new project. You should be able to see on the left panel Intel(R) Visual Fortran. Select **Console Application**.

5. Make a new file (.f90 in my case) in it.

6. Go to `Project`-`<ProjectName>Properties`-`Configuration Properties`-`Fortran`-`Libraries` and in the drop down menu of **Use Intel Math Kernel Library**, select anything other than "No", (Parallel /Qmkl:parallel in my case).

7. Compile and go.

