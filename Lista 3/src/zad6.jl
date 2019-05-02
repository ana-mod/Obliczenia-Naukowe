#Anna Modrzejewska
#236642
#zadanie 6. lista 3.

using Roots

f1 = x -> exp(1 - x) - 1 #function f1 formula
f1p = x -> (-1) * e^(1 - x) #derivative of f1

f2 = x -> x * exp(-x) #function f2 formula
f2p = x -> ((-1) * (e)^((-1) * x) * (x - 1)) #derivative of f2

delta = 10.0^(-5) #given accuracy
epsilon = 10.0^(-5) #given accuracy

# f1

bisection = mbisekcji(f1, 0.0, 2.0, delta, epsilon)
bisection2 = mbisekcji(f1, -200.0, 1000.0, delta, epsilon)
newton = mstycznych(f1, f1p, -1.0, delta, epsilon, 1000)
secant = msiecznych(f1, 0.0, 2.0, delta, epsilon, 1000)
newton2 = mstycznych(f1, f1p, -0.5, delta, epsilon, 1000)
secant2 = msiecznych(f1, -1.0, 1.0, delta, epsilon, 1000)

println("f1")
println(bisection)
println(bisection2)
println("newton -1.0 ", newton)
println("sieczne 0.0 2.0 ", secant)
println("newton -0.5 ", newton2)
println("sieczne -1.0 1.0 ", secant2)

# f2

bisection = mbisekcji(f2, -1.0, 1.0, delta, epsilon)
bisection2 = mbisekcji(f2, -200.0, 1000.0, delta, epsilon)
newton = mstycznych(f2, f2p, -0.5, delta, epsilon, 1000)
secant = msiecznych(f2, -1.0, 1.0, delta, epsilon, 1000)
newton2 = mstycznych(f2, f2p, -1.0, delta, epsilon, 1000)
secant2 = msiecznych(f2, 0.0, 2.0, delta, epsilon, 1000)

println("f2")
println(bisection)
println(bisection2)
println("newton -0.5 ", newton)
println("sieczne -1.0 1.0 ", secant)
println("newton -1.0 ", newton2)
println("sieczne 0.0 2.0 ", secant2)

println("f1, f2, bisection not in point") 
bisection2 = mbisekcji(f1, 0.1, 2.1, delta, epsilon)
println(bisection2)
bisection3 = mbisekcji(f2, -1.2, 0.8, delta, epsilon)
println(bisection3)

#prints roots of f1 using Newton method with different x0s
for i = 1.2:0.2:30
  print(i);
  print("\t");
  println(mstycznych(f1, f1p, i, delta, epsilon, 1000));
end

#prints roots of f2 using Newton method with different x0s
println("F2")

for i = 0.0:0.2:30
  print(i);
  print("\t");
  println(mstycznych(f2, f2p, i, delta, epsilon, 1000));
end
