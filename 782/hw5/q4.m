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


