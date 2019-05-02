#Anna Modrzejewska
#236642
#Lista 1. Zadanie 4. 

#x=1.0+2.0^(-52)

#for k in 2:2.0^(52)-1
#if(Float64(x*(1/x))!=1)
#break
#end
#x=1.0+k*2.0^(-52)
#end

function f()
x=Float64(1.0)

while(x*Float64(1/x) == 1)
x = nextfloat(x)
end

println(x)
println(bits(x*Float64(1/x)))
println(bits(1.0))
end

f()