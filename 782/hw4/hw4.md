## Problem 1:
![[Pasted image 20260323180511.png]]
### a)
A is a vandermonde matrix where row i is $[1 \ t_{i} \ ... \ t_{i}^{n-1}]$ so then $A_{ij}=t_{i}^{j-1}$. To show, rank(A)=n, we WTS Ax=0 $\implies$ x is 0 vector

Let Ax=y. Then $y_{i}=\sum_{j=1}^{n} x_{j}A_{ij}=\sum^{n}_{j=1} x_{j}t_{i}^{j-1}$  
We can rewrite this as $f(t)=x_{1}+x_{2}t+...+x_{n}t^{n-1}=0$ 
If $x_{j}$ is not all 0s, then the max degree of the polynomial is n-1 so the max amount of roots is n-1. However, we know that $f(t_{i})=0 \ \forall i=1 ...m$.  since, m>n, this means there are more 0s than roots which is only possible if f(t)=0 so all $x_{j}$ must be 0, so x is the 0 vector


## Problem 2


## Problem 3
$f(x) = \frac{1-cos(x)}{x^{2}} = \frac{(1-cos(x))(1+cos(x))}{x^{2}(1+cos(x))}=\frac{1-cos^{2}(x)}{x^{2}(1+cos(x))}=\frac{sin^{2}(x)}{x^{2}(1+cos(x))}$ , this is stable because no catastrophic cancellation 


## Problem 4
$f(x) = (1+x)^{\frac{1}{3}}-1$

Know $a^{3}-b^{3}=(a-b)(a^{2}+ab+b^{2})$ 
so $a-b = (a^{3}-b^{3})/(a^{2}+ab+b^{2})$  

Let $a=(1+x)^\frac{1}{3}$ and b=1
so $f(x)= x/((1+x)^{\frac{2}{3}} + (1+x)^{\frac{1}{3}}+1)$  Again, no cancellation


$K(x) = | xf'(x)/f(x)|$, $f'(x)=\frac{1}{3}(1+x)^{-\frac{2}{3}}$  
so $K(x) = x\frac{1}{3}(1+x)^{-\frac{2}{3}}/((1+x)^{\frac{1}{3}}-1)$  
Using taylor expansion around x=0, we can approx $(1+x)^{\frac{1}{3}}\approx 1 + \frac{1}{3}x$ 
To get $K(x) \approx x\frac{1}{3}(1+x)^{-\frac{2}{3}}/(\frac{1}{3}x)=(1+x)^{-\frac{2}{3}}$  
and limit of that as x approaches 0 is 1 so it is stable


## Problem 5
Code
```matlab
f = @(x) sqrt(x+1) - 1;
g = @(x) x / (sqrt(x+1) + 1);
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
```

Output:
```

x =

   100

Unstable: 9.049876e+00
Stable: 9.049876e+00

x =

       10000

Unstable: 9.900500e+01
Stable: 9.900500e+01

x =

     1000000

Unstable: 9.990005e+02
Stable: 9.990005e+02

x =

   100000000

Unstable: 9.999000e+03
Stable: 9.999000e+03

x =

   1.0000e+10

Unstable: 9.999900e+04
Stable: 9.999900e+04
Unstable for x -> 0: 0.000000e+00
Stable for x -> 0: 5e-17

```
Here we say that there was total cancellation for the unstable, we lost all precision but for stable we still have.

## problem 6