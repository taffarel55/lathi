function [p,z] = M5_2(B,A);
% GNU OCTAVE | Calculates and draw the poles and zeros
% Inputs:       A = feedback coefficients vector
%               B = vector of direct feed coefficients
% Outputs:      p = poles
%               z = zeros
N_1 = length(B)-1; N_2 = length(A)-1; 
p = roots([A,zeros(1,N_1-N_2)]);  z = roots([B,zeros(1,N_2-N_1)]);
ucirc = exp(j*linspace(0,2*pi,200));
plot(real(p),imag(p),'xk',real(z),imag(z),'ok',real(ucirc),imag(ucirc),'k:');
xlabel('Real'); ylabel('Imaginary');
ax = axis; dx = 0.05*(ax(2)-ax(1)); dy = 0.05*(ax(4)-ax(3));
axis(ax+[-dx dx -dy dy]);