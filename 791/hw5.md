# Ch 11

## 13)
Take element $\frac{1}{2} + \mathbb{Z} = [\frac{1}{2}] \in \mathbb{Q}/\mathbb{Z}$, $[\frac{1}{2}]$ has order 2 because $\left[\frac{1}{2}\right]* \left[\frac{1}{2}\right]= [1] = \mathbb{Z}$ however no element in the rationals has order 2 because there is no elem in Q st a  + a = 0 other than 0 which has order 1 so it is not isomorphic to Q

## 14)
Canonical homomorphism: $\phi(g) = gN$ 
$Ker\phi = N$ because if $n \in n, \phi(n)=nN=N$  
![[Pasted image 20260310201247.png]]
Let H be a subgroup of G/N. Then $Let \ P =\phi^{-1}(H) = \{g \in G : \phi(g) \in H\}$
P is a group: 
	it has the identity elem e because H is as subgroup of G/N so N is in H and e is in N so e must be in P
	It has inverses: Let $g \in P$ then $gN \in H \implies g^{-1}N \in H$ because H is a subgroup so $g^{-1} \in P$
	Associative is obvious because $P \subseteq G$ and G is a group so P must be assoc

Order: Know that each $xN \in H$ has order |N| and there are |H| cosets total. Additionally each coset in H is disjoint so each coset has unique elements. Since P is all the unique elements in all of the cosets in H, then there are |H|\*|N| elements in P.
## 15)
Let $\Phi:G_{1}/H_{1} \rightarrow G_{2}/H_{2}$  be def by $\Phi(\bar{x})=\overline{\phi(x)}$.
This is a homomorphism because $\Phi(\bar{x}\bar{y})=\overline{\phi(xy)}=\overline{\phi(x)} \ \overline{\phi(y)}= \Phi(\bar{x})\Phi(\bar{y})$ 

well def: let $\bar{x}, \bar{y} \in G_{1}/H_{1}$ where $\bar{x} = \bar{y}$. This means $xy^{-1} \in H_{1}$ and therefore$\phi(xy^{-1})=\phi(x)\phi(y^{-1}) \in H_{2}$ (we can do this because phi is a homomorphism and $\phi(H_{1}) \subseteq H_{2}$ is given). So then $\phi(x)\phi(y^{-1}) \in H_{2} \implies \overline{\phi(x)} = \overline{\phi(y)}$ so well def

## 16)
![[Pasted image 20260311182124.png]]
Let $\Phi:G \rightarrow G/H \times G/K$ be def by $\Phi(g)=(gH,gK)$

Well def: Let $x,y\in G$ where x=y. Then $\Phi(x)=(xH,xK)=(yH,yK)=\Phi(y)$ 
This is a homomorphism because :
$\Phi(xy)=((xy)H,(xy)K)=(xHyH,xKyK)=(xH,xK)(yH,yK)=\Phi(x)\Phi(y)$ 
$Ker(\Phi)=\{g \in G : \Phi(g)=(H,K)\}$. Let $x \in Ker(\Phi)$. This means that we want xH=H and xK=K so $x\in H$ and $x \in K$ but the only element that satisfies that is e so $ker(\Phi) = \{e\}$ 

By first isomorphism thm $Ker\Phi$ is normal and $G/Ker(\Phi) \cong im{G}$. Since $Ker{\Phi} = \{0\}$, $im(G) \cong G$ and $im(G) \subset G/H \times G/K$ 

So G is isomorphic to a subgroup of $G/H \times G/K$


# Ch 13

## 1)
* Order 1: $\mathbb{Z}_{1}$
* Order 2: $\mathbb{Z}_{2}$
* Order 3: $\mathbb{Z}_{3}$
* Order 4: $\mathbb{Z}_{4}, \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
* Order 5: $\mathbb{Z}_{5}$
* Order 6: $\mathbb{Z}_{6}$
* Order 7: $\mathbb{Z}_{7}$
* Order 8: $\mathbb{Z}_{8}, \mathbb{Z}_{4} \times \mathbb{Z}_{2}, \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
* Order 9: $\mathbb{Z}_{9}, \mathbb{Z}_{3} \times \mathbb{Z}_{3}$
* Order 10: $\mathbb{Z}_{10}$
* Order 11: $\mathbb{Z}_{11}$
* Order 12: $\mathbb{Z}_{12}, \mathbb{Z}_{6} \times \mathbb{Z}_{2}$
* Order 13: $\mathbb{Z}_{13}$
* Order 14: $\mathbb{Z}_{14}$
* Order 15: $\mathbb{Z}_{15}$
* Order 16: $\mathbb{Z}_{16}, \mathbb{Z}_{8} \times \mathbb{Z}_{2}, \mathbb{Z}_{4} \times \mathbb{Z}_{4}, \mathbb{Z}_{4} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}, \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
* Order 17: $\mathbb{Z}_{17}$
* Order 18: $\mathbb{Z}_{18}, \mathbb{Z}_{6} \times \mathbb{Z}_{3}$
* Order 19: $\mathbb{Z}_{19}$
* Order 20: $\mathbb{Z}_{20}, \mathbb{Z}_{10} \times \mathbb{Z}_{2}$
* Order 21: $\mathbb{Z}_{21}$
* Order 22: $\mathbb{Z}_{22}$
* Order 23: $\mathbb{Z}_{23}$
* Order 24: $\mathbb{Z}_{24}, \mathbb{Z}_{12} \times \mathbb{Z}_{2}, \mathbb{Z}_{6} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
* Order 25: $\mathbb{Z}_{25}, \mathbb{Z}_{5} \times \mathbb{Z}_{5}$
* Order 26: $\mathbb{Z}_{26}$
* Order 27: $\mathbb{Z}_{27}, \mathbb{Z}_{9} \times \mathbb{Z}_{3}, \mathbb{Z}_{3} \times \mathbb{Z}_{3} \times \mathbb{Z}_{3}$
* Order 28: $\mathbb{Z}_{28}, \mathbb{Z}_{14} \times \mathbb{Z}_{2}$
* Order 29: $\mathbb{Z}_{29}$
* Order 30: $\mathbb{Z}_{30}$
* Order 31: $\mathbb{Z}_{31}$
* Order 32: $\mathbb{Z}_{32}, \mathbb{Z}_{16} \times \mathbb{Z}_{2}, \mathbb{Z}_{8} \times \mathbb{Z}_{4}, \mathbb{Z}_{8} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}, \mathbb{Z}_{4} \times \mathbb{Z}_{4} \times \mathbb{Z}_{2}, \mathbb{Z}_{4} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}, \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
* Order 33: $\mathbb{Z}_{33}$
* Order 34: $\mathbb{Z}_{34}$
* Order 35: $\mathbb{Z}_{35}$
* Order 36: $\mathbb{Z}_{36}, \mathbb{Z}_{18} \times \mathbb{Z}_{2}, \mathbb{Z}_{12} \times \mathbb{Z}_{3}, \mathbb{Z}_{6} \times \mathbb{Z}_{6}$
* Order 37: $\mathbb{Z}_{37}$
* Order 38: $\mathbb{Z}_{38}$
* Order 39: $\mathbb{Z}_{39}$
* Order 40: $\mathbb{Z}_{40}, \mathbb{Z}_{20} \times \mathbb{Z}_{2}, \mathbb{Z}_{10} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2}$
## 2)
200=2^3 * 5^2 
$\mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{5} \times \mathbb{Z}_{5}$ 
$\mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{2} \times \mathbb{Z}_{5^{2}}$ 
$\mathbb{Z}_{2^{2}} \times \mathbb{Z}_{2} \times \mathbb{Z}_{5} \times \mathbb{Z}_{5}$ 
$\mathbb{Z}_{2^{2}} \times \mathbb{Z}_{2} \times \mathbb{Z}_{5^{2}}$ 
$\mathbb{Z}_{2^{3}} \times \mathbb{Z}_{5} \times \mathbb{Z}_{5}$ 
$\mathbb{Z}_{2^{3}} \times \mathbb{Z}_{5^{2}}$ 

## 4)

### a)
$\mathbb{Z}_{12} \supset <2> \supset <4> \supset \{0\}$  because $\mathbb{Z}_{12} / <2> \cong \mathbb{Z}_{2}$, $<2> / <4> \cong Z_{2}$, $<4> / \{0\} \cong \mathbb{Z}_{3}$ 
$\mathbb{Z}_{12} \supset <2> \supset <6> \supset \{0\}$  because $\mathbb{Z}_{12} / <2> \cong \mathbb{Z}_{2}$, $<2> / <6> \cong Z_{3}$, $<6> / \{0\} \cong \mathbb{Z}_{2}$ 
$\mathbb{Z}_{12} \supset <3> \supset <6> \supset \{0\}$  because $\mathbb{Z}_{12} / <3> \cong \mathbb{Z}_{3}$, $<3> / <6> \cong Z_{2}$, $<6> / \{0\} \cong \mathbb{Z}_{2}$ 

### b)

$\mathbb{Z}_{48} \supset <2> \supset <4> \supset <8> \supset <16> \supset \{0\}$ because $\mathbb{Z}_{48}/<2> \cong \mathbb{Z}_{2}$, $<2>/<4> \cong \mathbb{Z}_{2}$, $<4>/<8> \cong \mathbb{Z}_{2}$, $<8>/<16> \cong \mathbb{Z}_{2}$, $<16>/\{0\} \cong \mathbb{Z}_{3}$

$\mathbb{Z}_{48} \supset <2> \supset <4> \supset <8> \supset <24> \supset \{0\}$ because $\mathbb{Z}_{48}/<2> \cong \mathbb{Z}_{2}$, $<2>/<4> \cong \mathbb{Z}_{2}$, $<4>/<8> \cong \mathbb{Z}_{2}$, $<8>/<24> \cong \mathbb{Z}_{3}$, $<24>/\{0\} \cong \mathbb{Z}_{2}$

$\mathbb{Z}_{48} \supset <3> \supset <6> \supset <12> \supset <24> \supset \{0\}$ because $\mathbb{Z}_{48}/<3> \cong \mathbb{Z}_{3}$, $<3>/<6> \cong \mathbb{Z}_{2}$, $<6>/<12> \cong \mathbb{Z}_{2}$, $<12>/<24> \cong \mathbb{Z}_{2}$, $<24>/\{0\} \cong \mathbb{Z}_{2}$


### c)

Let $Q_8=\{\pm1,\pm i,\pm j,\pm k\}$

$Q_8 \supset <i> \supset <-1> \supset \{1\}$ because $Q_8/<i> \cong \mathbb{Z}_{2}$, $<i>/<-1> \cong \mathbb{Z}_{2}$, $<-1>/\{1\} \cong \mathbb{Z}_{2}$

$Q_8 \supset <j> \supset <-1> \supset \{1\}$ because $Q_8/<j> \cong \mathbb{Z}_{2}$, $<j>/<-1> \cong \mathbb{Z}_{2}$, $<-1>/\{1\} \cong \mathbb{Z}_{2}$

$Q_8 \supset <k> \supset <-1> \supset \{1\}$ because $Q_8/<k> \cong \mathbb{Z}_{2}$, $<k>/<-1> \cong \mathbb{Z}_{2}$, $<-1>/\{1\} \cong \mathbb{Z}_{2}$


### d)

Let $D_4=\langle r,s \rangle$ be the dihedral group of order $8$, where $r$ is a rotation with $r^4=1$ and $s$ is a reflection with $s^2=1$.

$D_4 \supset <r> \supset <r^2> \supset \{1\}$ because $D_4/<r> \cong \mathbb{Z}_{2}$, $<r>/<r^2> \cong \mathbb{Z}_{2}$, $<r^2>/\{1\} \cong \mathbb{Z}_{2}$

$D_4 \supset \{1,r^2,s,r^2s\} \supset <r^2> \supset \{1\}$ because $D_4/\{1,r^2,s,r^2s\} \cong \mathbb{Z}_{2}$, $\{1,r^2,s,r^2s\}/<r^2> \cong \mathbb{Z}_{2}$, $<r^2>/\{1\} \cong \mathbb{Z}_{2}$


### e)
$A_3$ is the alternating group in $S_3$ and $e$ is the identity permutation.

$S_3 \times \mathbb{Z}_4 \supset A_3 \times \mathbb{Z}_4 \supset A_3 \times <2> \supset A_3 \times \{0\} \supset \{e\} \times \{0\}$

because $(S_3 \times \mathbb{Z}_4)/(A_3 \times \mathbb{Z}_4) \cong \mathbb{Z}_2$, $(A_3 \times \mathbb{Z}_4)/(A_3 \times <2>) \cong \mathbb{Z}_2$, $(A_3 \times <2>)/(A_3 \times \{0\}) \cong \mathbb{Z}_2$, $(A_3 \times \{0\})/(\{e\} \times \{0\}) \cong \mathbb{Z}_3$



### f)

$S_4 \supset A_4 \supset \mathbb{Z}_2 \times \mathbb{Z}_2 \supset <(12)(34)> \supset \{(1)\}$

because $S_4/A_4 \cong \mathbb{Z}_2$, $A_4/(\mathbb{Z}_2 \times \mathbb{Z}_2) \cong \mathbb{Z}_3$, $(\mathbb{Z}_2 \times \mathbb{Z}_2)/<(12)(34)> \cong \mathbb{Z}_2$, $<(12)(34)>/\{(1)\} \cong \mathbb{Z}_2$


### g)

For $n \ge 5$,

$S_n \supset A_n \supset \{e\}$

because $S_n/A_n \cong \mathbb{Z}_2$ and $A_n$ is simple for $n \ge 5$, so $A_n/\{e\} \cong A_n$

### h)
Q is infinitely divisible. For example, $Q  \supset Z \supset 2Z \supset 4Z \supset ...$ so it cant be broken into finite steps

## 7)
Let G be a torsion group so all elements of G has finite order and let G be finitely generated. 
Since all elements have a finite order, we know that G cannot be isomorphic to $\mathbb{Z} \times ... \times \mathbb{Z}$  for any length > 0 because Z has a subgroup that is infinite. So then using this in conjunction with the fundamental theorem of finitely generated abelian groups, 
$G \cong \mathbb{Z}_{p_{1}^{a_{1}}} \times ... \times \mathbb{Z}_{p_{n}^{a_{n}}}$   and since $\mathbb{Z}_{p_{i}^{a_{i}}}$ are finite, G must be finite as well. 

## 8)
![[Pasted image 20260311203942.png]]

Since G, H, K are finitely generated there is a unique decomposition such that
$G \cong \mathbb{Z}^{n} \times \mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}}$ 
$H \cong \mathbb{Z}^{m} \times \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}}$ 
$K \cong \mathbb{Z}^{k} \times \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,z}^{\,a_{3,z}}}$ 

So $G \times H \cong \mathbb{Z}^{n} \times \mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}} \times \mathbb{Z}^{m} \times \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}}$ 
$\cong \mathbb{Z}^{n+m} \times \mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}} \times \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}}$

Similarly $G \times K \cong \mathbb{Z}^{n+k} \times \mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}} \times \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,y}^{\,a_{3,y}}}$

Since they are isomorphic, the infinite and finite parts to line up. So $\mathbb{Z}^{n+m} \cong \mathbb{Z}^{n+k} \implies n+m = n+k \implies m=k \implies \mathbb{Z}^{m} \cong \mathbb{Z}^{k}$

Similarly $\mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}} \times \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}} \cong \mathbb{Z}_{p_{1,1}^{\,a_{1,1}}} \times ... \times \mathbb{Z}_{p_{1,x}^{\,a_{1,x}}} \times \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,y}^{\,a_{3,y}}}$
$\implies \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}} \cong \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,y}^{\,a_{3,y}}}$ since each decomposition is unique

So we have 
$\mathbb{Z}^{m} \cong \mathbb{Z}^{k}$ and $\mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}} \cong \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,y}^{\,a_{3,y}}}$
$\implies \mathbb{Z}^{m} \times \mathbb{Z}_{p_{2,1}^{\,a_{2,1}}} \times ... \times \mathbb{Z}_{p_{2,y}^{\,a_{2,y}}} \cong \mathbb{Z}^{k} \times \mathbb{Z}_{p_{3,1}^{\,a_{3,1}}} \times ... \times \mathbb{Z}_{p_{3,z}^{\,a_{3,z}}}$ 

So H and K are isomorphic


For counterexample, let $G= \mathbb{Z} \times \mathbb{Z} \times ...$ infinitely, $H= \mathbb{Z}$ and $K={0}$,
Then $G \times H \cong G \cong G \times K$ but H is not isomorphic to K

## 9)

Let G and H be solvable, then $\exists$ subnorm series for G (call it $\{G_{i}\}$) and H (call it $\{H_{i}\}$)  Then
$G_{n} \times H_{m} \supset G_{n-1} \times H_{m} \supset ... \supset \{e\} \times H_{m} \supset \{e\} \times H_{m-1} \supset ... \supset \{e\} \times \{e\}$ 
Where $G_{n}$ corresponds with $G_{i}$ and $H_{m}$ corresponds with $H_{i}$
Call this chain K

This is subnormal because any elem $G_{x}$ in the solvable series of G is in K like so: 
$\frac{G_{x} \times H_{m}}{G_{x-1} \times H_{m}} \cong G_{x} / G_{x-1} \times H_{m} / H_{m}$. This is abelian Because G is solvable and Hm/Hm is isomorphic to {e} which is abelian so we have a cross product between two abelian groups which is abelian

Again any elem $H_{y}$ in the solvable series of H is in Then for $\frac{{e} \times H_{y}}{{e} \times H_{y-1}} \cong {e} / {e} \times H_{y} / H_{y-1}$ which again is abelian because e/e is abelian and H is solvable 

so we have shown for any k, $K_{k}/K_{k-1}$ is abelian so K is solvable