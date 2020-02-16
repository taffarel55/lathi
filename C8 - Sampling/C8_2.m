T_0 = 4; N_0 = 32; T = T_0/N_0;
x_n = [ones(1,4) 0.5 zeros(1,23) 0.5 ones(1,3)]';
X_r = fft(x_n); r = [-N_0/2:N_0/2-1]'; omega_r = r*2*pi/T_0;

omega = linspace(-pi/T,pi/T,4097); X = 8*sinc(omega/(2*pi));

figure(1); subplot(2,1,1);
plot(omega,abs(X),'k',omega_r,fftshift(abs(X_r)),'ko');
xlabel('\omega'); ylabel('|X(\omega)|'); axis tight
legend('TF verdadeira',['T_0 = ',num2str(T_0),...
       ', N_0 = ',num2str(N_0)]);

subplot(2,1,2);
plot(omega,angle(X),'k',omega_r,fftshift(angle(X_r)),'ko');
xlabel('\omega'); ylabel('\angle X(\omega'); axis([-25 25 -.5 3.5]);
