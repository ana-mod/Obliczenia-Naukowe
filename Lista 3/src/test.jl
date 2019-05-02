#Anna Modrzejewska
#236642
#testy do zadań 1-3 z listy 3.

using Roots
println("metoda bisekcji:  ",mbisekcji(x -> x^2 - 9, 1.5, 6.5, 5.0e-6,5.0e-6))
println("metoda bisekcji:  ",mbisekcji(x -> x^4 - 16, 5.0, 6.5, 5.0e-6,5.0e-6))
println("metoda stycznych: ", mstycznych(x -> x^2 - 9, x -> 2 * x, 1.5, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^(-5.0), 50))
println("metoda siecznych:  ",msiecznych(x -> x^2 - 9, 1.0, 2.0, 0.5 * 10 ^ (-5.0), 0.5 * 10 ^ (-5.0), 50))
