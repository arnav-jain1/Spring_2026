## Problem 1
![[Pasted image 20260415211140.png]]

## Problem 2
![[Pasted image 20260415211151.png]]


## Problem 3
![[Pasted image 20260415211200.png]]


## Problem 4
![[Pasted image 20260415211209.png]]
## Problem 5
Code:
```matlab
A = [5 1 3; 1 2 1; 2 4 3];
H = [5 -7/sqrt(5) 1/sqrt(5); -sqrt(5) 24/5 13/5; 0 -2/5 1/5]

H_pred = hess(A)
err = abs(H - H_pred)
```

Output:
```
H =

    5.0000   -3.1305    0.4472
   -2.2361    4.8000    2.6000
         0   -0.4000    0.2000


H_pred =

    5.0000   -3.1305    0.4472
   -2.2361    4.8000    2.6000
         0   -0.4000    0.2000


err =

   1.0e-15 *

         0    0.4441    0.6661
         0         0    0.8882
         0    0.8327    0.0833


```


## Problem 6
![[Pasted image 20260415211221.png]]