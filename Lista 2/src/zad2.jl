in = linspace(-50, 800, 800)

function f(x)
  return (exp(x)) * log(1 + exp(-x))
end

arr = [f(x) for x = in]

plot(arr,linewidth=2)
