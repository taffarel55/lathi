function [W,E_W] = M7_2(tau,beta,tol)
  % Função para calcular a largura de faixa essencial W para o pulso quadrado
  % Entradas:       tau = largura do pulso
  %                 beta = fração da energia desejada do sinal em W
  %                 tol = tolerância do erro na energia relativa
  % Saídas          W = largura de faixa essencial [rad/s]
  %                 E_W = Energia contida na largura de faixa W
  W = 0; step = 2*pi/tau; % tentativa inicial e valores de passo
  X_squared = inline('(tau*sinc(omega*tau/2)).^2','omega','tau');
  E = beta*tau; % energia desejada em W
  relerr = (E-0)/E; % O erro relativo inicial é 100 porcento
  while (abs(relerr)>tol),
    if (relerr>0), % W é muito pequeno
      W = W + step; % Aumenta W por step
    elseif (relerr<0), % W é muito grande
      step = step/2; W = W-step;
    end
    t = linspace(-W,W,2000);
    E_W = 1/(2*pi)*quad(X_squared,-W,W,[],[],tau);
    relerr = (E - E_W)/E;
  endwhile
endfunction
