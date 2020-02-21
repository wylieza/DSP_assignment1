disp("Handin 2");

  hold off

  w0 = pi/10;
  ri = -10;
  rf = 70;
  range = ri:1:rf;
  rlen = length(range);
  
%  x = [];  
%  for n = range;
%    x = [x, u(n)*cos(w0*n)];
%  end

plot(range, x);

function altxofn = altx(n)
  w0 = pi/10;
  altxofn = u(n)*cos(w0*n);
end

function hofx = h(x)
  hofx = 0;
  if (x >= 0 && x <=6)
    hofx = 1/7;
  end
end

y = zeros(rlen);
index = 1;

for n = range;
  for k = 0:1:6
    y(n - ri +1) += h(k)*altx(n-k);
    %y(n - ri +1) += h(k)*x(n -ri +1 -k); %Doesnt work because k sends it out of range
  end
  index += 1;
end

disp("filterd");
hold on
plot(range, y);

print(gcf, '-dpng', 'handin2a.png') %Save as png