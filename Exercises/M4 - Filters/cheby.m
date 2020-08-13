function [C_N] = cheby(N);
  % Arquivo calcula os coeficientes do polinômio de Chebyshev
  % através da recursividade
  % ENTRADAS: N = grau do polinômio de Chebyshev
  % SAIDAS: C_N = vetor dos coeficientes do polinômio de Chebyshev
  C_Nm2 = 1; C_Nm1 = [1 0]; % coeficientes iniciais
  for t = 2: N,
    C_N = 2*conv([1 0],C_Nm1)-[zeros(1,length(C_Nm1)-length(C_Nm2)+1),...
    C_Nm2];
    C_Nm2 = C_Nm1; C_Nm1 = C_N;
  endfor
endfunction
