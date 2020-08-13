function [W] = mydftmtx(N_0);
  # Calculates the DFT Matrix N_0 x N_0
  W = (exp(-j*2*pi/N_0)).^((0:N_0-1)'*(0:N_0-1));
endfunction
