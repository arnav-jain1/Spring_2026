# Ch 4
1. 
	a) No, 1 generates all of $\mathbb{Z}_{60}$ and 1 is not prime
	b) No U(8) is isomorphic to the Klein-4 group which is not cyclic
		Additionally, U(8) = {1, 3, 5, 7}. 1 does not generate, 3^2 mod 8 = 1 so 3 does not generate. 5^2 mod 8 = 1 so 5 does not generate.y^2 mod 8 = 1 so 7 does not generate.
		Therefore U(8) is not cyclic
	c) No, proof by contradiction. Let $\mathbb{Q} = <a>$ 
		Then $\forall x \in \mathbb{Q}, x= na$ where $n \in \mathbb{Z}$. Since $a \in \mathbb{Q}, a= \frac{p}{q}$ where $p,q \in \mathbb{Z}$ and gcd(p,q)=1. Let x = P where P is a prime bigger than any prime factor of p. Then $P=\frac{np}{q}$, since n is an integer, this would imply that P has factors which it can't since we chose it to be a prime. Therefore contradiction
	d) No look at U(8) from part b. It is not cyclic but every subgroup is cyclic
	e) No. Assume group G has finite amount of subgroups. If one of the subgroups is infinite, then it is isomorphic to $\mathbb{Z}$ and therefore has infinite subgroups so if G has finite amount of subgroups, the size of the subgroups must be finite therefore G must be finite as well.
2. 
	a) 12
	b) inf
	c) inf
	d) 4
	e) 240/gcd(72,240)=240/24=10
	f) gcd(312,471)=gcd(312,159)=gcd(159,153)=gcd(6,153)=gcd(6, 3)=3 so 471/3=157
3. 
	a) all mult of 7 ie $\{7n : n \in \mathbb{Z}\}$ 
	b) {15, 6, 21, 3, 18, 9, 12, 0}
	c) 
		<0>= {0}
		<1>= {0, ... , 11}
		<2>= {0, 2, 4, 6, 8, 10}
		<3>= {0, 3, 6, 9}
		<4>= {0, 4, 8}
		<6>= {0, 6}
	d)
		<0>= {0}
		<1>= {0, ... , 59}
		<2>= {0, 2, 4, 6, 8 ... 58}
		<3>= {0, 3, 6, 9 ... 57}
		<4>= {0, 4, 8 ... 56}
		<5>= {0, 5 ... 55}
		<6>= {0, 6 ... 54}
		<10>= {0, 10 ... 50}
		<12>= {0, 12 ... 48}
		<15>= {0, 15 ... 45}
		<20>= {0, 20, 40}
		<30>= {0, 30}
	e) Trivial subgroups, {0} and $\mathbb{Z}_{13}$
	f)
		<0>= {0}
		<1>= {0, ... , 47}
		<2>= {0, 2, 4, 6, 8 ... 46}
		<3>= {0, 3, 6, 9 ... 45}
		<4>= {0, 4, 8 ... 44}
		<6>= {0, 6 ... 42}
		<8>= {0, 6 ... 40}
		<12>= {0, 12, 24, 36}
		<15>= {0, 16, 32}
		<24>= {0, 24}
	g) {3, 9, 7, 1}
	h) {5, 7, 17, 13, 11, 1}
	i) $\{7^{n} : n \in \mathbb{Z}\}$  
	j) {i, -1, -i, 1}
	k) $\{(2i)^{n} : n \in \mathbb{Z}\}$  
	l) $\{\frac{1+i}{\sqrt{2}}, i, \frac{1+i}{\sqrt{2}}i, -1, -\frac{1+i}{\sqrt{2}}, -i, -\frac{1+i}{\sqrt{2}}i, 1\}$  
	m) $\{\pm 1, \frac{\pm 1 \pm i\sqrt{3}}{2}\}$ (6 total elems)
4. 
![[Pasted image 20260216210412.png]]
5. 
	|<1>| = |<17>| = |<5>| = |<13>| = |<7>| = |<11>| = 18
	|<2>| = |<16>| = |<4>| = |<14>| = |<8>| = |<10>| = 9
	|<3>| = |<15>| = 6
	|<6>| = |<12>| = 3
	|<9>| = 2
	|<0>| = 1
6. Elements $r_{90}, r_{180}, r_{270}$ which are rotations, $D_{1}, D_{2}$ which are diagonal flips, e which is stay same, V and H which are vertical and horizontal flips
	|<$r_{90}$>| = |<$r_{270}$>|= 4
	|<$r_{180}$>| = |<$D_{1}$>| = |<$D_{2}$>| = |<$V$>|= |<$H$>| = 2
	|\<e>| = 1
7. $Q_{8}$ = {1, -1, i, -i, j, =j, k, -k}
	<1>={1}
	<-1>={-1, 1}
	\<i>={i, -1, -i, 1}
	\<j>={j, -1, -j, 1}
	\<k>={k, -1, -k, 1}
8. U(30) = {1,7,11,13,17,19,23,29}
	<1> = {1}
	<7> = {1, 7, 19, 13}
	<11> = {1, 11}
	<13> = {1, 13, 19, 7}
	<17> = {1, 17, 19, 23}
	<19> = {1, 19}
	<23> = {1, 17, 19, 23}
	<29> = {1, 29}
	<11, 29> = {1, 11, 19, 29}


# Ch 6
1. Because if g has order 5 and h has order 7, By lagrange's theorem the order of a subgroup must divide the order of the group so 5 and 7 divide G and the smallest such number with 5 and 7 as factors is 35 so |G| >= 35
2. 1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60
3. False, let G= $\mathbb{Z}$ and H= {0}, the trivial subgroup. H has infinite index as we can take any element $x \in \mathbb{Z}$ and do x+{0}={x}
4. False, the subgroup $2\mathbb{Z}$ of $\mathbb{Z}$ has infinite order
5. 
	a) <8> = {0, 8, 16}, <8> + 1= {1, 9, 17}, <8> + 2, <8> + 3, ... <8> + 7. Left and right cosets the same since addition is commutative
	b) U(8) = {1, 3, 5, 7}, <3> = {3, 1}
		<3>
		<3> * 5 = {5, 15} = {5, 7}
		Again, left and right are same since mult is commutative
	c) 3Z, 3Z + 1, 3Z + 2. Left and right are same since addition is commutative
	d) $A_{4}$ is all even permutations and $S_{4}$ is all permutations. 
		So |$S_{4}$| = 24 and |$A_{4}$|=24/2=12
		SO there must be 2 cosets, the trivial one is itself.
		The other coset must be odd permutations. of 4 elements. This will be true for both left and right coset
		The cosets can written as $A_{4}$ and $(1,2)A_{4}$ for left and $A_{4}$ and $A_{4}(1,2)$  for right
	e) Same logic as before. 
		For left: $A_{n}$ and $(1,2)A_{n}$, even and odd permutations respectively
		For right: $A_{n}$ and $A_{n}(1,2)$, even and odd permutations respectively
	f) $D_{4}=$ {(1),(1234),(13)(24),(1432),(13),(24),(12)(34),(14)(23)}
		$|D_{4}|=8$ so index = $\frac{|S_{4}|}{|D_{4}|}= \frac{24}{8}=3$ so there are 3 cosets. We have one already
			Left: 
				$(12)D_{4} =$ {(12),(234),(1324),(143),(132),(124),(34),(1423)}
				$(14)D_{4} =$ {(14),(123),(1342),(243),(1243),(23),(134),(142)}
			Right:
				$D_{4}(12) =$ {(12),(134),(1423),(243),(34),(1324),(132),(124)}
				$D_{4}(14) =$ {(14),(123),(1342),(132),(1243),(23),(143),(142)}
	g) $\mathbb{T}$ is the set of all complex numbers such that their magnitude is 1
		The cosets of $\mathbb{T}$ in $\mathbb{C}^{*}$ would be $\{x \in \mathbb{C}^{*} : |x|=r\}$ where $r \in \mathbb{R}^+$  so there are uncountably infinite cosets. Also left and right cosets will be the same since abelian
	h) There are 8 cosets total (since |H|=3)
		Left:
			H= {(1),(123),(132)}
			(12)H={(12),(13),(23)}
			(14)H={(14),(1234),(1324)}
			(24)H={(24),(1423),(1342)}
			(34)H={(34),(1243),(1432)}
			(12)(34)H={(12)(34),(143),(243)}
			(13)(24)H={(13)(24),(142),(234)}
			(14)(23)H={(14)(23),(124),(134)}
		Right:
			H={(1),(123),(132)}
			H(12)={(12),(13),(23)}
			H(14)={(14),(1423),(1432)}
			H(24)={(24),(1243),(1324)}
			H(34)={(34),(1234),(1342)}
			H(12)(34)={(12)(34),(134),(234)}
			H(13)(24)={(13)(24),(124),(243)}
			H(14)(23)={(14)(23),(142),(143)}
6. The left cosets are all invertible matricies that have that specific determinant. For example let $H= SL_{2}(\mathbb{R})$ and let $X \in GL_{2}(\mathbb{R})$ with det(X)=x. Then the left coset XH= {N : det(N)=det(X)=x}.
	The index is therefore infinite (uncountably infinite since the determinant can be any number in $\mathbb{R}^*$) 
7. a=4 and n=15, they are coprime. $\phi(15)=4$ so $4^{4}=216$ and 216 mod 15 = 1 which verifies the statement $4^{4} \equiv 1\mod{15}$.
8. Theorem: $a^{p-1}\equiv 1 \text{mod }p$ if p prime. 
	Let the given be true. Let p=4n+3 be prime and $\exists$ a solution to x^2 $\equiv$ -1 mod p
		Then $a^{p-1}=a^{4n+2}=a^{2}a^{4n} \equiv -1(a^{4n}) = -1(a^{2})^{2n} \equiv -1(-1)^{2n}=-1$
		But then this implies that $a^{p-1}\equiv -1 \text{mod } p$ but the theorem states $a^{p-1}\equiv 1 \text{mod }p$ so this is a contradiction therefore the equation must not have a solution
