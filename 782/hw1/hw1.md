
## 2
### a)
$||x_{1} + x_{2}||_{2}^{2} = ||x_{1}||^{2}_{2}+2\langle x_{1}, x_{2} \rangle +||x_{2}||^{2}_{2}$ since $x_{1}$ and $x_{2}$ are orthogonal, $\langle x_{1}x_{2}\rangle =0$ so $= ||x_{1}||^{2}_{2}+ ||x_{2}||^{2}_{2}$
So both are the same

### b)
Proven base case n=2
Inductive hypothesis: true for n orthogonal vecs $\{x_{1}...x_{n}\}$
WTS true for n+1 orthogonal vecs $\{x_{1}...x_{n} \ x_{n+1}\}$
Since we know $||x_{1}||^{2}_{2}+...+ ||x_{n}||^{2}_{2}=||x_{1}+...x_{n}||^{2}_{2}$, 
Let $x=x_{1}+...x_{n}$ so now we need to show $||x+x_{n+1}||^{2}_{2}=||x||^{2}_{2}+||x_{n+1}||^{2}_{2}$ and since we have this already from part a, we know this is true if $x$ and $x_{n+1}$ are orthogonal 
Proving $x$ and $x_{n+1}$ are orthogonal:
	Using inner products we know $\langle x, x_{n+1} \rangle = \langle x_{1}+...+x_{n}, x_{n+1} \rangle = \langle x_{1}, x_{n+1} \rangle + ... + \langle x_{n}, x_{n+1} \rangle$
		Since we know that $x_{n+1}$ is orthogonal to $\{x_{1}...x_{n}\}$, $\langle x_{i}, x_{n+1} \rangle=0$ 
	So the sum $=0$ so $x$ and $x_{n+1}$ are orthogonal

Since they are orthogonal, we can now apply our result from a to complete our inductive step

## 3
$S^T=-S$
### a) WTS I-S is nonsingular
If 0 is an eigenvalue, then a matrix is singular
Proof by contradiction, let 0 be an eigenvalue for I-S
So $\exists x \in \mathbb{R}^{m}$ where $x \ne 0$ st $(I-S)x=0$ so $x-Sx=0$ so $Sx=x$. This implies that 1 is an eigenvalue of S but since we know that S is skew-symmetric, we know that its eigenvalues are imaginary of 0 so 1 cannot be an eigenvalue therefore contradiction. 
So 0 is not an eigenvalue for $I-S$ so $I-S$ is nonsingular

### b)
WTS $Q=(I-S)^{-1}(I+S)$ is orthogonal ie $Q^T=Q^{-1}$ so

$QQ^T=(I-S)^{-1}(I+S)((I-S)^{-1}(I+S))^{T}$
$=(I-S)^{-1}(I+S)(I+S)^T(I-S)^{-1T}$  
$=(I-S)^{-1}(I+S)(I+S^T)(I-S^T)^{-1}$  
$=(I-S)^{-1}(I+S)(I-S)(I+S)^{-1}$  
Since $(I+S)(I-S)=I-S^{2} = (I-S)(I+S)$ we can commute them so
$=(I-S)^{-1}(I-S)\quad * \quad (I+S)(I+S)^{-1}$  
$=I * I = I$

$Q^TQ=((I-S)^{-1}(I+S))^{T}(I-S)^{-1}(I+S)$
$=(I+S)^T(I-S)^{-1T}(I-S)^{-1}(I+S)$  
$=(I+S^T)(I-S^T)^{-1}(I-S)^{-1}(I+S)$  
$=(I-S)(I+S)^{-1}(I-S)^{-1}(I+S)$  
Since $(I+S)$ and $(I-S)$ commute, their inverses must compute so $(I+S)^{-1}$ and $(I-S)^{-1}$ commute 
$=(I-S)(I-S)^{-1}\quad * \quad (I+S)^{-1}(I+S)$  
$=I * I = I$

Therefore $Q^{T}Q=QQ^{T}=I$ so $Q^{T}=Q^{-1}$
## 4
### a)
Rank of $\vec{u}\vec{v}^T$

Let $\vec{u} = (u_1, \dots, u_m)^T \in \mathbb{R}^m$ and $\vec{v} = (v_1, \dots, v_m)^T \in \mathbb{R}^m$. Then:
$\vec{u}\vec{v}^T = \begin{pmatrix} u_1 \vec{v}^T \\ \vdots \\ u_m \vec{v}^T \end{pmatrix}$ where $u_i \vec{v}^T = (u_i v_1, \dots, u_i v_m)$.
This means that every row is a multiple of $\vec{v}^T$. So it can be row reduced to a matrix with 1 row filled and the rest 0, which makes the matrix have rank $= 1$.

### b)
Contrapositive: $\vec{v}^T \vec{u} = -1 \implies A$ is singular

Let $A = I + \vec{u}\vec{v}^T$.
Assume $\vec{v}^T \vec{u} = -1$ and $\vec{u} \neq \vec{0}$.
$A\vec{u} = (I + \vec{u}\vec{v}^T)\vec{u} = \vec{u} + \vec{u}(\vec{v}^T\vec{u}) = \vec{u} - \vec{u} = \vec{0}$.
Since $A\vec{u} = \vec{0}$ where $\vec{u} \neq \vec{0}$, so $A$ is singular.

### c)
Contrapos: $A$ is singular $\implies \vec{v}^T \vec{u} = -1$

Assume $A$ is singular. Then there exists $\vec{x} \neq \vec{0}$ such that $A\vec{x} = \vec{0}$.
$A\vec{x} = \vec{0} \implies (I + \vec{u}\vec{v}^T)\vec{x} = \vec{0} \implies \vec{x} + \vec{u}(\vec{v}^T\vec{x}) = \vec{0} \implies \vec{x} = -(\vec{v}^T\vec{x})\vec{u}$.
Since $(\vec{v}^T\vec{x})$ is a scalar, $\vec{x} = \lambda \vec{u}$ where $\lambda = -\vec{v}^T\vec{x}$.
Since $\vec{x},\vec{v} \neq \vec{0}$, $\lambda \neq 0$ which means $\vec{u} \neq \vec{0}$ (sanity check)
Substitute $\vec{x} = \lambda \vec{u}$ back into the equation:
$A(\lambda \vec{u}) = \lambda(A\vec{u}) = 0 \implies A\vec{u} = 0$ (since $\lambda \neq 0$).
$(I + \vec{u}\vec{v}^T)\vec{u} = \vec{u} + \vec{u}(\vec{v}^T\vec{u}) = \vec{0}$
$\vec{u}(1 + \vec{v}^T\vec{u}) = \vec{0}$
Since $\vec{u} \neq \vec{0}$, then $1 + \vec{v}^T\vec{u} = 0 \implies \vec{v}^T\vec{u} = -1$.

Let $A^{-1}=I-\frac{1}{1+\vec{v}^{T}\vec{u}}\vec{u}\vec{v}^{T}$ WTS $A^{-1}A=I=AA^{-1}$
$(I+\vec{u}\vec{v}^{T})(I-\frac{1}{1+\vec{v}^{T}\vec{u}}\vec{u}\vec{v}^{T})$

Arrows omitted for clarity 
![[Pasted image 20260201165113.png]]

## 5
$\|\cdot\|_W$ is a vector norm

Given $\|\cdot\|$ is a vector norm and $W \in \mathbb{R}^{m \times m}$ is non-singular. Define $\|\vec{x}\|_W = \|W\vec{x}\|$.

1.  Positive:
    Since $\vec{x} \in \mathbb{R}^m$ and $W \in \mathbb{R}^{m \times m}$, let $\vec{y} = W\vec{x}$ ($y\in \mathbb{R}^{m})$.  
    $\|\vec{x}\|_W = \|W\vec{x}\| = \|\vec{y}\|$ and since $\|\cdot\|$ is a vector norm $\|\vec{y}\|\ge 0$
    Additionally, since $W$ is non-singular, $W\vec{x} = \vec{0} \iff \vec{x} = \vec{0}$.
    So $\|\vec{x}\|_W = \|W\vec{x}\| = \|\vec{y}\| =0 \iff \|\vec{y}\| = 0 \iff \vec{x} = \vec{0}$.

2.  Addition
    Let $\vec{x}, \vec{y} \in \mathbb{R}^m$.
    $\|\vec{x} + \vec{y}\|_W = \|W(\vec{x} + \vec{y})\| = \|W\vec{x} + W\vec{y}\|$.
    Since $\|\cdot\|$ is a vector norm:
    $\|W\vec{x} + W\vec{y}\| \le \|W\vec{x}\| + \|W\vec{y}\| = \|\vec{x}\|_W + \|\vec{y}\|_W$.

3.  Scalar mult
    Let $\lambda \in \mathbb{R}$.
    $\|\lambda \vec{x}\|_W = \|\lambda W \vec{x}\|$ and since $\|\cdot\|$ is a vector norm:
    $= |\lambda| \|W\vec{x}\| = |\lambda| \|\vec{x}\|_W$.
    $\therefore \|\cdot\|_W$ is a vector norm.
    

## 6
### a)
$\|\vec{x}\|_\infty \le \|\vec{x}\|_2$

Let $\vec{x} = (n_1, n_2, \dots, n_m)$. Let $n_j = \max\{n_1, \dots, n_m\}$.

Then:
* $\|\vec{x}\|_\infty = n_j$
* $\|\vec{x}\|_2 = \sqrt{n_1^2 + \dots + n_j^2 + \dots + n_m^2}$

Since all elements are squared, all of $n_{i}$ is positive so, $n_{1}^{2} + \dots + n_{j}^{2} + \dots + n_m^2 \ge n_j^2$.
So, $\sqrt{n_1^2 + \dots + n_m^2} \ge \sqrt{n_j^2} = n_j$.

Therefore:
$\|\vec{x}\|_\infty \le \|\vec{x}\|_2$

### b)
$\|\vec{x}\|_2 \le \sqrt{m} \|\vec{x}\|_\infty$

Let $\vec{x} = (x_1, \dots, x_m)$ where $x_j = \max\{x_1, \dots, x_m\}$.

We know:
* $\|\vec{x}\|_2 = \sqrt{x_1^2 + \dots + x_m^2} \implies \|\vec{x}\|_2^2 = x_1^2 + \dots + x_m^2$
* $(\sqrt{m} \|\vec{x}\|_\infty)^2 = (\sqrt{m} x_j)^2 = m x_j^2$

Since $\forall i \in [1 .. m]$, $x_i \le x_j$:
$\|\vec{x}\|_2^2 \le x_j^2 + \dots + x_j^2$ ($m$ times) $= m x_j^2$

So:
$(\|\vec{x}\|_2)^2 \le (\sqrt{m} \|\vec{x}\|_\infty)^2 \implies \|\vec{x}\|_2 \le \sqrt{m} \|\vec{x}\|_\infty$

### c)
$\|A\|_{\infty} \le \sqrt{n} \|A\|_2$

Let $x \in \mathbb{R}$ therefore Ax is a vector
$||Ax||_{\infty} \le ||Ax||_{2}$ from prev $\le ||A||_{2}||x||_{2}$ by 2-norm rules 
$\le ||A||_{2}\sqrt{n}||x||_{\infty}$ by prev

So now we have $||Ax||_{\infty} \le ||A||_{2}\sqrt{n}||x||_{\infty}$ which implies
$\frac{||Ax||_{\infty}}{||x||_{\infty}} \le \sqrt{n}||A||_{2}$  
and since $||A||_{\infty} =  sup \frac{||Ax||_{\infty}}{||x||_{\infty}}$, $||A||_{\infty} \le \sqrt{n}||A||_{2}$
## 7
### a)
![[Pasted image 20260131225322.png]]
![[Pasted image 20260131225348.png]]
![[Pasted image 20260131225403.png]]
![[Pasted image 20260131225422.png]]
![[Pasted image 20260131225445.png]]

### b) 
$X = X^{T}=X^{-1}$ 
Since XTX is a diagonalized matrix, this means that XTX has the eigenvalues as its values so X has eigenvectors as its elements