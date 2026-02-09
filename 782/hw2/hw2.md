## 1
![[Pasted image 20260205114658.png]]
## 2
### a)
Given: A =QBQ^T where QQ^T=Q^TQ=I
Let $\lambda$ be a singular value. Then $\exists x \ne 0$ st $A^{T}Ax=\lambda x$
$\implies (QBQ^{T})^{T}(QBQ^{T})x= \lambda x$ 
$\implies (QB^{T}Q^{T})(QBQ^{T})x= \lambda x$ 
$\implies QB^{T}BQ^{T}x= \lambda x$ 
$\implies B^{T}BQ^{T}x= Q^{T}\lambda x$ 
$\implies B^{T}BQ^{T}x= \lambda Q^{T} x$ 
Since Q is orthogonal, we know that Q and Q^T are nonzero and since x is nonzero, we know that $Q^{T} x\ne0$  so let $y=Q^{T}x$ where $y \ne 0$
So $B^{T}By= \lambda y$   therefore, $\lambda$ is a singular value for B

### b)
Converse: If they have the same singular values, then they are orthogonally similar

Let A=\[4] and B=\[-4]. The have the same singular values, 4. For A and B to be orthogonally similar, we need Q to be positive and Q^T to be negative (or vice versa). However if Q is positive then its transpose is also positive and if Q is negative then its transpose is also negative.  So it is not possible for A and B to be orthogonally similar
## 3
In SVD, the choice of the singular values being positive is conventional 


A is nonsingular so we know that it is invertable and has rank m
Let $\lambda$ be an eigen value for A. Since A is nonsingular, $\lambda \ne 0$
This means that $Ax=\lambda x$ so multiplying by A^-1 to both sides,
$x=A^{-1}\lambda x \implies A^{-1}x= \frac{1}{\lambda}x$ so we know that the eigenvalues of $A^{-1}$ are the  reciprocal of the eigenvalues of A.
Since A is nonsingular, we know that  $\sigma_{1} \ge ... \ge \sigma_{m} \gt 0$.
By what we showed previously, we know that the singular values of $A^{-1}$ are the reciprocal of the singular values of A 
	ie $\frac{1}{\sigma_{1}}... \frac{1}{{\sigma_{m}}}$ 
Ssince $\sigma_{m}$ was the smallest, $\frac{1}{\sigma_{m}}$ is the largest singular value for A^-1 therefore
$||A^{-1}||_{2}=\frac{1}{\sigma_{m}}$ 

A similar proof is that $A^{-1}=(U\Sigma V^{*})^{-1}=V\Sigma^{-1}U^{-1}$ and since $\Sigma$ is a diagonal matrix, its inverse will be the reciprocal of its values. And the largest singular value of $\Sigma^{-1}$ will be the reciprocal of the smallest singular value of $\Sigma$ ($\sigma_{m}$) so $||A^{-1}||_{2}=\frac{1}{\sigma_{m}}$ 
## 4
```matlab
A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 1 1 1 1; 3 2 1 0]
[U, S, V] = svd(A, 'econ');

rank = sum(diag(S) > 1e-5)
A_2_norm = max(S, [], 'all')

fprintf("The orthonormal basis of the range is the column vectors of the following matrix")
range_A= U(:, 1:rank)

fprintf("The orthonormal basis of the null space is the column vectors of the following matrix")
null_A = V(:, rank+1:end)
```
![[Pasted image 20260205115401.png]]
## 5
$\implies$
Let rankA=n, then rankA^T = n so A^TA is nonsingular.
Then we know that $det(A^{T}A)\ne 0$
We know that $det(A^{T}A)=det((QR)^{T}QR)=det(R^{T}Q^{T}QR)$. Since Q is made up of orthonormal columns, $Q^{T}Q=I_{n}$ so $=det(R^{T}R)=det(R^{T})det(R)\ne 0$ This is only possible if and only if $det(R^{T}) \ne 0$ and $det(R) \ne 0$ 
So we now have $det(R)\ne0$, since R is a triangular matrix, we know that the determinant of R is the product of its main diagonal and since determinant of R is not 0, there must not be a 0 along the main diagonal. Proof complete

$\Leftarrow$  
R has all nonzero entries
## 6
## 7
