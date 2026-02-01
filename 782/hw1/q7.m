

function func(n)
    T = zeros(n);
    X = zeros(n);

    for i= 1:n;
        for j= 1:n;

            if i==j
                T(i,j) = 4;
            elseif i==j+1
                T(i,j) = 1;
            elseif i+1==j
                T(i,j) = 1;
            end
            
            X(i,j) = sqrt(2/(n+1)) * sin ((i * j * pi) / (n+1));
        end
    end
    
    A = X * X;
    B = X * T * X;
    
    n
    A
    B
    T
    X
end

func(3)
func(5)
func(7)