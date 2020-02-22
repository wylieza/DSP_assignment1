disp("Handin 2");
  clear
  hold off

  ri = -10;
  rf = 70;
  range = ri:1:rf;
  rlen = length(range);
  
function altxofn = altx(n)
  %w0 = pi/10;
  %w0 = 2*pi/5;
  w0 = 4*pi/5;
  altxofn = u(n)*cos(w0*n);
end

function hofx = h(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end
  
  x = [];disp("Handin 2");
  clear
  hold off

  ri = -10;
  rf = 70;
  range = ri:1:rf;
  rlen = length(range);
  
function altxofn = altx(n)
  %w0 = pi/10;
  %w0 = 2*pi/5;
  w0 = 4*pi/5;
  altxofn = u(n)*cos(w0*n);
end

function hofx = h(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end
  
  x = [];
  arrh = [];
  for n = range;
    x = [x, altx(n)];
    arrh = [arrh, h(n)];
  end

plot(range, x);


y = zeros(rlen);
index = 1;

for n = range;
  for k = 0:1:6
    if((n -ri +1 -k) < 1)
      y(n - ri +1) += 0;
    else
      y(n - ri +1) += h(k)*x(n -ri +1 -k);
    endif
  end
  index += 1;
end

disp("filterd");
hold on
plot(range, y);
legend("Unfiltered Input", "Filtered Output")
xlabel("Range index n");
ylabel("Value");

%title("w0 = pi/10");
%title("w0 = 2*pi/5");
title("w0 = 2*pi/5");

print(gcf, '-dpng', 'handin2ab3.png') %Save as png

hold off
convTest = conv(x,arrh);
plot (convTest);
title("Built-in Convolution with w0 = 2*pi/5");
legend("Convolution Output")
xlabel("Convolution Result Array Index");
ylabel("Value");

%print(gcf, '-dpng', 'handin2c.png') %Save as png
  arrh = [];
  for n = range;
    x = [x, altx(n)];
    arrh = [arrh, h(n)];
  end

plot(range, x);


y = zeros(rlen);
index = 1;

for n = range;
  for k = 0:1:6
    if((n -ri +1 -k) < 1)
      y(n - ri +1) += 0;
    else
      y(n - ri +1) += h(k)*x(n -ri +1 -k);
    endif
  end
  index += 1;
end

disp("filterd");
hold on
plot(range, y);
legend("Unfiltered Input", "Filtered Output")
xlabel("Range index n");
ylabel("Value");

%title("w0 = pi/10");
%title("w0 = 2*pi/5");
title("w0 = 2*pi/5");

print(gcf, '-dpng', 'handin2ab3.png') %Save as png

hold off
convTest = conv(x,arrh);
plot (convTest);
title("Built-in Convolution with w0 = 2*pi/5");
legend("Convolution Output")
xlabel("Convolution Result Array Index");
ylabel("Value");

%print(gcf, '-dpng', 'handin2c.png') %Save as png