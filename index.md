---
title: "Nice House"
layout: default
date: 2017-12-20 22:33:13 -0800
---

# Nice House

### Definitions 

Let $S$ be the minimal square that encloses the house. 
Let $A$ be the area of the house. 
Let $B = S \setminus A$ be whats left over, made up from $X,Y,Z$ in cw order starting from $180$ degrees.   

Let $p \in [0,1]$ be the proportion of $A$ in $S$.
Let $f$ from $S$ to $\mathbb{R}$ map subspaces to their square-footage. 

### Conclusions

Then $q = 1-p$ is the proportion of $B$ in $S$.
Then, $750 = f(A) = p*f(S)$. 
Now, the length of $S$ in feet is $\approx\sqrt{f(S)} = \sqrt{\frac{f(A)}{p}}$.

### Calculations 

Let the $length(S) = \alpha$.

##### The Length of $S$

*Lengths in pixels*

||X|Y|Z|S|
|:---:|:---:|:---:|:---:|
|**W**| 695 | 20 | 305 | 121 | 698 |
|**H**| 84 | 388 | 75 | 82 | 698 |

$$p = 1 - \frac{W(V)*H(V) + W(X)*H(X) + W(Y)*H(Y) + W(Z)*H(Z)}{W(S)*H(S)}$$

$$\approx 0.797$$

Then the length of a side of $S$ is about $30.676$ feet.

##### Specific Areas

|Upper Bedroom |Lower Bedroom|Living|Kitchen|Bath|
|:---:|:---:|:---:|:---:|
|**W**| 307 | 328 | 301 | 250 | 218 |
|**H**| 216 | 211 | 229 | 205 | 163 |



### Reference

```julia
X,Y,Z,S = (695,84),(20,388),(),()

```

<img src="https://s3-us-west-2.amazonaws.com/com.ajcaldwell.public/house.jpg" style='width:100%;' border="0" alt="Null">

