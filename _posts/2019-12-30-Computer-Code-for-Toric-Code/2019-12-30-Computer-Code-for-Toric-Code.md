---
Title: Computer Code for Kitaev's Toric Code
edit: 2019-12-30
categories: Topology Code Publication
tags: Triangulation Fortran Kitaev's-Toric-Code
description: The post is my initial set up for Kitaev's toric code. The work is published on [arXiv:1912.12964](https://arxiv.org/abs/1912.12964).
---

$$
\newcommand{\id}{\mathrm{id}}
\newcommand{\E}{\mathcal E}
\newcommand{\ind}{\mathrm{ind}}
$$

# Introduction Kitaev's Model

Remember the term Topological Insulators? I first heard it in my freshman year in a seminar. After his introduction to the system, with lot of terminologies I did not understand, I, being a naïve physics student with folk knowledge in topology, proposed an brilliant idea to the professor: "Will it be interesting if you make the insulator a mobius strip?" The professor clearly did not anticipate that and replied that some of the researcher are doing something like that but the system that he introduced does not exhibit anything new. 

Then I learned that most of the times the "topological insulators" are not topological in real space, but in a momentum space. And the concepts are more related to more complicated structures and features, not as simple as "doughnuts and coffee cup" type of topology. 

However, there is a model is defined by Kitaev in his [paper](https://arxiv.org/abs/quant-ph/9707021), where he used square lattice, and he showed that if we consider a 2 dimensional lattice which is a surface of a manifold, it's ground state degeneracy would depend on the genus of the surface. Meaning that the surface would exhibit real space topology. 

My advisor, Dr. Emil Prodan, pushed the results further in his [paper](https://arxiv.org/abs/1907.09898) to arbitrary triangulations. Some of the triangulation of sphere is listed below.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-12-30-Computer-Code-for-Toric-Code/assets/Sphere_triangulations.png" alt="Sphere triangulations" width="45%">

Some of the triangulations of torus is listed below.

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-12-30-Computer-Code-for-Toric-Code/assets/Torus_triangulations.png" alt="Torus triangulations" width="45%">

What is interesting is that all the ground state's degeneracy is independent of actual triangulation, but dependent of the genus of the system.

# Definition of the Model

The model is defined on the triangulation, such that on each edge we define two types of operators, $\sigma _ v$ and $\sigma _ t$. On each vertex $v$ we define an operator $A _ v=\displaystyle\bigotimes _ {e \text{ connected to }v}\sigma _ v$, and on each triangle $t$, we define another operator $B _ t=\displaystyle\bigotimes _ {e \text{ constructed by }t}\sigma _ t$. 

<img src="https://raw.githubusercontent.com/yk-liu/yk-liu.github.io/master/_posts/2019-12-30-Computer-Code-for-Toric-Code/assets/model_setup.png" alt="Toric code set up" width="45%">

The Hamiltonian is defined as 
$$
H = -\sum A _ v  -\sum B _ t.
$$
In other words, we want to study the sum over tensor products
$$
\sum _ {x,y}\id\otimes\id \otimes \cdots \otimes\id\otimes A^x\otimes\id\otimes \cdots \otimes\id\otimes A^y\otimes\id\otimes \cdots \id\otimes\id
$$

The tensor product can be grouped as such

$$
(\id\otimes\id \otimes \cdots \otimes\id)\otimes A^x\otimes (\id\otimes \cdots \otimes\id) \otimes A^y\otimes (\id\otimes \cdots \id\otimes\id)
$$


# Analytical Formula


The rule for matrix elements’ tensor product is just

$$
E^{(n)} _ {i,j} \otimes E^{(m)} _ {k,l} = E^{mn} _ {(i -1)m+k,(j-1)m +l}
$$

The notation $E^{n}$ is to be interpreted as a matrix elements of dimension $n$ by $n$. 

Then we have the distributivity of tensor products

$$
(A+B)\otimes (C+D) = A\otimes C+A\otimes D+B\otimes C + B\otimes D
$$


That means

$$
\begin{align}
&\id^{n _ 1} \otimes A^{2} \otimes
\id^{n _ 2} \otimes A^{1} \otimes
\cdots\otimes
\id^{n _ K} \otimes A^{Q} \otimes
\id^{n _ K+1} 
\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1} E^{n _ 1} _ {i _ 1,j _ 1}\delta _ {i _ 1,j _ 1} \right)\otimes \left( \sum _ {k _ 1,l _ 1}^{n} A _ {k _ 1,l _ 1} E^{n} _ {k _ 1,l _ 1}\right) \otimes  \left(\sum _ {i _ 2,j _ 2}^{n _ 2} E^{n _ 2} _ {i _ 2,j _ 2}\delta _ {i _ 2,j _ 2} \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1}\sum _ {k _ 1,l _ 1}^{n} \delta _ {i _ 1,j _ 1} E^{n _ 1} _ {i _ 1,j _ 1}\otimes A _ {k _ 1,l _ 1} E^{n} _ {k _ 1,l _ 1}\right) \otimes  \left(\sum _ {i _ 2,j _ 2}^{n _ 2} \delta _ {i _ 2,j _ 2} E^{n _ 2} _ {i _ 2,j _ 2} \right)\otimes \cdots
\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1}\sum _ {k _ 1,l _ 1}^{n} A _ {k _ 1,l _ 1}\delta _ {i _ 1,j _ 1} E^{n _ 1n} _ {n(i _ 1-1)+k _ 1,n(j _ 1-1)+l _ 1}\right) \otimes  \left(\sum _ {i _ 2,j _ 2}^{n _ 2} \delta _ {i _ 2,j _ 2} E^{n _ 2} _ {i _ 2,j _ 2} \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1}\sum _ {k _ 1,l _ 1}^{n}\sum _ {i _ 2,j _ 2}^{n _ 2} A _ {k _ 1,l _ 1}\delta _ {i _ 1,j _ 1}  \delta _ {i _ 2,j _ 2}E^{n _ 1n} _ {n(i _ 1-1)+k _ 1,n(j _ 1-1)+l _ 1} \otimes  E^{n _ 2} _ {i _ 2,j _ 2} \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1}\sum _ {k _ 1,l _ 1}^{n}\sum _ {i _ 2,j _ 2}^{n _ 2} A _ {k _ 1,l _ 1}\delta _ {i _ 1,j _ 1}  \delta _ {i _ 2,j _ 2}E^{n _ 1nn _ 2} _ {n _ 2\left(n(i _ 1-1)+k _ 1-1\right)+i _ 2,n _ 2(n(j _ 1-1)+l _ 1-1)+j _ 2} \ \right)\otimes \cdots\\
\end{align}
$$

Hence we have

$$
\begin{align}
&\id^{n _ 1} \otimes A^{2} \otimes
\id^{n _ 2} \otimes A^{1} \otimes
\cdots\otimes
\id^{n _ K} \otimes A^{Q} \otimes
\id^{n _ K+1} 
\\
&=
\left(\sum _ {i _ 1,j _ 1}^{n _ 1}\sum _ {k _ 1,l _ 1}^{n}\sum _ {i _ 2,j _ 2}^{n _ 2} A _ {k _ 1,l _ 1}\delta _ {i _ 1,j _ 1}  \delta _ {i _ 2,j _ 2}E^{n _ 1nn _ 2} _ {n _ 2\left(n(i _ 1-1)+k _ 1-1\right)+i _ 2,n _ 2(n(j _ 1-1)+l _ 1-1)+j _ 2} \ \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1}^{n _ 1}\sum _ {i _ 2}^{n _ 2} \sum _ {k _ 1,l _ 1}^{n}A _ {k _ 1,l _ 1}E^{n _ 1nn _ 2} _ {n _ 2\left(n(i _ 1-1)+k _ 1-1\right)+i _ 2,n _ 2(n(i _ 1-1)+l _ 1-1)+i _ 2} \ \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1}^{n _ 1}\sum _ {i _ 2}^{n _ 2} \sum _ {k _ 1,l _ 1}^{n}\sum _ {k _ 2,l _ 2}^{n}A _ {k _ 1,l _ 1}A _ {k _ 2,l _ 2}E^{n _ 1nn _ 2n} _ {n(n _ 2\left(n(i _ 1-1)+k _ 1-1\right)+i _ 2-1)+k _ 2,n(n _ 2(n(i _ 1-1)+l _ 1-1)+i _ 2-1)+l _ 2} \ \right)\otimes \cdots\\
&=
\left(\sum _ {i _ 1}^{n _ 1}\sum _ {i _ 2}^{n _ 2} \sum _ {i _ 3}^{n _ 3} \sum _ {k _ 1,l _ 1}^{n} \sum _ {k _ 2,l _ 2}^{n} A _ {k _ 1,l _ 1}A _ {k _ 2,l _ 2}E^{n _ 1nn _ 2nn _ 3} _ {n _ 3(n(n _ 2\left(n(i _ 1-1)+k _ 1-1\right)+i _ 2-1)+k _ 2-1)+i _ 3,n _ 3(n(n _ 2(n(i _ 1-1)+l _ 1-1)+i _ 2-1)+l _ 2-1)+i _ 3} \ \right)\otimes \cdots\\
\end{align}
$$

We can see that the indices of $E$ are

$$
i _ 1\\
n(i _ 1-1)+k _ 1\\
n _ 2(n(i _ 1-1)+k _ 1-1)+i _ 2\\
n(n _ 2(n(i _ 1-1)+k _ 1-1)+i _ 2-1)+k _ 2\\
n _ 3(n(n _ 2(n(i _ 1-1)+k _ 1-1)+i _ 2-1)+k _ 2-1)+i _ 3
$$

organizing the last term,

$$
\begin{align}
&n _ 3(n(n _ 2(n(i _ 1-1)+k _ 1-1)+i _ 2-1)+k _ 2-1)+i _ 3\\
&=n _ 3nn _ 2ni _ 1+n _ 3nn _ 2k _ 1+n _ 3ni _ 2+n _ 3k _ 2+i _ 3-n _ 3nn _ 2n-n _ 3nn _ 2-n _ 3n-n _ 3\\
&=n _ 3nn _ 2n(i _ 1+n^{-1}k _ 1-1-n^{-1})+n _ 3n(i _ 2+n^{-1}k _ 2-1-n^{-1})+i _ 3\\
\end{align}
$$

we know from induction,

$$
\begin{align}
\ind(i,k)&=\sum _ {r=1}^{Q}\left(\prod _ {s=Q}^{r+1}n _ s n\right)i _ r
     +\sum _ {r=1}^{Q}\left(\prod _ {s=Q}^{r+1}n _ s n\right)n^{-1}k _ r
     -\sum _ {r=1}^{Q}\left(\prod _ {s=Q}^{r+1}n _ s n\right)(1+n^{-1})
\\
&=\sum _ {r=1}^{Q}\left(\prod _ {s=Q}^{r+1}n _ s n\right)(i _ r+n^{-1}k _ r-1-n^{-1})
\\
&=\sum _ {r=1}^{Q}\left(\prod _ {s=Q}^{r+1}n _ s n\right)(i _ r+(k _ r-1)/n-1)
\end{align}
$$

Then we can find

$$
\underbrace{\sum _ {i _ 1}^{n _ 1}\sum _ {i _ 2}^{n _ 2}\cdots \sum _ {i _ {Q+1}}^{n _ {Q+1}}}
\underbrace{\sum _ {k _ 1,l _ 1}^{n}\cdots \sum _ {k _ K,l _ K}^{n}} 
A _ {k _ 1,l _ 1}A _ {k _ 2,l _ 2}\cdots A _ {k _ Q,l _ Q}
E^{n^{Q}n _ 1n _ 2\cdots n _ Q} _ {\ind(i,k),\ind(i,l)}\\
$$

# The codes for one configuration

The code would be 

```fortran
do i(1)=1,n(1)
 do i(2)=1,n(2)
  ...
   do i(Q+1)=1,n(Q+1)
   !end of sum over identities depth=Q+1
    do k(1)=1,n
    do l(1)=1,n
     do k(2)=1,n
     do l(2)=1,n
      ...
      ...
       do k(Q)=1,n
       do l(Q)=1,n
       ! end of sum over A's depth=3Q+1
       
        ! generate indices and product of A's
        ind1=0; ind2=0
        prod=1; prodA=1
        do r=1,Q
         do s=r+1,Q ! if r+1.gt.Q, there will be no loop here
          prod = prod*n(s)*n0
         end do
         ind1 = ind1+prod*(i(r)+(k(r)-1)/(n0+0d0)-1)
         ind2 = ind2+prod*(i(r)+(l(r)-1)/(n0+0d0)-1)
         prodA = prodA*A(r,k(r),l(r))
        end do
      
        H(ind1,ind2) = H(ind1,ind2)+prodA
       end do
       end do
      ...
      ...
     end do
     end do
    end do
    end do
    !closure of sum over A's
   end do
  ...
 end do
end do
!closure of sum over indetities
       
```

The problem of the above code is that the number of non-trivial operators $Q$ is **hard coded** and cannot be changed by simply changing $Q=Q+1$. 

# Possible problems of the codes

## The code is too deep

The above code for generating one term of the Hamiltonian needs to be put inside of a loop for generating "configurations" of $n _ i$'s, resulting the loop being too deeply nested.

```fortran
do loopn=0,2**L
 ! generate a binary string of length L that has Q 1's in it.
 proc=0
 bin=0
 do i=1,L
  bin(i)=mod((loopn-proc)/2**(i-1),2) 
  proc = proc+bin(i)*2**(i-1)
  if(sum(bin).gt.Q) go to 111 
  ! if there are more than Q 1's we will 
  ! abort this binary conversion and further calculation
 end do
 
 ! generate the n(i)'s according to the binary string
 i=1
 do j=1,L
  if (bin(j).eq.1) then
   n(i) = n0**j
   i=i+1
  end if
 end do
 
 ! current loop depth 1
 ! current loop = 2**L
 
 ! code for generating one configuration 
 ! loop depth 3Q+3
 ! loop = n0**(2*Q)*n0**(L-Q)*(much less than 2**L)
 
 
 111 continue
end do
! Hamiltonian is generated
```

This can be solved by 

## The number $Q$ is hard-coded

The loop

```fortran
do i(1)=1,n(1)
 do i(2)=1,n(2)
  ...
   do i(Q+1)=1,n(Q+1)
```

## Solution

The two above problems can be solved by replacing the nested loops to a "smart conversion".

The idea is to convert the total loop $n^{L-Q}$ to a number such that it's $i$th digit is of base $n(i)$, or better,

$$
n^{L-Q} \rightarrow \overline{i(Q+1) _ {\scriptsize n(Q+1)}\cdots i(2) _ {\scriptsize n(2)} i(1) _ {\scriptsize n(1)}}
$$

The loop over $i()$'s can be replaced by

```fortran
!start the flattened loop
do loopi=1,n0**(L-Q)

 proc=0
 prodn=1
 do r=1,Q+1
  prodn=pordn*n(r) 
  i(r)=mod((loopi-proc)/prodn,n(r)) 
  proc = proc+i(r)*prodn
 end do
 
 ! calculate using the above results
 
end do
```

The loop over $k$ and $l$ will be easily modified in the same way. 

```fortran
do loopk=1,n0**Q

 proc=0
 do r=1,Q
  k(r)=mod((loopk-proc)/n0**(r-1),n0) 
  proc = proc+k(r)*n0**(r-1)
 end do
 
 ! calculate using the above results
 
end do
```

# Combined Codes

```fortran
do loopn=0,2**L
 ! generate a binary string of length L that has Q 1's in it.
 proc=0
 bin=0
 do r=1,L
  bin(r)=mod((loopn-proc)/2**(r-1),2) 
  proc = proc+bin(r)*2**(r-1)
  if(sum(bin).gt.Q) go to 111 
  ! if there are more than Q 1's we will 
  ! abort this binary conversion and further calculation
 end do
 
 ! generate the n(i)'s according to the binary string
 i=1
 do j=1,L
  if (bin(j).eq.1) then
   n(i) = n0**j
   i=i+1
  end if
 end do
 
 ! current loop depth 1
 ! current loop = 2**L
 
 !start the flattened loop
 do loopi=1,n0**(L-Q)
  proc=0
  prodn=1
  do r=1,Q+1
   prodn=pordn*n(r) 
   i(r)=mod((loopi-proc)/prodn,n(r)) 
   proc = proc+i(r)*prodn
  end do
  ! i have been generated
  
  do loopk=1,n0**Q
   proc=0 ! it's safe to use r and proc here, they are only one time varable and have no influence on later after the do loop
   do r=1,Q
    k(r)=mod((loopk-proc)/n0**(r-1),n0) 
    proc = proc+k(r)*n0**(r-1)
   end do
   ! k have been generated
   
   do loopl=1,n0**Q
    proc=0
    do r=1,Q
     l(r)=mod((loopl-proc)/n0**(r-1),n0) 
     proc = proc+l(r)*n0**(r-1)
    end do
    ! l have been generated
    
    ind1=0; ind2=0
    prod=1; prodA=1
    do r=1,Q
     do s=r+1,Q ! if r+1.gt.Q, there will be no loop here
      prod = prod*n(s)*n0
     end do
     ind1 = ind1+prod*(i(r)+(k(r)-1)/(n0+0d0)-1)
     ind2 = ind2+prod*(i(r)+(l(r)-1)/(n0+0d0)-1)
     prodA = prodA*A(r,k(r),l(r))
    end do
      
    H(ind1,ind2) = H(ind1,ind2)+prodA
 
   end do ! end of loopl
  end do ! end of loopk
 end do !end of loopi
 111 continue
end do
! Hamiltonian is generateddo loopn=1,2**L
```

## Possible enhancements

- The outmost loop contains a lot of unwanted loops. When $Q$ is small compared to $L$, there are bound to be a lot of wasted resources and jumps. If the `go to` statements breaks the parallelization, we can relabel the qualified `loopn`'s and write that into a much smaller loop.
- In extreme case, we can even compress the entire nested loop into one single big loop using the techniques stated above. But that might result in a code that is hard to understand. 
- In each loop, the product of $A$ is constructed more times than needed. 

# Publication and Improved Code Samples

The final optimal codes is published on [arXiv:1912.12964](https://arxiv.org/abs/1912.12964) with many examples.

