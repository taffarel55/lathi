% filtro cheby com:
% fc = 1kHz
% N = 8 (ordem)
% ripple da banda passante 1dB

omega_c = 2*pi*1000; R = 0.01; N = 20;
epsilon = sqrt(10^(R/10)-1);

CN = cheby(N).*((1/(j*omega_c)).^[N:-1:0]);
CP = epsilon^2*conv(CN,CN); CP(end) = CP(end)+1;

poles = roots(CP); i = find(real(poles)<0); C_poles = poles(i);

# Linha abaixo para ver os polos
plot(real(C_poles),imag(C_poles),'kx'); axis equal;
axis(omega_c*[-1.1 1.1 -1.1 1.1]);
xlabel('\sigma'); ylabel('\omega');

# Para 
A = poly(C_poles);
B = A(end)/sqrt(1+epsilon^2);
omega = linspace(0,2*pi*2000,2001);
H = M4_1(B,A,omega);
plot(omega/2/pi,abs(H),'k'); grid;
xlabel('f [Hz]'); ylabel('|H(j2\pi f|');
axis([0 2000 0 1.1]);
