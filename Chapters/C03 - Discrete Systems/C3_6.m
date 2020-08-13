n = (0:11); x = inline('(4.^(-n).*(n>=0))');
a = [1 6 9]; b = [2 6 0];
y = filter(b,a,x(n));
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]');