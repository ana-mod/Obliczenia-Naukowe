#Anna Modrzejewska 236642
#Zadania 1-4, lista 4.

module DifferenceQuotient

using Plots

export ilorazyRoznicowe, warNewton, naturalna
export rysujNnfx

function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
    n = length(f)
    for i in 2 : n
		for j in n : -1 : i
			f[j] = (f[j] - f[j - 1]) / (x[j] - x[j - i + 1])
        end
	end
    return f
end

function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
n = length(fx)
nt = fx[n]

	for i in n-1:-1:1
		nt = fx[i]+(t-x[i])*nt
	end
return nt
end

function naturalna(x::Vector{Float64}, fx::Vector{Float64})
    n = length(fx)
    a = Vector{Float64}(n)
    a[n] = fx[n]

    for i in n-1: -1: 1
        a[i] = fx[i] - a[i+1] * x[i]
        for j in i + 1 : n-1
            a[j] = a[j] - a[j+1] * x[i]
        end
    end
    return a
end

function rysujNnfx(f, a::Float64,b::Float64,n::Int)
	h = (b - a) / n;
	x = [a+i*h for i in 0:n]
	y = [f(z) for z in x];

	fx = ilorazyRoznicowe(x, y);
 
	lin = linspace(a, b, 50*n);
	int = [warNewton(x, fx, i) for i in lin];
	fun = [f(z) for z in lin]

plot(lin, fun, color ="black", line=(:dot, 3), label = "f(x)")
plot!(lin, int, color ="red", linewidth=3, label= "Nn(x)")
end

end


