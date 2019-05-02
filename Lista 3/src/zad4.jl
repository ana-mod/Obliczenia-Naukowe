#Anna Modrzejewska
#236642
#zadanie 4. lista 3.
using Roots

f1 = x::Float64 -> sin(x) - (0.5 * x)^(2.0);
f1p = x::Float64 -> cos(x) - (0.5 * x)

bisection = mbisekcji(f1, 1.5, 2.0, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5))
netwon = mstycznych(f1, f1p, 1.5, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5), 1000)
secant = msiecznych(f1, 1.0, 2.0, 0.5 * 10.0^(-5), 0.5 * 10.0^(-5), 1000)

println("m. bisekcji: ", bisection)
println("m. Newtona: ", netwon)
println("m. siecznych: ", secant)
