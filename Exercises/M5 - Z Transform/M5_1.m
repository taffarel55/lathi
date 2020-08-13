function [H] = M5_1(B,A,Omega);
% GNU OCTAVE | Clculates the frequency response for LDIT systems
% Inputs:       A = feedback coefficients vector
%               B = vector of direct feed coefficients
%               omega = frequency vector [rad]
% Outputs:      H = frequency response
N_1 = length(B)-1; N_2 = length(A)-1;
H = polyval(B,exp(j*Omega))./polyval(A,exp(j*Omega)).*exp(j*Omega*(N_2-N_1));
endfunction
