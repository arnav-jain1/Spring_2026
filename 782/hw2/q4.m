A=[1 2 3 4; 5 6 7 8; 9 10 11 12; 1 1 1 1; 3 2 1 0]


[U, S, V] = svd(A, 'econ');


rank = sum(diag(S) > 1e-5)
A_2_norm = max(S, [], 'all')

fprintf("The orthonormal basis of the range is the column vectors of the following matrix")
range_A= U(:, 1:rank)
fprintf("The orthonormal basis of the null space is the column vectors of the following matrix")
null_A = V(:, rank+1:end)