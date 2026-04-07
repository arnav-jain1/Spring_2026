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
A and b are floating point matricies and vectors because both of them can be represented by floating point numbers accurately. The minimum positive value in a Matlab double is $\approx 10^{-308}$ which is well under the minimum value of our matrix/vector, 1. The maximum number is $\approx 10^{308}$ which is well over the maximum value of our matrix/vector, 1352078. Additionally since there are no floating point numbers, each number in the matrix/vector can be represented perfectly by Matlab so they are floating point matricies and vectors.