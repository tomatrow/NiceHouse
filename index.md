---
title: "Nice House"
layout: default
date: 2017-12-20 22:33:13 -0800
---

# Nice House

### Definitions 

Let $S$ be the minimal square that encloses the house. 
Let $p \in [0,1]$ be the proportion of $A$ in $S$.
Let $f$ from $S$ to $\mathbb{R}$ map subspaces to their square-footage. 

### Conclusions

Then, $750 = f(A) = p*f(S)$. 
Now, the length of $S$ in feet is $\approx\sqrt{f(S)} = \sqrt{\frac{f(A)}{p}}$.

So let $q = W(S)/length(S)$ be the ratio of pixel/foot.

### Calculations 

##### The Length of $S$

*Lengths in pixels*

||V|X|Y|Z|S|
|:---:|:---:|:---:|:---:|
|**W**| 695 | 20  | 305 | 121 | 698 |
|**H**| 84  | 388 | 75  | 82  | 698 |

$$p = 1 -  \frac{\sum_{T \in \{V,X,Y,Z\}}f(T)}{f(S)}$$

$$\approx 0.797$$

Then the length of a side of $S$ is about $30.676$ feet.

##### Specific Areas

||Upper Bedroom |Lower Bedroom|Living|Kitchen|Bath|
|:---:|:---:|:---:|:---:|
|**W**| 307 | 328 | 301 | 250 | 218 |
|**H**| 216 | 211 | 229 | 205 | 163 |

### Results 

>Upper Bedroom: (13.4929, 9.4933)  
>Lower Bedroom: (14.4158, 9.2736)  
>Livingroom: (13.2291, 10.0647)  
>Kitchen: (10.9877, 9.0099)  
>Bathroom: (9.5812, 7.164)  

### Reference

```julia
# functions 
H(T) = T[2]
W(T) = T[1]
ξ(a) = round(a*10^4)/10^4
W̄ = ξ∘W
H̄ = ξ∘H
f(T) = H(T)*W(T)

# input
V,X,Y,Z,S = (695,84),(20,388),(305,75),(121,82),(698,698)
ub,lb,l,k,b = (307, 216), (328, 211), (301, 229), (250, 205), (218, 163)

p = 1 - mapreduce(f,+,[V,X,Y,Z])/f(S) # proportian of house in S
q = sqrt(750/p) / W(S) # ratio of foot/pixel

t(T) = ξ(W(T)*q),ξ(H(T)*q) # transform pixel box into rounded feet box

names = ["Upper Bedroom", "Lower Bedroom", "Livingroom", "Kitchen", "Bathroom"]
rooms = ub,lb,l,k,b
output = mapreduce(x->"$(x[2]): $(t(x[1]))",(a,b)->"$(a)\n$(b)",zip(rooms,names))

println(output)
#=
Upper Bedroom: (13.4929, 9.4933)
Lower Bedroom: (14.4158, 9.2736)
Livingroom: (13.2291, 10.0647)
Kitchen: (10.9877, 9.0099)
Bathroom: (9.5812, 7.164)
=#
```

<img src="https://s3-us-west-2.amazonaws.com/com.ajcaldwell.public/house.jpg" style='width:100%;' border="0" alt="Null">

