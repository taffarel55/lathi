x = [0 1 2 3 2 1]; g = [1 1 1 1 1 1];
n = (0:length(x)+length(g)-2);
c = conv(x,g);
clf; stem(n,c,'k'); xlabel('n'); ylabel('c[n]');