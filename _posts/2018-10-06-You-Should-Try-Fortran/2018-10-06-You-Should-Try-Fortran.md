---
layout: post
title: You Should Try Fortran
tags: Fortran Coding Thoughts Python
keywords: Python Fortran Optimization
categories: Fortran
description: I found Fortran incredibly fast compared to pure Python. Fortran's reputation for hard to maintain is true only if you read the code without an understanding of the Physics. It's still an active language, you should give it a try.
numbering: false
---

# My impression with Python

It's well known that Python makes you fly. Undoubtedly, Python is a very charming language that can reduce heavy workloads to simple codes. Due to its amazingly abundant libraries, complicated jobs can be done easily within a few lines such as "antigravity". (image from [xkcd.com](xkcd.com/))

<img src="https://imgs.xkcd.com/comics/python.png" width="50%" />



I still remember how I fell in love with Python.

I was a freshman in Physics eager to learn a few tricks in "computer" to aid my understanding of physics. Having struggled with C++ lessons at school trying to remember all kinds of sorting methods, and I tried MATLAB and Mathematica, both of which can be quite intimidating although they boast user-friendliness. The languages of this commercial software tried to imitate natural language but not quite there yet, building a monster both hard to write and hard to read and maintain.

I have heard of Python. It made an impression on me that it's the slower kind of language, so I waited a long time starting to check it out. But there is one particular function that stroke me hard, it was called `sort`.

My first reaction was overwhelmed with ecstasy. With C++'s all kinds of [sorting method](https://en.wikipedia.org/wiki/Sorting _ algorithm) and comparison and different range of application, **there is a built-in function in Python that does the sorting!?** Who would even care about that speed of 10% improvement anymore? 

> C++ hello world
> ```c++
> #include stdout
> 
> int main()
> {
>     std::cout << "Hello, world!\n";
> }
> ```
>

> Python hello world
> ```python
> print("Hello, world!")
> ```
>

To be fair, Python is not that slow with proper optimizations. It's also an interpreted language, meaning you don't need to compile. There is always a library for whatever you wanna do, `numpy`, `scipy`, `matplotlib` being three prominent packages. The `numba` offers `jit` decorator that can drastically improve the speed with a magical command `@jit`. The most attractive advantage is that you can read Python like natural language.  The list goes on and on ... The only drawback of Python is that it's a little complicated to run anything in parallel.

# My impression with Fortran

After my monologue about how I disliked C++ and loved Python, you can probably imagine how I felt for Fortran in the beginning. I am now quoting an objective essay ([Why physicists still use Fortran](http://moreisdifferent.com/2015/07/16/why-physicsts-still-use-fortran/)) I found online which described the common view of Fortran as a "historical anachronism" and then tried to justify the use of Fortran due to its speed.

> Fortran is rarely used today in the industry ... However, Fortran is still a dominant language for the large scale simulation of physical systems ... In the field of high-performance computing (HPC), of which large scale numerical simulation is a subset, there are only two languages in use today — C++ and “modern Fortran” (Fortran 90/95/03/08).
>
> The heavy use of Fortran by physicists often confounds computer scientists and other outsiders who tend to view Fortran as a **historical anachronism**.
>

Also, Fortran has a bad reputation of hard to maintain old codes, which is the exact opposite of Python.

Later I found out that 

1. Fortran is not old and certainly not a "historical anachronism". Intel publishes a new [Fortran compiler](https://software.intel.com/en-us/articles/intel-fortran-compiler-release-notes) ***EVERY THREE MONTHS***(it works smoothly on [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)). There is a brief [introduction into modern Fortran](https://www.tacc.utexas.edu/documents/13601/162125/fortran _ class.pdf). If you think Fortran hasn’t changed since the 60s, you are wrong.
2. Fortran is not hard to maintain if you know what you are doing. Fortran is actually **very straight forward** (and quite convenient compared to C++). The code is basically just operations you would do on a scratch paper. This is, in my opinion, the most prominent trait of Fortran and the most persuasion reason why you should try Fortran.

# I tried Fortran and it's AMAZING

As I said, I preferred Python in the beginning. So when I was trying to simulate a 20 by 20 system with an internal degree of two, I turned to Python.

The coding was easy, just generate the Hamiltonian which is 400 by 400, a piece of cake, I don't even have to know what the Hamiltonian looks like since I type in the rules and Python took care of all that. With some fancy function names, following some [PEP](https://www.python.org/dev/peps/)'s, the code looks pretty, reads like English. **With only one tiny problem**, it won't solve for the eigenvalue for the first step in a loop. I waited for 10 minutes for the first output and killed it.

I turned to Fortran reluctantly, having a hard time writing "implicit none", declaring the variables and types missing Python, having a much harder time organizing the Hamiltonian and flatten it out to be an explicit 400 by 400 matrix and called a function (actually a "*routine*") "zheev", thinking what a terrible name it was. Compiled and ran. The whole loop took me around 30 seconds. I thought I must skip something since that was far too speedy. Checked the result, everything is perfect.

Feeling a little embarrassed for being blindly arrogant, I started to appreciate the power of Fortran. It offers similar functionalities as Python. **Some of the codes are actually can be Pythonic**, such as [Implied do loops](http://rsusu1.rnd.runnet.ru/develop/fortran/prof77/node204.html), and [array operations](https://www.phy.ornl.gov/csep/pl/node15.html), (see also [here](http://www.mathcs.emory.edu/~cheung/Courses/561/Syllabus/6-Fortran/array4.html)).

# The Moral

I shouldn't be lazy. More precisely, I shouldn't be lazy in understanding the calculation details. The Hamiltonian is complicated but not incomprehensible. By writing in Fortran, I managed to make sense of how the system's interactions contribute to its Hamiltonian. While in Python, I view it as sort of a coding game where I put a few rules and I get the result.

This is probably some say that Fortran code is hard to maintain. I didn't see anyone defend using the point that Fortran code is like a scratch paper, or better, a manuscript. Trying to maintain the code without understanding the Physics is impossible, just like you would never modify a manuscript without proper apprehension.

The big moral is that with good insight of Physics, the code should be as simple as possible, which is often the fastest. Python is a good language and can be extremely fast (for example, use Google Tensorflow for matrix operations) and all, but the Fortran code is simple and straight forward, achieves great speed without much optimization (using [Intel Fortran compiler](https://software.intel.com/en-us/articles/intel-fortran-compiler-release-notes)). You should give it a try, it's totally worth it.



