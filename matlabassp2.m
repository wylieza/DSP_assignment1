disp("flsin function");

function flsin = f(a, w, p, ni, nf) %flsin is the variable returned, f is the name of the function
x = ni:1:nf
flsin = a*sin(w*x + p)
end

y = f(1, 2, 0, 0, 10)
plot(0:1:10, y)