n = (0:19); x = inline('n==0');
a = [1 -0.6 -0.16]; b = [5 0 0];
h = filter(b,a,x(n));
clf; stem(n,h,'k'); xlabel('n'); ylabel('h[n]');