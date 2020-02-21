disp("Hand-in 3");
clear

ri = -10;
rf = 70;
arrn = ri:1:rf;
range = length(arrn);

w = pi/10;

x = zeros(range);
for n = arrn
  x(n - ri+1) = u(n)*exp(j*w*n);
end

plot(real(x));
figure();
plot(imag(x));