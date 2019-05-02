#Anna Modrzejewska
#236642
#Lista 1. Zadanie 3. 

y = bits(Float64(1.0)) #Bitowa reprezentacja liczby 1.0
println(y)

z = 1.0+2.0^(-52) #Liczba oddalona od 1.0 o deltę z treści zadania
println(bits(Float64(z))) 

println(bits(nextfloat(1.0))) #Bitowa reprezentacja następnej liczby od 1.0

x=Float64(2.0-2.0^(-52)) #Liczba mniejsza od 2.0 o deltę z treści zadania
println(x)
println(bits(x))
println(bits(nextfloat(x))) 
println(bits(2.0))

a=bits(Float64(0.5))
println(a)
println(bits(Float64(0.5+2.0^(-53))))

b=bits(Float64(2.0))
println(b)
println(bits(Float64(2.0+2.0^(-51))))