#Anna Modrzejewska
#236642
#Lista 1. Zadanie 7. 
function df(f, x, h) #general formula for derivative
	return ((f(x+h)-f(x))/h)
end

function f(x) #function to differentiate
	return sin(x)+cos(3*x)
end

function df2(x) #formula for f(x) derivative
	return cos(x)-3*(sin(3x))
end

der2=df2(1) #value of df2 at x=1

for n in 0:54
der=df(f, 1, (0.5)^n)
println(n, ": ", der)
println("err: ", abs(der-der2))
end