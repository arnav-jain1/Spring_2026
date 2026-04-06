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

