# Ch 18
## Problem 1
Let $z=a+b\sqrt{3}i \in \mathbb{Z}[\sqrt{3}i]$ where $a^{2}+3b^{2}=1$ 
Let $z_{2}=a-b\sqrt{3}i$
$zz_{2}=(a+b\sqrt{3}i)(a-b\sqrt{3}i)=a^{2}+ab\sqrt{3}i-ab\sqrt{3}i+3b^{2}=a^{2}+3b^{2}=1$    from given So then $zz_{2}=1$ so $z_{2}$ is the inverse of $z$

$a^{2}+3b^{2}=1 \implies a=\sqrt{1-3b^{2}}$, since b^2 is always positive, the only integer that keeps the inside of a square root is only positive if b=0. Then this means that a=1 or a=-1

## Problem 2

### 5
Norm(5)= 25 = 5 \* 5, Know that 2+i has norm of 5 so pick that
$\frac{5}{2+i}=5*\frac{2-i}{(2+i)(2-i)}=2-i$  so $5=(2-i)(2+i)$ 

### 1+3i
Norm(1+3i)=1^2+3^2=10
So we know that it can be factored into 2 numbers with norm of 2 and 5
Let a=1+i (the only other possibility is 1-i).
So $\frac{1+3i}{1+i}=\frac{(1+3i)(1-i)}{(1+i)(1-i)}=\frac{4+2i}{2}=2+i$   
So $(1+3i)=(1+i)(2+i)$ 

### 2
Norm(2)=4=2 \* 2
So let the first one be 1+i
$\frac{2}{1+i}=2\frac{1-i}{(1+i)(1-i)}=1-i$ 
So 2=(1-i)(1+i)

### 6+8i
6+8i=2(3+4i). We already factored 2 above so will skip that for now
Norm(3+4i)=25= 5 \* 5. Pick 2+i
$\frac{3+4i}{2+i}=\frac{(3+4i)(2-i)}{(2+i)(2-i)}=\frac{10+5i}{5}=2+i$    
So 6+8i=(1-i)(1+i)(2+i)(2+i)


## Problem 7
Define $\phi:\mathbb{F}(x) \rightarrow D = \{p(x)/q(x) : p(x),q(x)\in \mathbb{F[x]}\}$   
Let $a \in \mathbb{F}(x), a = [f(x),g(x)]$ where $f(x),g(x) \in \mathbb{F}[x]$
Def $\phi(a)=\phi[f(x),g(x)]=f(x)/g(x)$. Know that $[f(x),0] \notin \mathbb{F}(x)$  so $g(x) \ne 0$

Well def:
Let $[f_1(x),g_1(x)]=[f_2(x),g_2(x)]$ then $\phi[f_{1}(x), g_{1}(x)] = f_{1}(x)/g_{1}(x) = f_2(x)/g_2(x)$ we know because since they are the same equivalence class, that means that $f_1(x)/g_1(x)=f_2(x)g_2(x)$ which means they are the same frac $=\phi[f_2(x),g_2(x)]$ So this is well def

1-1:
Let $\phi[f_1(x)/g_1(x)]=\phi[f_2(x)/g_2(x)]$ 
Then $f_{1}(x)/g_{1}(x) = f_2(x)/g_{2}(x) \implies [f_1(x),g_1(x)]=[f_2(x),g_2(x)]$ by how the equivelence class is created which means that $\phi(a)=\phi(b) \implies a=b$ so we are done

Onto:
Let $z\in D$. $z = p(x)/q(x)$ which means that $\phi[p(x),q(x)]=z$ and we know $[p(x),q(x)] \in F(x)$ so it is onto

Homomorphism:
Let $a=[f_{1}(x),g_{1}(x)], b=f_{2}(x), g_{2}(x)$ 
$\phi(a+b)=\phi[\frac{f_{1}g_{2}(x)+f_{2}g_{1}(x)}{g_{1}g_{2}(x)}]=\frac{f_{1}g_{2}(x)+f_{2}g_{1}(x)}{g_{1}g_{2}(x)} = f_{1}(x)/g_{1}(x)+f_{2}(x)/g_{2}(x)=\phi(a)+\phi(b)$    So homomorphic
Multiplication is obvious, $\phi(ab)=f_{1}f_{2}(x)/g_{1}g_{2}(x)=\phi(a)\phi(b)$



For b we can use the same argument
Define $\phi:\mathbb{F}(x_{1}...x_{n}) \rightarrow D = \{p(x_{1}...x_{n})/q(x_{1}...x_{n}) : p(x_{1}...x_{n}),q(x_{1}...x_{n})\in \mathbb{F}(x_{1}...x_{n})\}$   
Let $a \in \mathbb{F}(x_{1}...x_{n}), a = [f(x_{1}...x_{n}),g(x_{1}...x_{n})]$ where $f(x_{1}...x_{n}),g(x_{1}...x_{n}) \in \mathbb{F}[x_{1}...x_{n}]$
Def $\phi(a)=\phi[f(x_{1}...x_{n}),g(x_{1}...x_{n})]=f(x_{1}...x_{n})/g(x_{1}...x_{n})$. Know that $[f(x_{1}...x_{n}),0] \notin \mathbb{F}(x_{1}...x_{n})$  so $g(x_{1}...x_{n}) \ne 0$


1-1:
Let $\phi[f_1(x_{1}...x_{n})/g_1(x_{1}...x_{n})]=\phi[f_2(x_{1}...x_{n})/g_2(x_{1}...x_{n})]$ 
Then $f_{1}(x_{1}...x_{n})/g_{1}(x_{1}...x_{n}) = f_2(x_{1}...x_{n})/g_{2}(x_{1}...x_{n})$ 
$\implies [f_1(x_{1}...x_{n}),g_1(x_{1}...x_{n})]=[f_2(x_{1}...x_{n}),g_2(x_{1}...x_{n})]$
by how the equivelence class is created which means that $\phi(a)=\phi(b) \implies a=b$ so we are done



Onto:
Let $z\in D$. $z = p(x_{1}...x_{n})/q(x_{1}...x_{n})$ which means that $\phi[p(x_{1}...x_{n}),q(x_{1}...x_{n})]=z$ and we know $[p(x_{1}...x_{n}),q(x_{1}...x_{n})] \in F(x_{1}...x_{n})$ so it is onto

Homomorphism:
Let $a=[f_{1}(x_{1}...x_{n}),g_{1}(x_{1}...x_{n})], b=f_{2}(x_{1}...x_{n}), g_{2}(x_{1}...x_{n})$ 
$\phi(a+b)=\phi[\frac{f_{1}g_{2}(x_{1}...x_{n})+f_{2}g_{1}(x_{1}...x_{n})}{g_{1}g_{2}(x_{1}...x_{n})}]$
$=\frac{f_{1}g_{2}(x_{1}...x_{n})+f_{2}g_{1}(x_{1}...x_{n})}{g_{1}g_{2}(x_{1}...x_{n})} = f_{1}(x_{1}...x_{n})/g_{1}(x_{1}...x_{n})+f_{2}(x_{1}...x_{n})/g_{2}(x_{1}...x_{n})=\phi(a)+\phi(b)$    So homomorphic
Multiplication is obvious 


# Ch 21

## Problem 1

![[Pasted image 20260429195205.png]]
## Problem 2
![[Pasted image 20260429195235.png]]

## Problem 3
![[Pasted image 20260429195251.png]]
## Problem 4
![[Pasted image 20260429195313.png]]

## Problem 5
![[Pasted image 20260429195333.png]]

## Problem 13
Let $\phi:\mathbb{Q}(\sqrt[4]{3}) \rightarrow \mathbb{Q}(\sqrt[4]{3}i)$. 
Let $x \in \mathbb{Q}(\sqrt[4]{3})$, $x=a+b\sqrt[4]{3}+c\sqrt[4]{9}+d\sqrt[4]{27}$  
Let $y \in \mathbb{Q}(\sqrt[4]{3}i)$, $y=e+(f\sqrt[4]{3}+g\sqrt[4]{9}+h\sqrt[4]{27})i$   where $a,b,c,d,e,f,g,h \in \mathbb{Q}$ 
Def $\phi(x)=\phi(a+b\sqrt[4]{3}+c\sqrt[4]{9}+d\sqrt[4]{27})=a+(b\sqrt[4]{3}+c\sqrt[4]{9}+d\sqrt[4]{27})i$
This is obviously well defined. 
Homomorphism:
$\phi(x+y)=(a+e)+(b+f)\sqrt[4]{3}+(c+g)\sqrt[4]{9}+(d+h)\sqrt[4]{27}x$
$=a+b\sqrt[4]{3}+c\sqrt[4]{9}+d\sqrt[4]{27}+e+f\sqrt[4]{3}+g\sqrt[4]{9}+h\sqrt[4]{27}=\phi(x)+\phi(y)$ 
Similarly, 
$\phi(xy)=(a+b\sqrt[4]{3}+c\sqrt[4]{9}+d\sqrt[4]{27})(e+f\sqrt[4]{3}+g\sqrt[4]{9}+h\sqrt[4]{27})=\phi(x)\phi(y)$ 


Know that {1, $\sqrt[4]{3}, \sqrt[4]{9}, \sqrt[4]{27}$} is a basis for $\mathbb{Q}\sqrt[4]{3}$ and {1, $\sqrt[4]{3}i, \sqrt[4]{9}i, \sqrt[4]{27}i$} is a basis for $\mathbb{Q}\sqrt[4]{3}i$ 
$\phi(1)=1, \phi(\sqrt[4]{3})=\sqrt[4]{3}i, \phi(\sqrt[4]{9})=\sqrt[4]{9}i, \phi(\sqrt[4]{27})=\sqrt[4]{27}i$
So this means that phi maps the basis of $\mathbb{Q}(\sqrt[4]{3})$ to the basis of $\mathbb{Q}(\sqrt[4]{3}i)$, so it must be 1-1 and onto (proof of this done in 590)


Hence they are isomorphic. They are obviously not equal because $\sqrt[4]{3}$ is in $\mathbb{Q}(\sqrt[4]{3})$ but not$\mathbb{Q}(\sqrt[4]{3}i)$
## Problem 15
No it is not a field. We know the theorem doesn't apply because $\mathbb{Z}$ is not a field.
Additionally this would add the roots of $x^{3}-2$ to the set. However we still know that the inverse of the nonzero and non 1 integers aren't in the set. For example 5^-1=1/5 is not in this set because it is not in the integers and it is not a multiple of one of the roots of that polynomial, so therefore the inverse of 5 isn't in the set so it isn't a field
## Problem 16
Let b be a root of f. Then $f(b)=0=b^{p}+a$ so $-b^{p}=a$ this means that $f(x)=x^{p}-b^{p}=(x-b)^p$ (can do this because p is prime).
This means that there is a singular root to f(x) which means that if $b \in \mathbb{F}$, then f(x) completely factors (or splits). If $b \notin \mathbb{F}$, then we want to show that f(x)=g(x)h(x) is not possible.

So let f(x)=g(x)h(x) where b is not in the field. Then we know that $g(x)=(x-b)^{k}$ where $k<p$ and $b^{k} \in \mathbb{F}$ Then by bezout, there exists a m and n st 1=mp+nk $\implies b=b^{mp}b^{nk}$ and since $b^{p},b^{k}\in \mathbb{F}, b \in \mathbb{F}$ which is a contradiction. 

So if f(x) factors, it must split. If it doesn't factor, it is irreducible