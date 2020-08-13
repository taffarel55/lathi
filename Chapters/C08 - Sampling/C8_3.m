T_0 = 4; N_0 = 32; T = T_0/N_0; n = (0:N_0-1); r = n;
x_n = [ones(1,4) 0.5 zeros(1,23) 0.5 ones(1,3)]'; X_r = fft(x_n);
H_r = [ones(1,8) 0.5 zeros(1,15) 0.5 ones(1,7)]';
Y_r = H_r.*X_r; y_n = ifft(Y_r);

figure(1); 

subplot(2,2,1); stem(n,x_n,'k');
xlabel('n'); ylabel('x_n'); axis([0 31 -.1 1.1]);

subplot(2,2,2); stem(r,real(X_r),'k');
xlabel('r'); ylabel('X_r'); axis([0 31 -2 8]);

subplot(2,2,3); stem(n,real(y_n),'k');
xlabel('n'); ylabel('y_n'); axis([0 31 -.1 1.1]);

subplot(2,2,4); stem(r,X_r.*H_r,'k');
xlabel('r'); ylabel('Y_r = X_rH_r'); axis([0 31 -2 8]);