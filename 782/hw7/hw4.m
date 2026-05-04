T = gallery('tridiag', 6, -1, 2, -1);

lambda_exact = @(j) 4 * (sin(j * pi / 14).^2);
evals_exact = [lambda_exact(1); lambda_exact(2); lambda_exact(3); lambda_exact(4); lambda_exact(5); lambda_exact(6)];
expected_A = diag(evals_exact);
disp(full(expected_A))
A = T;
for k=1:50
    [Q, R] = qr(A);
    A = R * Q;
    if mod(k, 10) == 0
        fprintf("Iteration %d:\n", k);
        disp(full(A));
    end
end

A = T;
for k=1:3
    a_5 = A(5,5);
    b_5 = A(5,6);
    a_6 = A(6,6);
    
    delta = (a_5 - a_6) / 2;
    
    if delta == 0
        sgn = 1;
    else
        sgn = sign(delta);
    end
    meu = a_6 - (sgn * b_5^2) / (abs(delta) + sqrt(delta^2 + b_5^2));

    [Q, R] = qr(A - meu * eye(6));
    A = R * Q + meu * eye((6));
    
    fprintf("Iteration %d:\n", k);
    disp(full(A));
end