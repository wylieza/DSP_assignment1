disp("Hand-in 4");
clear

global ri = -10;
rf = 70;
global arrn = ri:1:rf;
range = length(arrn);

W = pi/10;

function hofx = hof(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end

function htofn = htof(n)
  htofn = 0;
  if (n >= 0 && n <=3)
    htofn = (n+1)/16;
  elseif (n >= 4 && n <=6)
    htofn = (7-n)/16;
  end
end

h = zeros(range);
for n = arrn
  h(n -ri+1) = hof(n);
end

h = zeros(range);
for n = arrn
  h(n -ri+1) = hof(n);
end

ht = zeros(range);
for n = arrn
  ht(n -ri+1) = htof(n);
end

function Hofw = Hof(w)
  global arrn;
  global ri;
  Hofw = 0;
  for k = arrn
    Hofw += hof(k-ri+1)*exp(-j*w*k);
  end
end

disp("Manual");
disp(abs(Hof(W)));
disp(arg(Hof(W)));

disp("Direct");
disp(abs(freqresp(ht, W)))
disp(arg(freqresp(ht, W)))

arrW = 0:0.01:4*pi;
arrH = [];
arrh = [];

for w = arrW
  arrh = [arrh, freqresp(h, w)];
end

for w = arrW
  arrH = [arrH, freqresp(ht, w)];
end

subplot(2,1,1);
plot(arrW, abs(arrh));
title("Original - Bad LPF");
legend("Frequency Response");
xlabel("Frequency in radians");
ylabel("Attenuation Factor");
subplot(2,1,2);
plot(arrW, arg(arrh));
legend("Phase Response");
xlabel("Frequency in radians");
ylabel("Phase Shift");

print(gcf, '-dpng', 'handin4original.png') %Save as png

figure();

subplot(2,1,1);
plot(arrW, abs(arrH));
title("Improved LPF");
legend("Frequency Response");
xlabel("Frequency in radians");
ylabel("Attenuation Factor");
subplot(2,1,2);
plot(arrW, arg(arrH));
legend("Phase Response");
xlabel("Frequency in radians");
ylabel("Phase Shift");

print(gcf, '-dpng', 'handin4imporved.png') %Save as png