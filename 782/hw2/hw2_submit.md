## 1
![[Pasted image 20260205114658.png]]
## 2
![[Pasted image 20260210211906.png]]
## 3
![[Pasted image 20260210211923.png]]
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
![[Pasted image 20260210212001.png]]
## 6
![[Pasted image 20260210212023.png]]
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