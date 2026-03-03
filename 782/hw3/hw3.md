# 1: Householder evals, det, and Singular vals
## a) Evals
Let F be a householder matrix and $F=I - 2\frac{vv^{T}}{v^{T}v}$ 
Then $Fv=v - 2\frac{vv^{T}}{v^{T}v}v =v - 2\frac{vv^{T}v}{v^{T}v} = v - 2v$ (The v^Tv in numerator and denom cancel) 
So we have Fv = -v, using the eigenvalue equation: $Ax=\lambda x$, we deduce that one of the eigenvalues is -1.
Now let x be such that the $\langle v, x \rangle = 0$ (x is orthogonal to v) and ||x|| = 1 so
	$Fx=x - 2\frac{vv^{T}}{v^{T}v}x =x - 2\frac{vv^{T}x}{v^{T}v} = x$ (Fraction part gets eliminated since v^Tx is in the numerator and it equals 0)
	So then we have Fx=x and using the same eigenvalue equation we get the eigenvalue to be +1

Another proof is that the eigenvalue of all orthogonal matricies is 1 or -1, we know that householder matricies are orthogonal so the eigenvalues must be 1
	Can prove F^T=F by $(I - 2\frac{vv^{T}}{v^{T}v})^{T}=I - 2\frac{vv^{T}}{v^{T}v} = F$ 
	And then F * F= $(I - 2\frac{vv^{T}}{v^{T}v})(I - 2\frac{vv^{T}}{v^{T}v}) =I - 4\frac{vv^{T}}{v^{T}v} + 4\frac{vv^{T}vv^{T}}{v^{T}vv^{T}v}$ Cancel the v^Tv in top and bottom to get $=I - 4\frac{vv^{T}}{v^{T}v} + 4\frac{vv^{T}}{v^{T}v} = I$  
	So Then F^T=F and F^-1=F

## b) Det
Using SVD we know that the determinant is the product of the eigenvalues. We know that v itself is an eigenvector with eigenvalue 1. Similarly, x is an eigenvector if x is orthogonal to v. Since we can have n-1 such vectors (since n is the dimension and we already have 1 being v), the eigenvalue corresponding to x, 1, has multiplicity n-1
	So det(A)= $-1 * 1^{n-1}=-1$ 

## C) Singular Vals
Singular values are the square roots of the eigenvalues of the matrix $A^{T}A$. In this case since $F=F^{T}=F^{-1}$, $F^{T}F=I_{n}$ and the eigenvalues of the identity is just 1 (and 1=sqrt(1)) so all singular values of F are 1

# 2) Householder and Norms
![[Pasted image 20260302181929.png]]
## a) norm x = norm y
We know that F is unitary so ||Fx||=||x|| so if we have Fx=y, then ||Fx||=||y|| which means ||x=||y||

## b)
Know $F=I - 2\frac{vv^{T}}{v^{T}v}$
So let $x,y \in \mathbb{R}^{n}$ and $||x||_{2}=||y||_{2}$ but $x\ne y$ and set v = x-y, then
$Fx=x - 2v\frac{v^{T}x}{v^{T}v}  =x - 2(x-y)\frac{(x-y)^{T}x}{(x-y)^{T}(x-y)} = x - 2(x-y)\frac{x^{T}x-y^{T}x}{(x^{T}x- x^{T}y - y^{T}x-y^{T}y)}$ 
Since we have ||x||=||y||, $x^{T}x=y^{Ty}$ and since we are in $\mathbb{R}$, $x^{T}y=y^{T}x$ so 
$=x - 2(x-y)\frac{x^{T}x-y^{T}x}{x^{T}x- x^{T}y - x^{T}y-x^{T}x}$ 
$=x - 2(x-y)\frac{x^{T}x-y^{T}x}{2(x^{T}x- x^{T}y)}$ Now we can cancel the numerator and denom (and the 2s)
$=x - 2(x-y)\frac{1}{2}$ 
$=x - x+y$ 
$=y$
So then now we have shown that Fx = y if F is made up of v= x-y

# 3:


