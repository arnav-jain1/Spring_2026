## Problem 1
Let $A=L_{1}U_{1}$ and $A=L_{2}U_{2}$, then $L_{1}U_{1}=L_{2}U_{2}$
since we know that A is invertible, $L_{1},L_{2}, U_{2}, U_{1}$ are invertible so this implies $U_{1}U_{2}^{-1}=L_{1}^{-1}L_{2}$
Since $U_{2}$ is upper triangular, so is $U_{2}^{-1}$ and $U_{1}$ is upper triangular so then $U_{1}U_{2}^{-1}$ must be upper triangular
Likewise, $L^{-1}_{1}L_{2}$  is lower triangular
So a lower triangular matrix is equal to an upper triangular matrix which is only possible if they are diagonal matricies. So let this matrix be D
Since $L_{1}$ and $L_{2}$ is unit triangular, so is $L_{2}^{-1}$ so $L_{1}^{-1}L_{2}$ is also unit triangular therefore $D=I_{m}$ so

$U_{1}U_{2}^{-1}=I_{m} \implies U_{1}=U_{2}$
and
$L_{1}^{-1}L_{2}=I_{m} \implies L_{1}=L_{2}$

So LU factorization is unique

## Problem 2

Proof by contradiction:
Let A be nonsingular and for some k, $a_{ik}^{(k)}$ where $i= k...m$ are all 0
If all $a_{ik}^{(k)}=0$, this means that $a^{(k)}_{kk}= ...= a^{(k)}_{mk}$ is equal to 0. 
Since we are doing GEPP,at step k, $a^{(k)}_{1,k-1}...a^{(k)}_{k-1,k-1} \ne 0$ but $a^{(k)}_{k,k-1}...a^{(k)}_{m,k-1}= 0$, 
Likewise, $a^{(k)}_{1,k}...a^{(k)}_{k-1,k} \ne 0$ and we are given that $a^{(k)}_{k,k}...a^{(k)}_{m,k} = 0$. 
From here we can see that the columns of $A^{(k)}$ are linearly dependent (they have the same column span) so $A^{(k)}$ must be linearly dependent

Since GEPP is the same as multiplying elementary matricies to a matrix, this means that there is some nonsingular matrix $P^{(k)}$ that is the product of elementary matricies st $P^{(k)}A=A^{(k)}$. Since we know P and A are nonsingular (det $\ne 0$), $det(A^{(k)}) \ne 0$so $A^{(k)}$ is nonsingular which is a contradiction


## Problem 3

### a)
![[Pasted image 20260407193541.png]]

Base case: at $A^{(1)}=A$ and we know A is scdd so we are done
Inductive hypothesis: Assume $A^{(k)}_{(k:m,k:m)}$  is scdd
Proving for k+1:

Know that at step k+1, any element element of A is the result of gaussian elimination so we have:
$a_{ij}^{(k+1)} = a_{ij}^{(k)} - \frac{a_{ik}^{(k)}}{a_{kk}^{(k)}} a_{kj}^{(k)}$

So then we want to prove the equation in the question. The RHS is
$$\sum_{\substack{i=k+1 \\ i \neq j}}^{m} \left| a_{ij}^{(k+1)} \right| = \sum_{\substack{i=k+1 \\ i \neq j}}^{m} \left| a_{ij}^{(k)} - \frac{a_{ik}^{(k)}}{a_{kk}^{(k)}} a_{kj}^{(k)} \right| \lt \sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ij}^{(k)}| + \frac{|a_{kj}^{(k)}|}{|a_{kk}^{(k)}|} \sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ik}^{(k)}|$$
and by the inductive hypothesis we know $\sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ij}^{(k)}| + |a_{kj}^{(k)}| \lt |a_{jj}^{(k)}|$ (elem $a_{kj}$ is not included in the sum)
so $\sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ij}^{(k)}| \lt |a_{jj}^{k}| - |a_{kj}^{(k)}|$
$$\lt |a_{jj}^{(k)}| - |a_{kj}^{(k)}|+ \frac{|a_{kj}^{(k)}|}{|a_{kk}^{(k)}|} \sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ik}^{(k)}|$$
From here we know that $\sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ik}^{(k)}| + |a_{jk}^{(k)}| \lt |a_{kk}^{k}|$ (from the induct hypthothesis as well since $a_{jk}$ isnt included in the sum) 
so $\sum_{\substack{i=k+1 \\ i \neq j}}^{m} |a_{ik}^{(k)}|  \lt |a_{kk}^{k}| - |a_{jk}^{(k)}|$

$$\lt |a_{jj}^{(k)}| - |a_{kj}^{(k)}| + \frac{|a_{kj}^{(k)}|}{|a_{kk}^{(k)}|}(|a_{kk}^{(k)}| - |a_{jk}^{(k)}|) = |a_{jj}^{(k)}| - \frac{|a_{kj}^{(k)}|}{|a_{kk}^{(k)}|} |a_{jk}^{(k)}| $$

And the LHS is
$$|a_{jj}^{(k+1)}| = \left| a_{jj}^{(k)} - \frac{a_{jk}^{(k)}}{a_{kk}^{(k)}} a_{kj}^{(k)} \right| \geq |a_{jj}^{(k)}| - \frac{|a_{jk}^{(k)}|}{|a_{kk}^{(k)}|} |a_{kj}^{(k)}|$$
So now we can see that $|a_{jj}^{(k+1)}|\ge|a_{jj}^{(k)}| - \frac{|a_{jk}^{(k)}|}{|a_{kk}^{(k)}|} |a_{kj}^{(k)}| > \sum_{\substack{i=k+1 \\ i \neq j}}^{m} \left| a_{ij}^{(k+1)} \right|$ 

So we have proven for the case of k+1 so we are done

### b)
Proving SCDD never fails:
From the last problem we know that all steps of a scdd matrix produce a scdd submatrix
So at step k, we know the pivot is $a^{(k)}_{kk}$  and from defn, we know$|a^{(k)}_{kk}|> 0$ (since the smallest the column non diagonal elements can be is 0 and the diagonal element is strictly bigger than 0, so $a^{(k)}_{kk}>0$)

Since $a^{(k)}_{kk}>0$, we can use GE so at each step k, GE will work so GE works for an SCDD matrix

Showing $|l_{ik}| < 1$:
Since $|l_{ik}|=|\frac{a_{ik}}{a_{kk}}|$ and we know that $|a_{kk}| > |a_{ik}|$  by properties of SCDD (because if $a_{ik}=x$ and all other elems are 0, then $a_{kk}>x$)
So$|l_{ik}|=|\frac{a_{ik}}{a_{kk}}| < 1$  so we are done!

## Problem 4
```matlab
function x = forsub(L, b)
    n = length(b);
    x = zeros(n, 1);
    x(1) = b(1) / L(1,1);
    for i = 2:n
        x(i) = (b(i) - L(i, 1:i-1) * x(1:i-1)) / L(i,i);
    end
end

function x = bacsub(U, b)
    n = length(b);
    x = zeros(n, 1);
    x(n) = b(n) / U(n,n);
    for i = n-1:-1:1
        x(i) = (b(i) - U(i, i+1:n) * x(i+1:n)) / U(i,i);
    end
end


A = pascal(12)
x = ones(12, 1);
b = A * x

[L, U, P] = lu(A);
b_new = P * b;

y = forsub(L, b_new);
x_bar = bacsub(U, y);

err = norm(x_bar-x)/norm(x)
bound = eps * cond(A)
```
Output:
```

A =

  Columns 1 through 6

           1           1           1           1           1           1
           1           2           3           4           5           6
           1           3           6          10          15          21
           1           4          10          20          35          56
           1           5          15          35          70         126
           1           6          21          56         126         252
           1           7          28          84         210         462
           1           8          36         120         330         792
           1           9          45         165         495        1287
           1          10          55         220         715        2002
           1          11          66         286        1001        3003
           1          12          78         364        1365        4368

  Columns 7 through 12

           1           1           1           1           1           1
           7           8           9          10          11          12
          28          36          45          55          66          78
          84         120         165         220         286         364
         210         330         495         715        1001        1365
         462         792        1287        2002        3003        4368
         924        1716        3003        5005        8008       12376
        1716        3432        6435       11440       19448       31824
        3003        6435       12870       24310       43758       75582
        5005       11440       24310       48620       92378      167960
        8008       19448       43758       92378      184756      352716
       12376       31824       75582      167960      352716      705432


b =

          12
          78
         364
        1365
        4368
       12376
       31824
       75582
      167960
      352716
      705432
     1352078


err =

   7.9681e-06


bound =

   1.9460e-04

```
A and b are floating point matricies and vectors because both of them can be represented by floating point numbers accurately. The minimum positive value in a Matlab double is $\approx 10^{-308}$ which is well under the minimum value of our matrix/vector, 1. The maximum number is $\approx 10^{308}$ which is well over the maximum value of our matrix/vector, 1352078. Additionally since there are no floating point numbers, each number in the matrix/vector can be represented perfectly by Matlab so they are floating point matricies and vectors.

We can also see the error is less than our bound

## Problem 5
Know $Ax = b$ and $A = A_1 A_2$ and $(A_1 + \delta A_1)\hat y = b$ and $(A_2 + \delta A_2)\tilde x = \tilde y$

so $(A_1 + \delta A_1)(A_2 + \delta A_2)\tilde x = b$
so $(A_1A_2 + A_1\delta A_2 + \delta A_1A_2 + \delta A_1\delta A_2)\hat x = b$
Since $\|A\| = \|A_1A_2\| \le \|A_1\|\,\|A_2\|$, we have $\delta A = A_1\delta A_2 + \delta A_1A_2 + \delta A_1\delta A_2$
because then $(A + \delta A)\hat x = b$

So by triangle inequality
$$
\|\delta A\|
=
\|A_1\delta A_2 + \delta A_1A_2 + \delta A_1\delta A_2\|
\le
\|A_1\delta A_2\| + \|\delta A_1A_2\| + \|\delta A_1\delta A_2\|
$$

and

$||A_1\delta A_{2}||\le \|A_1\|\|\delta A_2\|\le c(m)u||A_1||||A_2\|$
$\|\delta A_1A_2\| \le \|\delta A_1\|\,\|A_2\| \le c(m)u\,\|A_1\|\,\|A_2\|$
$\|\delta A_1\delta A_2\| \le (c(m)u)^2 \|A_1\|\,\|A_2\|$

so then
$\|\delta A\| \le \left(2c(m)u + c(m)^2u^2\right)\|A_1\|\,\|A_2\|$
since $c^2(m)u^2$ is negligible compared to $2c(m)u$, we get

$$
\|\delta A\| \le 2c(m)u\,\|A_1\|\,\|A_2\|
$$
For it to be backward stable, we want it in the form $\|\delta A\| \le C u \|A\|$

so if $\|A_1\|\,\|A_2\| \le K\|A\|$ then $\|\delta A\| \le 2c(m)u\,\|A\|\,K$
So we get
$$
\|A_1\|\,\|A_2\| \le K\|A\| \quad \text{where K not too large}
$$

or equivalently $\frac{\|\delta A\|}{\|A\|} \le 2c(m)u\left(\frac{\|A_1\|\,\|A_2\|}{\|A\|}\right)$
So we want $\frac{\|A_1\|\,\|A_2\|}{\|A\|}$ to be sufficiently small, probably O(1)

Same thing but written:
![[Pasted image 20260407210412.png]]
## Problem 6

Let $A \in \mathbb{R}^{m\times m}$ be symmetric and positive definite  
### a)
Let $X \in \mathbb{R}^{m\times m}$ be nonsingular and $X^{T}AX=B$
then $B^{T}=(X^{T}AX)^{T}=X^{T}A^{T}X=X^{T}AX=B$  so $B$ is symmetric 

Let $x \in \mathbb{R}^{m}$, where x is not the 0 vector 
let $Xx=y$, y cannot be the 0 vector because X is nonsingular and $x^{T}X^{T}=(Xx)^{T}=y^{T}$ 
Then $x^{T}Bx = x^{T}X^{T}AXx = y^{T}Ay$
Since $y \in \mathbb{R}^{m}$ and A is positive definite, then $y^{T}Ay \gt 0$ so 
$x^{T}Bx > 0 \ \forall x \ne 0$   

### b)
Let B = A(j:k, j:k) where $1 \le j \le k \le m$  Since A^T=A, know that $A_{f,g}=A_{g,f} \ \forall f, g \le m$ so then for all elems in B, $B_{h,i}=A_{j+h,j+i}=A_{j+i,j+h}=B_{i,h}$ so then $B=B^{T}$ so it is symmetric

Since A is positive definite, we know $\forall x \ne 0 \in \mathbb{R}^{m}, Ax \ne 0$
So pick x st $x_{1}=...=x_{j-1}=x_{k+1}=...=x_{m}=0$ and $x_{i} \ne 0$ where $j \le i \le k$, then
and call $y=[x_{j}...x_{k}]^{T}$
$x^{T}Ax$  is equivalent to $y^{T}By$ since $x^{T}$ eliminates all of the rows not in B and x eliminates all the cols not in B 
And since $x^{T}Ax \gt 0$, $y^{T}By \gt 0$ so B is positive definite

