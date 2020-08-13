function [x_N,t] = MS6P1(A);
  % aproximar x(t) usando serie de fourier;
  % truncada em |n| = N para (0 <= N <= 100);
  % Entradas: A = tempo de subida
  % Saidas:   x_N = matriz de saida, na qual x_N(N+1,:) é |n| = N
  %           x   = vetor de tempo para x_N
  t = linspace(-pi/4, 2*pi+pi/4, 1000); % vetor de tempo excedido em um periodo
  sumterms = zeros(101,length(t)); % pre alocacao de memoria
  sumterms(1,:) = (2*pi-A)/(4*pi); % calculo do termo cc
  for n = 1:100, % calcula os N termos restantes
    D_n = ((exp(-j*n*A)-1)/(n*A)+j*exp(-j*n*pi))/(2*pi*n);
    sumterms(1+n,:) = 2*real(D_n*exp(j*n*t));
  endfor
  x_N = cumsum(sumterms);
endfunction
