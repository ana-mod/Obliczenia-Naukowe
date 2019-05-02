#Anna Modrzejewska
#236642
#zadanie 5. lista 3.
using Roots

f = x::Float64 -> 3.0*x-exp(x);

bisection1 = mbisekcji(f, 0.0, 1.0, 10.0^(-4), 10.0^(-4))
bisection2 = mbisekcji(f, 0.5, 0.65, 10.0^(-4), 10.0^(-4))
bisection3 = mbisekcji(f, 1.0, 2.0, 10.0^(-4), 10.0^(-4))
bisection4 = mbisekcji(f, 1.45, 1.75, 10.0^(-4), 10.0^(-4))

println(bisection1)
println(bisection2)
println(bisection3)
println(bisection4)
