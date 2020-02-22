function handin1()
  ni = -10;
  nf = 15;
  phase_offset = pi/2; %Sinusoid function is based on sin, so offset is required
  x5 = flsinusoid(3, 2*pi/10, 0 + phase_offset, ni, nf);
  x6 = flsinusoid(2, 2*pi/12, pi/4 + phase_offset, ni, nf);
  
  subplot(2, 1, 1); %A two by one sub plot at position 1
  plot(ni:nf, x5);
  title("Plot of x5")
  legend("3cos(n*2pi/10)");
  xlabel("Index n");
  ylabel("Magnitude");
  
  subplot(2, 1, 2);
  plot(ni:nf, x6);
  title("Plot of x6")
  legend("2cos(n*2pi/12 + pi/4)");
  xlabel("Index n");
  ylabel("Magnitude");
  
  print(gcf, '-dpng', 'handin1.png') %Save as png
end