#Anna Modrzejewska
#236642
#Lista 2. Zadanie 6.

function seq(p, c)
results=Float64[]
for i in 1:40
p=p^2+c
push!(results, p)
end
return results
end

array = Array[]
push!(array, seq(1.0, -2.0))
push!(array, seq(2.0, -2.0))
push!(array, seq(1.99999999999999, -2.0))
push!(array, seq(1.0, -1.0))
push!(array, seq(-1.0, -1.0))
push!(array, seq(0.75, -1.0))
push!(array, seq(0.25, -1.0))

for i in 1:7
println(array[i])
end
