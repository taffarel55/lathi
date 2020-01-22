function [H] = M4_1(B,A,omega);
% M4_1.m:       GNU OCTAVE
% Inputs:       B = vector of direct feed coefficients
%               A = feedback coefficients vector
%               omega = frequency vector
% Outputs:      H = frequency response
% H(s) = [sum(b_k+N-M s^(M-k),k,0,M)]/[sum(a_k s^(N-k),k,0,N)]

H = polyval(B,j*omega)./polyval(A,j*omega);
