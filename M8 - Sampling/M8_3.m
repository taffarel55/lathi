#{
x = (-10:.0001:10);
xsq = quantizar(x,10,3,'sym');
plot(x,xsq,'k'); grid;
xlabel('Entrada do quantizador'); ylabel('Saída do quantizador');
#}

T = 1/50; N_0 = 50; n = (0:N_0-1);
f = (0:N_0-1)/(T*N_0);
x = cos(2*pi*n*T); X = fft(x);
xaq = quantizar(x,1,3,'asym'); Xaq = fft(xaq);

subplot(2,2,1); stem(n,x,'k'); axis([0 49 -1.1 1.1]);
xlabel('n'); ylabel('x[n]');

subplot(2,2,2); stem(f-25,fftshift(abs(X)),'k'); axis([-25 25 -1 26]);
xlabel('f'); ylabel('|X(f)|');

subplot(2,2,3); stem(n,xaq,'k'); axis([0 49 -1.1 1.1]);
xlabel('n'); ylabel('x_{aq}[n]');

subplot(2,2,4); stem(f-25,fftshift(abs(Xaq)),'k'); axis([-25 25 -1 26]);
xlabel('f'); ylabel('|X_{aq}(f)|');
