n = (-10:10); D_n = 0.504./(1+j*4*n);
clf; subplot(2,1,1); stem(n,abs(D_n),'k');
xlabel('n'); ylabel('|D_n|');
subplot(2,1,2); stem(n,angle(D_n),'k');
xlabel('n'); ylabel('\angle D_n [rad]');