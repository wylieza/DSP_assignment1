%Finite-length sinusoid generator
function [sinusoid, indicies] = flsinusoid(A, omega, rho, ni, nf)
  indicies = [ni:nf];
  sinusoid = indicies;
  sinusoid = A*sin(omega*sinusoid + rho);
end