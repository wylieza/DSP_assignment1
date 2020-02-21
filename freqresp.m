function H = freqresp(h, omega)
  offset = 11; %Offset because assuming h[1] is actually h[-10]
  H = 0;
  for n = 1:1:length(h)
    H += h(n)*exp(-j*omega*(n-offset));
  end
end