f = inline('exp(-n/5).*cos(pi*n/5).*(n>=0)','n');
n = (-10:10)';
#clf; stem(n,f(n),'k'); xlabel('n'); ylabel('y[n]');

subplot(2,1,1); stem(n,f(-2*n),'k'); ylabel('f[-2n]');
subplot(2,1,2); stem(n,f(-2*n+1),'k'); ylabel('f[-2n+1]'); xlabel('n');