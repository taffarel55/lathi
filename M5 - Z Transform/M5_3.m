function [Bd,Ad] = M5_3(B,A,T);
% GNU OCTAVE | Transformação pela diferença atrasada de primeira ordem
%              de um filtro emtempo contínuo descrito por B e A em um 
%              filtro de tempo discreto
% Inputs:       A = feedback coefficients vector
%               B = vector of direct feed coefficients
%               T = sampling interval
% Outputs:      Bd = discret feedback coefficients vector
%               Ad = discret vector of direct feed coefficients

z = roots(B); p=roots(A); % raizes no dominio s
gain = B(1)/A(1)*prod(1/T-z)/prod(1/T-p);
zd = 1./(1-T*z); pd = 1./(1-T*p); % raizes no dominio z
Bd = gain*poly(zd); Ad = poly(pd);