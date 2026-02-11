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