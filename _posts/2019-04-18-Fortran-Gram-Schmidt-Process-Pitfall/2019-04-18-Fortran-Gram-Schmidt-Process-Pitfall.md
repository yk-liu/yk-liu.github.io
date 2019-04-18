---
title: The Fortran Gram-Schmidt Process Pitfall
categories: Code-Snippets
tags: Gram-Schmidt Coding Fortran 
keywords: Braiding Anyon Fermion Boson
description: >-
  I tried using Gram-Schmidt Process the other day and **just couldn't** get the correct result. It took me a few days trying to figure out why. Turns out that it's just a simple precision error problem.
---

# Code the G-S process

## Online Solution

Instead of re-inventing the wheel, I googled the code for the Gram-Schmidt process. The first result is a [note from MIT](http://web.mit.edu/18.06/www/Essays/gramschmidtmat.pdf), on how to code the G-S process in MATLAB. 

The code is pretty straight forward.

`A` stores `n` column vectors. `Q` stores the normalized orthogonal vectors, and `R` is the $n\times n$ matrix such that $A=Q\cdot R​$.

```matlab
for j=1:n
 v=A(:,j);
 for i=1:j-1
  R(i,j)=Q(:,i)'*A(:,j); % change A(:,j) to v for more accuracy
  v=v-R(i,j)*Q(:,i);
 end
 R(j,j)=norm(v);
 Q(:,j)=v/R(j,j);
end
```

## Unexpected behavior

But when I coded it in Fortran, weird things start to happen.

```fortran
 do j=1,7                               
  vec=Amat(:,j)                     
  do i=1,j-1
   Rmat(i,j) = dot_product(Qmat(:,i),vec(:))
   vec(:)=vec(:)-Rmat(i,j)*Qmat(:,i) ! subtract the projection  
  end do  ! now vec the perpendicular to all Q(:,i)                
  Rmat(j,j) = cdsqrt(dot_product(vec(:),vec(:)))
  Qmat(:,j)= vec(:)/Rmat(j,j)   ! normalize
 end do
```

The above code does not give the expected result.

Moreover, when I check the rank of the `Amat`, it gives 3. But after orthogonalization, the rank of `Qmat` is 7!

```fortran
call zgesvd("N", "N", dm, 7, Amat, dm, sing, Umat, dm, vt, 7, Awork, 25*dm, Arwork, inf)
write(*,*) "************************Rank****************************"
rank = 0
do i=1,7
 if (sing(i).ge. 0.05d0) rank = rank +1
end do
write(*,*) inf
```

This is when I started to question everything. Is it that the `zgesvd` not for calculating the rank? Or is it that the process is not as such? I checked and checked everything again and again, making unit tests, giving it dummy input and everything seems fine. But the inconsistency keeps arising.

## Solution

I finally realized that the problem arises when the input are "realistic", i.e., with limited precisions. When the inputs are "nice" such as 

$$
\begin{pmatrix} 1+\imath \\ 2\\ 3 \\0\end{pmatrix} \cdots
$$

the results are correct anyway. But once you apply the above code to vectors such as

$$
\scriptsize\begin{pmatrix} 
\vdots \\
-5.958120542697545\times10^{-2}+3.458921825623937\times10^{-2}\imath\\
-0.140304539565186-6.689129223560432E-003\imath \\
-0.108080108742333+4.045132235649551E-002\imath \\
-3.146446494299783\times10^{-2}-5.166562823556472\times10^{-3}\imath \\
\vdots \end{pmatrix} \cdots
$$

even if the two vectors are practically linearly dependent, the error in calculation will result in a tiny non-zero vector, which will later be normalized regardless of it's magnitude. To avoid this, check `abs(dot_product(vec(:),vec(:))` to remove such problem.

```fortran
 do j=1,7                               
  vec(:)=Amat(:,j) 
  if (j.gt.1) then
   do i=1,j-1
    vec(:)=vec(:)-dot_product(Qmat(:,i),vec(:))*Qmat(:,i) ! subtract the projection  
   end do  ! now vec the perpendicular to all Q(:,i)       
  end if
  if (abs(dot_product(vec(:),vec(:))).le.0.01) then
   Qmat(:,j)=vec(:)
  else
   Qmat(:,j)= vec(:)/sqrt(dot_product(vec(:),vec(:)))   ! normalize
  end if
 end do
```

Now the code gives the correct result.

# Subroutine of G-S Process

See [this thread](https://software.intel.com/en-us/forums/intel-math-kernel-library/topic/295422).

# Thoughts

I used to read the different coding style between industry-grade code and academic-project code. I have always taken pride in my code and considered the industrial way of coding ugly and ungraceful. I actually considered myself quite aware of errors by machine precisions, and have applied quite many "academic" ways to cope with errors anyway.  Besides, I have never really met any problem that specifically requires me to address such error.

I fell into the pitfall mainly because 

1. I used the wrong academic-project "wheel";
2. Fortran's precision is quite high. This might not be an issue in Python, for $10^{-7}$ might be just stored as $0$ on some machine;
3. I didn't anticipate the error would cause such a problem.  I have not actually coded high-precision calculations from scratch. On the other hand, I might be accustomed to those languages where precisions are not very high.

In hindsight, I should have realized the code from [note from MIT](http://web.mit.edu/18.06/www/Essays/gramschmidtmat.pdf) is purely academic-project grade code. You can see the example in that code. The example actually applies the code to 

$$
A=\begin{pmatrix}4 & -2\\3 & 1\end{pmatrix}.
$$

I wouldn't say that my version of G-S is industrial grade, but this is surely a lesson: **actual programs' behaviors are much more complicated and a pure "theoretical" way of doing it might not work. Do not ever forget the error even if someone might have done the dirty work for you.**