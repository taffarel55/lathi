T_0 = 4; N_0 = 256;
T = T_0/N_0; t = (0:T:T*(N_0-1))';
x = T * exp(-2*t); x(1) = T*(exp(-2*T_0)+1)/2;
X_r = fft(x); r = [-N_0/2:N_0/2-1]'; omega_r = r*2*pi/T_0;

omega = linspace(-pi/T,pi/T,4097); X = 1./(j*omega+2);

subplot(211);
plot(omega,abs(X),'k',omega_r,fftshift(abs(X_r)),'ko');
xlabel('\omega'); ylabel('|X(\omega)|');
axis([-.01 40 -.01 0.51]);
legend('True FT',['DFT with T_0 = ',num2str(T_0),...
        ', N_0 = ',num2str(N_0)]);
        
subplot(212);
plot(omega,angle(X),'k',omega_r,fftshift(angle(X_r)),'ko');
xlabel('\omega'); ylabel('\angle X(\omega)');
axis([-.01 40 -pi/2-0.01 0.01]);
legend('True FT',['DFT with T_0 = ',num2str(T_0),...
        ', N_0 = ',num2str(N_0)]);