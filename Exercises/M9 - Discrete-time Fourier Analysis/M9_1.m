T = 1/1000; N_0 = 100; n = (0:N_0-1);
x = cos(2*pi*50*n*T);
X = fft(x)/N_0; f = (0:N_0-1)/(T*N_0);
stem(f-500,fftshift(abs(X)),'k'); axis([-500 500 -0.1 0.6]);

##{

x_hat = real(ifft(X)*N_0);
stem(n,x_hat,'k'); axis([0 99 -1.1 1.1]);
xlabel('n'); ylabel('x_{hat}');

#}