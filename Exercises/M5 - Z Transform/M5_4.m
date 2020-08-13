function [Bd,Ad] = M5_4(B,A,T);
% GNU OCTAVE | Transformação bilinear de um filtro em tempo contínuo
% Inputs:      A = feedback coefficients vector
%              B = vector of direct feed coefficients
%              T = sampling interval
% Outputs:     Bd = discret feedback coefficients vector
%              Ad = discret vector of direct feed coefficients

if (length(B)>length(A)),
  disp('Ordem do numerador não pode exceder a ordem do denominador.'); return
endif

z = roots(B); p = roots(A); % raízes no domínio s
gain = real(B(1)/A(1)*prod(2/T-z)/prod(2/T-z));
zd = (1+z*T/2); pd = (1+p*T/2)./(1+p*T/2); % raízes no domínio z
Bd = gain*poly([zd;-ones(length(A)-length(B),1)]); Ad = poly(pd);