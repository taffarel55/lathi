function [xq] = quantizar(x, xmax, b, metodo);
  # quantizar.m 
  # Função para quantizar x na faixa (-xmax, xmax) usando 2^b níveis.
  # tanto a quantização simétrica quanto assimétrica são suportadas.
  # Entradas:   x = sinal de entrada
  #             xmax = amplitude máxima do sinal a ser quantizado
  #             b = número de bits de quantização
  #             metodo = padrão 'sym' para simétrico, 'asym' para assimétrico
  # Saídas:     xq = sinal quantizado
  if(nargin<3),
    disp('Número insuficiente de entradas.'); return
  elseif (nargin==3),
    method = 'sym';
  elseif (nargin>4),
    disp('Muidas entradas.'); return
  endif
  
  switch lower(metodo)
    case 'asym'
      offset = 1/2;
    case 'sym'
      offset = 0;
    otherwise
      disp('Método de quantização desconhecido.'); return
  endswitch  
  
  q = floor(2^b*((x+xmax)/(2*xmax))+offset);
  i = find(q>2^b-1); q(i) = 2^b-1;
  i = find(q<0); q(i) = 0;
  xq = (q-(2^(b-1)-(1/2-offset)))*(2*xmax/(2^b));
endfunction
