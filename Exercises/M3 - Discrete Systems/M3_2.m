b = [1 0 0]; a = [1 -1 1];
n = (0:30)'; delta = inline('n==0','n');
h = filter(b,a,delta(n));
clf; stem(n,h,'k'); axis([.5 30.5 -1.1 1.1]);
xlabel('n'); ylabel('h[n');

# it's not BIBO stable because h[n] is periodic, then..
# for a input periodic equally x[n]=cos(2*pi*n/6) we have...

x = inline('cos(2*pi*n/6).*(n>=0)','n');
y = filter(b,a,x(n));
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]');
# resonance!