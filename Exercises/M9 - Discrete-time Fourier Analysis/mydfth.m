function [h] = mydfth(N,H_d);
  # mydfth.m para projetar um filtro FIR de tamanho N pela amostragem
  # da respostaem magnitude H_d desejada. A fase das amostras de magnitude
  # são mantidas em zero
  # Entradas:   N = tamanho do filtro FIR desejado
  #             H_d = função inline que define a resposta em magnitude
  # Saídas:     h = resposta ao impulso (coeficientes do filtro FIR)
  
  % Cria as N amostras de frequência igualmente espaçadas:
  Omega = linspace(0,2*pi*(1-1/N),N)';
  
  % Amostra a resposta em magnitude desejada e cria a h[n]:
  H = 1.0*H_d(Omega); h = real(ifft(H));
endfunction
