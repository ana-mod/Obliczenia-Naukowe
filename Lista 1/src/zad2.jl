#Anna Modrzejewska
#236642
#Lista 1. Zadanie 2. 
println("Epsilon Float 16 z wzoru Kahana: ", Float16(3) * (Float16(4) / Float16(3) - Float16(1)) - Float16(1))
println("Wartość wyrażenia eps(Float16): ", eps(Float16))
println("Epsilon Float 32 z wzoru Kahana: ", Float32(3) * (Float32(4) / Float32(3) - Float32(1)) - Float32(1))
println("Wartość wyrażenia eps(Float32): ", eps(Float32))
println("Epsilon Float 64 z wzoru Kahana: ", Float64(3) * (Float64(4) / Float64(3) - Float64(1)) - Float64(1))
println("Wartość wyrażenia eps(Float64): ", eps(Float64))