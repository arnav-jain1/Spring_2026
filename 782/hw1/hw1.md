
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