function handin1(ni, nf)
  n = ni:1:nf;
  x5 = 3*cos(2*pi*n/10);
  x6 = 2*cos(2*pi*n/12 + pi/4);
  
  subplot(2, 1, 1); %A two by one sub plot at position 1
  plot(n, x5);
  
  subplot(2, 1, 2);
  plot(n, x6);
  
  print(gcf, '-dpng', 'handin1.png') %Save as png
end