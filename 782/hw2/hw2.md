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
For this, assume $Q=\hat{Q}$ and $R=\hat{R}$. I got lazy
$\implies$
Let rankA=n, then rankA^T = n so A^TA is nonsingular.
Then we know that $det(A^{T}A)\ne 0$
We know that $det(A^{T}A)=det((QR)^{T}QR)=det(R^{T}Q^{T}QR)$. Since Q is made up of orthonormal columns, $Q^{T}Q=I_{m}$ so $=det(R^{T}R)=det(R^{T})det(R)\ne 0$ This is only possible if and only if $det(R^{T}) \ne 0$ and $det(R) \ne 0$ 
So we now have $det(R)\ne0$, since R is a triangular matrix, we know that the determinant of R is the product of its main diagonal and since determinant of R is not 0, there must not be a 0 along the main diagonal. Proof complete

$\Leftarrow$  
R has all nonzero entries on the main diagonal 
	This implies that R is nonsingular so rank(R)=n
By rank inequalities: rank(A) = Rank(QR) >= rank(Q) + rank(R) - n
Since Q is an orthogonal matrix, rankQ= min{m,n} = n and rank(R)=n so
rank(A) >= n + n - n = n
So now we have rank(A) >= n. Since A is m x n matrix, we know its max rank is n thus rank(A)=n
## 6
Show that the columns of Q form an orthonormal basis for the Range ofA.

So we know that the cols of Q are orthonormal by the defn of QR factorization and we know the cols of Q form the range(Q) by base defn.
WTS range(Q)=range(A). Will do this by containment and reverse containment

$range(Q) \supseteq range(A)$ 
Let $x \in Range(A)$ where $x\ne0$, since rankA=n $\exists y\ne0$ st Ay=x
$\implies QRy=x$, since $y\ne0, Ry=z \ne 0$ so $\forall x \in Range(A) \exists z \ st \ Qz=x$ so 
$x \in range(Q)$ so $range(A) \subseteq range(Q)$ 

$range(Q) \subseteq range(A)$ 
Let $x \in Range(Q)$ where $x\ne0$, then $\exists y\ne0$ st Qy=x. Since R is upper triangular with nonzero entries along the main diagonal, it is nonsingular and therefore invertable. So we can write $Q=AR^{-1}$ so $Qy=AR^{-1}y=x$ so if we let $z=R^{-1}y, Az=x$ so then $\forall x \in Range(Q), \exists z \ st \ Az=x$ so $range(Q) \subseteq range(A)$ 

So $range(Q) \subseteq range(A) \subseteq range(Q)$ 
So range(Q) = range(A)

## 7
Code:
```matlab
function [Q, R] = clgs(A)

    n = size(A, 2);

    R = zeros(n);
    Q = zeros(size(A,1), n);
    for j = 1:n
        v = A(:, j);


        for i = 1:(j-1)
            R(i,j) = Q(:, i)' * A( :, j);
            v = v - R(i, j) * Q(:, i);

        end

        R(j,j) = norm(v);
        Q(:, j) = v / R(j,j);

    end
end

function [Q, R] = mgs(A)

    n = size(A, 2);

    R = zeros(n);
    Q = zeros(size(A,1), n);

    V = zeros(size(A));

    for i = 1:n
        V(:, i) = A(:, i);
    end


    for i = 1:n
        
        R(i , i) = norm(V(:, i));
        Q( :, i) = V(:, i) / R(i,i);

        for j = (i+1):n
            R(i , j) = Q(:,i)' * V(:, j);
            V( :, j) = V( :, j) - R(i, j) * Q(:, i);
        end
    end
end

epsillons = [1e-4, 1e-6, 1e-8];
format long

for e = epsillons
    A = [1, 1, 1; e, 0, 0; 0, e, 0; 0, 0, e];
    
    fprintf("Q and R for epsilon = %f using classical GSP", e)
    [Q, R] = clgs(A)
    fprintf("QR:")
    Q*R
    fprintf("Q^TQ:")
    Q' * Q

    

    fprintf("Q and R for epsilon = %f using modified GSP", e)
    [Q, R] = mgs(A)
    fprintf("QR:")
    Q * R
    fprintf("Q^TQ:")
    Q' * Q
end
```

![[Pasted image 20260210211329.png]]
![[Pasted image 20260210211334.png]]
![[Pasted image 20260210211343.png]]
![[Pasted image 20260210211406.png]]

The modified GSP was significantly better. This is evident at the smaller epsilons where $Q^{T}Q$ is much close to $I_{n}$ for the modified GSP compared to the regular