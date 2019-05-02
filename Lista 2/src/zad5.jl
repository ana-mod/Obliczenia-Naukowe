#Anna Modrzejewska
#236642
#Lista 2. Zadanie 5.

function pn32()
A=zeros(Float32, 41)
p0=Float32(0.01)
A[1]=p0
for i in 1:40
p0=p0+3*p0*(Float32(1.0)-p0)
A[i+1]=p0
end
return A
end

function pn32trunk()
B=zeros(Float32, 41)
p0=Float32(0.722)
B[11]=p0
for i in 1:10
B[i]=pn32()[i]
end
for i in 11:40
p0=p0+3*p0*(Float32(1.0)-p0)
B[i+1]=p0
end
return B
end

function pn64()
A=zeros(Float64, 41)
p0=Float64(0.01)
A[1]=p0
for i in 1:40
p0=p0+3*p0*(Float64(1.0)-p0)
A[i+1]=p0
end
return A
end

for i in 1:41
println("\$p\_\{", i-1, "\}\$ & ", pn64()[i], " & ", pn32()[i], " & ", pn32trunk()[i], "\\\\")
end

using Plots
eq=zeros(Float64, 40)
for i in 1:40
eq[i]=abs(pn64()[i+1]-pn32()[i+1])
end
plot(eq, label="|Float64-Float32|", color = :red)

#using Plots
#bq=zeros(Float32, 40)
#for i in 1:40
#bq[i]=abs(pn32trunk()[i+1]-pn32()[i+1])
#end
#plot(bq, label="|Float32Trunk-Float32|")
