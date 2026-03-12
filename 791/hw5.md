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

## 2)

## 4)

## 7)

## 8)

## 9)
