disp("Hand-in 3");
clear

ri = -10;
rf = 70;
arrn = ri:1:rf;
range = length(arrn);

w = pi/5;

function hofx = hof(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end

x = zeros(range);
h = zeros(range);
for n = arrn
  x(n - ri+1) = u(n)*exp(j*w*n);
  h(n -ri+1) = hof(n);
end

y = conv2(x, h);

subplot(2,1,1);
hold on
plot(real(x(1:110)));
plot(real(y(11:121)));
title("Real Part Plot");
legend("Re(Input)", "Re(Output)");
xlabel("Convolution Result Array Index");
ylabel("Value");
subplot(2,1,2);
hold on
plot(imag(x(1:110)));
plot(imag(y(11:121)));
title("Imaginary Part Plot");
legend("Im(Input)", "Im(Output)");
xlabel("Convolution Result Array Index");
ylabel("Value");

nvalue = 50;
disp(abs(y(nvalue))/abs(x(nvalue)));

disp((arg(y(nvalue))-arg(x(nvalue)))/pi);

print(gcf, '-dpng', 'handin3Bonus.png') %Save as png
