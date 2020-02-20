disp("flsin function");
graphics_toolkit("gnuplot");

function flsin = f(a, w, p, ni, nf) %flsin is the variable returned, f is the name of the function
x = ni:1:nf
flsin = a*sin(w*x + p)
end

function [indicies, values] = flsinB(a, w, p, ni, nf)
  indicies = ni:1:nf;
  values = a*sin(w*indicies + p);
end

y1 = f(1, 2, 0, 0, 10)
plot(0:1:10, y1)

figure();
y2 = f(5, 0.5, 2, 0, 10)
plot(0:1:10, y2)

figure();
y3 = f(1, 2, 0, 5, 15)
plot(0:1:10, y3)

figure();
[ind, val] = flsinB(1, 2, 0, 3, 13);
plot(ind, val);