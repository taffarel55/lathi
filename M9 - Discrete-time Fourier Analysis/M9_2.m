T = 1/1000; N_0 = 1000; n = (0:N_0-1);
x = cos(2*pi*50*n*T);
f = (0:N_0-1)/(T*N_0);
W = mydftmtx(N_0); 
tic; for i=1:1000, X = W*x'/N_0; end; toc
stem(f-500,fftshift(abs(X)),'k'); axis([-500 500 -0.1 0.6]);
xlabel('f [Hz]'); ylabel('|X(f)|');
tic; for i=1:1000, fft(x)/N_0; end; toc