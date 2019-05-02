#Anna Modrzejewska
#236642
#Lista 2. Zadanie 4.

using Polynomials

p=[1, -210.0, 20615.0,-1256850.0,
      53327946.0,-1672280820.0, 40171771630.0, -756111184500.0,          
      11310276995381.0, -135585182899530.0,
      1307535010540395.0,     -10142299865511450.0,
      63030812099294896.0,     -311333643161390640.0,
      1206647803780373360.0,     -3599979517947607200.0,
      8037811822645051776.0,      -12870931245150988800.0,
      13803759753640704000.0,      -8752948036761600000.0,
      2432902008176640000.0]

Px=Poly(reverse(p))
px=poly([i for i in 1.0:20.0])
rootsPx=reverse(roots(Px))

for i in 1:20
println(rootsPx[i])
end

for i in 1:20
println("P(zk): ", abs(polyval(Px, rootsPx[i])), ", p(zk): ", abs(polyval(px, rootsPx[i])), ", diff: ", abs(i-rootsPx[i]))
end

p=[1, -210.0-2.0^(-23), 20615.0,-1256850.0,
      53327946.0,-1672280820.0, 40171771630.0, -756111184500.0,          
      11310276995381.0, -135585182899530.0,
      1307535010540395.0,     -10142299865511450.0,
      63030812099294896.0,     -311333643161390640.0,
      1206647803780373360.0,     -3599979517947607200.0,
      8037811822645051776.0,      -12870931245150988800.0,
      13803759753640704000.0,      -8752948036761600000.0,
      2432902008176640000.0]

Px=Poly(reverse(p))
px=poly([i for i in 1.0:20.0])
rootsPx=reverse(roots(Px))

for i in 1:20
println(rootsPx[i])
end

for i in 1:20
println(i,"&",rootsPx[i] , "&", abs(polyval(Px, rootsPx[i])), "&", abs(polyval(px, rootsPx[i])), "&", abs(i-rootsPx[i]), "\\\\")
end
