---
title: "Nice House"
layout: default
date: 2017-12-20 22:33:13 -0800
---

# Nice House

### Definitions 

Let $S$ be the minimal square that encloses the house. 
Let $A$ be the area of the house. 
Let $B = \frac{S}{A}$ be whats left over, made up from $X,Y,Z$ in cw order starting from $180$ degrees.

Let $p \in [0,1]$ be the proportion of $A$ in $S$.
Let $f$ from $S$ to $\mathbb{R}$ map subspaces to their square-footage. 

### Conclusions

Then $q = 1-p$ is the proportion of $B$ in $S$.
Then, $750 = f(A) = p*f(S)$. 
Now, the length of $S$ in feet is $\approx\sqrt{f(S)} = \sqrt{\frac{f(A)}{p}}$.

### Calculations 

*Lengths in pixels*

||X|Y|Z|S|
|:---:|:---:|:---:|:---:|
|**W**| 20 | 305 | 121 | 698 |
|**H**| 388 | 75 | 82 | 613 |

$$p = 1 - \frac{W(X)*H(X) + W(Y)*H(Y) + W(Z)*H(Z)}{W(S)*H(S)}$$

$$= 1 - \frac{20*388 + 305*75 + 121*82}{698*613}$$

$$\approx 0.905$$

Then the length of a side of $S$ is about $28.788$ feet.

### Reference

<img src="https://s3-us-west-2.amazonaws.com/com.ajcaldwell.public/house.jpg" style='width:100%;' border="0" alt="Null">

