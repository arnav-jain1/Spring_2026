H1 = [1, 2, 3; 
      2, 3, 5; 
      0, 1, 1];

H2 = [1, 2, 3; 
      1, 0, 1; 
      0, -2, 2];

for k=1:50
    [Q1, R1] = qr(H1);
    H1 = R1 * Q1;

    [Q2, R2] = qr(H2);
    H2 = R2 * Q2;
end

fprintf("Calculated H1^(50): \n")
disp(H1)
fprintf("Actual evals for H1^(50): \n")
e_h1 = eig(H1)

fprintf("Calculated H2^(50): \n")
disp(H2)
fprintf("Actual evals for H2^(50): \n")
e_h2 = eig(H2)