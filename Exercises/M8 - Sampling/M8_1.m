T = 1/50; N_0 = 50; n = (0:N_0-1);
x = T*cos(2*pi*10*n*T);
X = fft(x);
f = (0:N_0-1)/(T*N_0);
stem(f,abs(X),'k'); axis([0 50 -.05 0.55]);
# aqui tem o alias em 40Hz
stem(f-1/(T*2),fftshift(abs(X)),'k'); axis([-25 25 -0.5 0.55]);
xlabel('f [Hz]'); ylabel('|X(f)|');
stem(f-1/(T*2),fftshift(angle(X)),'k'); axis([-25 25 -1.1*pi 1.1*pi]);
xlabel('f [Hz]'); ylabel('\angle X(f)');