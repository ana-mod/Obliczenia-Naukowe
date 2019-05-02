#Anna Modrzejewska
#236642
#Lista 1. Zadanie 5.

x = [2.718281828,-3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

real=Float64(-1.00657107000000*10.0^(-11))

function a32()
sum=Float32(0.0)
for i in 1:5
sum=sum+Float32(x[i])*Float32(y[i])
end
println("A, Float32: ", sum)
println("Error: ", abs(sum-real))
end

function a64()
sum=Float64(0.0)
for i in 1:5
sum=Float64(sum+Float64(x[i])*Float64(y[i]))
end
println("A, Float64: ", sum)
println("Error: ", abs(sum-real))
end

function b32()
sum=Float32(0.0)
i=5
while(i>0)
sum=Float32(sum+Float32(x[i])*Float32(y[i]))
i=i-1
end
println("B, Float32: ", sum)
println("Error: ", abs(sum-real))
end

function b64()
sum=Float64(0.0)
i=5
while(i>0)
sum=Float64(sum+Float64((x[i])*(y[i])))
i=i-1
end
println("B, Float64: ", sum)
println("Error: ", abs(sum-real))
end

function c32()
z=[0.0, 0.0, 0.0, 0.0, 0.0]
for i in 1:5
z[i]=Float32(x[i])*Float32(y[i])
end

sort!(z)

i=1
while(i<5 && z[i+1]<0)
z[1]=Float32(z[1])+Float32(z[i+1])
i=i+1
end

j=5
while(j>1 && j>i+1)
z[5]=Float32(z[5]+z[j-1])
j=j-1
end
println("C, Float32: ", Float32(z[5])+Float32(z[1]))
println("Error: ", abs(Float32(z[5])+Float32(z[1])-real))
end

function c64()
z=[0.0, 0.0, 0.0, 0.0, 0.0]
for i in 1:5
z[i]=Float64(x[i])*Float64(y[i])
end

sort!(z)

i=1
while(i<5 && z[i+1]<0)
z[1]=Float64(z[1])+Float64(z[i+1])
i=i+1
end

j=5
while(j>1 && j>i+1)
z[5]=Float64(z[5])+Float64(z[j-1])
j=j-1
end
println("C, Float64: ", Float64(z[5])+Float64(z[1]))
println("Error: ", abs(Float64(z[5])+Float64(z[1])-real))
end

function d32()
z=[0.0, 0.0, 0.0, 0.0, 0.0]
for i in 1:5
z[i]=Float32(x[i])*Float32(y[i])
end

sort!(z)

i=1
while(i<5 && z[i+1]>0)
z[1]=Float32(z[1])+Float32(z[i+1])
i=i+1
end

j=5
while(j>1 && j>i+1)
z[5]=Float32(z[5])+Float32(z[j-1])
j=j-1
end
println("D, Float32: ", Float32(z[5])+Float32(z[1]))
println("Error: ", abs(Float32(z[5])+Float32(z[1])-real))
end

function d64()
z=[0.0, 0.0, 0.0, 0.0, 0.0]
for i in 1:5
z[i]=Float64(x[i])*Float64(y[i])
end

sort!(z)

i=1
while(i<5 && z[i+1]>0)
z[1]=Float64(z[1])+Float64(z[i+1])
i=i+1
end

j=5
while(j>1 && j>i+1)
z[5]=Float64(z[5])+Float64(z[j-1])
j=j-1
end
println("D, Float64: ", Float64(z[5])+Float64(z[1]))
println("Error: ", abs(Float64(z[5])+Float64(z[1])-real))
end

a32()
a64()
b32()
b64()
c32()
c64()
d32()
d64()