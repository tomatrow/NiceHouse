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