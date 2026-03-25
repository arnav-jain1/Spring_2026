
f = @(x) sqrt(x+1) - 1;
% f = @(x) sqrt(x+1) - sqrt(x);
g = @(x) x / (sqrt(x+1) + 1);
% g = @(x) 1 / (sqrt(x+1) + sqrt(x))

for i= 1:5
    x = 100^i
    unstable = f(x);
    stable = g(x);
    fprintf("Unstable: %e\n", unstable);
    fprintf("Stable: %e\n", stable);
end

unstable = f(10^-16);
stable = g(10^-16);
fprintf("Unstable for x -> 0: %e\n", unstable);
fprintf("Stable for x -> 0: %.e\n", stable);