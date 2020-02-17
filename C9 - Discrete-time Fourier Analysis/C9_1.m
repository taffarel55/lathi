N_0 = 32; n = (0:N_0-1);
x_n = [ones(1,5) zeros(1,23) ones(1,4)];
for r=0:31,
  X_r(r+1) = sum(x_n.*exp(-j*r*2*pi/N_0*n))/N_0;
endfor

subplot(2,1,1); r = n; stem(r,real(X_r),'k');
xlabel('r'); ylabel('X_r'); axis([0 31 -.1 0.3]);
legend('SFTD por cálculo direto');

X_r = fft(x_n)/N_0;
subplot(2,1,2); stem(r,real(X_r),'k');
xlabel('r'); ylabel('X_r'); axis([0 31 -.1 0.3]);
legend('SFTD pela FFT');