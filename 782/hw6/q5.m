A = [5 1 3; 1 2 1; 2 4 3];
H = [5 -7/sqrt(5) 1/sqrt(5); -sqrt(5) 24/5 13/5; 0 -2/5 1/5]

H_pred = hess(A)
err = abs(H - H_pred)
