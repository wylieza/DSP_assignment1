disp("Hand-in 4");
clear

global ri = -10;
rf = 70;
global arrn = ri:1:rf;
range = length(arrn);

W = 2*pi/5;

function hofx = hof(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end

h = zeros(range);
for n = arrn
  h(n -ri+1) = hof(n);
end

function Hofw = Hof(w)
  global arrn;
  global ri;
  Hofw = 0;
  for k = arrn
    Hofw += hof(k-ri+1)*exp(-j*w*k);
  end
end

disp(abs(Hof(W)));
disp(arg(Hof(W)));