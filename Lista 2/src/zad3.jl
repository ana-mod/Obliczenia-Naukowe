#Anna Modrzejewska 236642
#lista 2. zadanie 3.

include("hilb.jl")
include("matcond.jl")

result1 = Float64(0.0)
result2 = Float64(0.0)

sizes = [5,10,20]
conds = Float64[1, 10, 10^3, 10^7, 10^12, 10^16]

for n in 1:20
    A = hilb(n)
    x = ones(n)
    b = A * x

    result1 = A\b
    result2 = inv(A) * b

    err1 = Float64((norm(x - result1)/norm(x)));
    err2 = Float64((norm(x - result2)/norm(x)));

    println(n," ", cond(A), " ",err1, " ",err2)

end

for n in sizes
    for c in conds
        A = matcond(n, c)
        x = ones(n)
        b = A * x

        result1 = A\b
        result2 = inv(A) * b

        err1 = (norm(x - result1)/norm(x));
        err2 = (norm(x - result2)/norm(x));

        println(n, " ",c, " ",err1, " ",err2)

    end
end
