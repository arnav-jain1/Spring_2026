
n = 6;
lambda_exact = @(j) 4 * (sin(j * pi / 14).^2);
col_vec = (1:n)'; 
evec_exact = @(j) sqrt(2 / 7) * sin((col_vec * j * pi) / 7);

T = gallery('tridiag', 6, -1, 2, -1);

for j = 1:n
    v = rand(6, 1);
    v_0 = v / norm(v);
    meu = lambda_exact(j);
    w = (T - meu * eye(6)) \ v_0;
    
    fprintf("Eigenvalue/vector %d:\n", j);
    calc_evec = w / norm(w)
    exact_evec = evec_exact(j)

    if sign(calc_evec(1)) ~= sign(exact_evec(1))
        calc_evec = -calc_evec;
    end
    diff_vec = exact_evec - calc_evec
    
    calc_eval = calc_evec.' * T * calc_evec

end