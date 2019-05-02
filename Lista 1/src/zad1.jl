#Anna Modrzejewska
#236642
#Lista 1. Zadanie 2.

x16=Float16(1.0) 				#x stands for macheps 

while Float16(1.0+x16/2)>1.0
	x16=Float16(x16/2)
end

println(x16)
println(eps(Float16))

x32=Float32(1.0) 				 

while Float32(1.0+x32/2)>1.0
	x32=Float32(x32/2)
end
println(x32)
println(eps(Float32))

x64=Float64(1.0) 				 

while Float64(1.0+x64/2)>1.0
	x64=Float64(x64/2)
end
println(x64)
println(eps(Float64))

eta16=Float16(1.0)
while eta16/2>0.0
eta16=Float16(eta16/2)
end
println(eta16)
println(nextfloat(Float16(0.0)))

eta32=Float32(1.0)
while eta32/2>0.0
eta32=Float32(eta32/2)
end
println(eta32)
println(nextfloat(Float32(0.0)))

eta64=Float64(1.0)
while eta64/2>0.0
eta64=Float64(eta64/2)
end
println(eta64)
println(nextfloat(Float64(0.0)))

max16=Float16(1.0)
while !isinf(Float16(max16*2.0))
max16 = Float16(max16*2.0)
end
max16 = Float16(max16*Float16(2.0 - eps(Float16)))
println(max16)
println(realmax(Float16))

max32=Float32(1.0)
while !isinf(Float32(max32*2.0))
max32 = Float32(max32*2.0)
end
max32 = Float32(max32*Float32(2.0 - eps(Float32)))
println(max32)
println(realmax(Float32))

max64=Float64(1.0)
while !isinf(Float64(max64*2.0))
max64 = Float64(max64*2.0)
end
max64 = Float64(max64*Float64(2.0 - eps(Float64)))
println(max64)
println(realmax(Float64))