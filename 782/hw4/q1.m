function [A,b] = make_matrix(m, n)
    pts =  linspace(0,1, m)';
    A= ones(m, n);
    for j = 2:n
        A(:, j) = pts .* A(:, j-1); 
    end
    
    b = exp(sin(4 * pts));

end

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
exact_xn = 2.006787453080206e+03;

% Part 1
fprintf("Part 1) \n")

% Test
[A, b] = make_matrix(10, 5);
lhs = A' * A;
rhs = A' * b;
L = chol(lhs, "lower");
U = L';
y = forsub(L, rhs);
x = bacsub(U, y);
fprintf("Test case: \n")
xn = x(5);
disp(xn);

try
    [A, b] = make_matrix(100, 15);
    lhs = A' * A;
    rhs = A' * b;
    L = chol(lhs, "lower");
    U = L';
    y = forsub(L, rhs);
    x = bacsub(U, y);
    fprintf("Actual: \n")
    xn = x(15);
    disp(xn);
    sig_figs = -log10(abs(xn - exact_xn) / abs(exact_xn));
    fprintf("Sig figs: %.2f\n", sig_figs);
catch
    fprintf("Cannot run Chol because of conditioning/positive definite\n")
end
% Part 2
fprintf("Part 2) \n")
[A, b] = make_matrix(10, 5);
[Q, R] = qr(A, 0);
rhs = Q' * b;
x = bacsub(R, rhs);
fprintf("Test case: \n");
xn = x(5);
disp(xn);

[A, b] = make_matrix(100, 15);
[Q, R] = qr(A, 0);
rhs = Q' * b;
x = bacsub(R, rhs);
fprintf("Actual: \n");
xn = x(15);
disp(xn);
sig_figs = -log10(abs(xn - exact_xn) / abs(exact_xn));
fprintf("Sig figs: %.2f\n", sig_figs);

fprintf("Part 3) \n")
[A, b] = make_matrix(100, 15);
[U, S, V] = svd(A, 0);
x = V * (S \ (U' * b));
fprintf("Actual: \n");
xn = x(15);
disp(xn);
sig_figs = -log10(abs(xn - exact_xn) / abs(exact_xn));
fprintf("Sig figs: %.2f\n", sig_figs);

% Part 4
fprintf("Part 4) \n")
[A, b] = make_matrix(100, 15);
x = A \ b;
fprintf("Actual: \n");
xn = x(15);
disp(xn);
sig_figs = -log10(abs(xn - exact_xn) / abs(exact_xn));
fprintf("Sig figs: %.2f\n", sig_figs);