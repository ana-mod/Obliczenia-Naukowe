#autor: Anna Modrzejewska 236642
#lista 3.
#zadanie 1. 

module Roots
export mbisekcji, mstycznych, msiecznych

function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
	u=f(a)
	v=f(b)
	if(sign(u)==sign(v))
		return (NaN, NaN, NaN, 1)
	end	
	e=b-a;
	i=0;
	while true
    	i += 1;
    	e = e / 2;
    	c = a + e
    	w = f(c)
    	if(abs(e) < delta || abs(w) < epsilon)
   			return (c, w, i, 0)
    	end
    	if (sign(w) != sign(u))
    		b = c; v = w;
    	else
    		a = c; u = w;
    	end
	end
end

function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
  	v = f(x0)
	if(abs(v)<epsilon) return (x0, v, 0, 0) end
	for k in 1:maxit
		if abs(pf(x0)) < epsilon
			return (NaN, NaN, NaN, 2)
		end 
		x1 = x0 - (v / (pf(x0)))
		v = f(x1)
		if (abs(x1 - x0) < delta || abs(v) < epsilon)
			return (x1, v, k, 0)
		end
		x0 = x1;
	end
	return (NaN, NaN, NaN, 1)  
end


function msiecznych(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	fa = f(a)
	fb = f(b)
	for k in 1:maxit
		if abs(fa) > abs(fb)
			a, b = b, a
    		fa, fb = fb, fa
		end
		s = (b - a) / (fb - fa)
		b = a
		fb = fa
		a = a - (fa * s)
		fa = f(a)
	    if (abs(b - a) < delta || abs(fa) < epsilon)
	        return (a, fa, k, 0)
	    end
	end
	return (a, fa, maxit, 1)  
end

end
