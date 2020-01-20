n =(-10:10);

# before
#f = inline('exp(-n/5).*cos(pi*n/5).*(n>=0)','n'); 

# after
f = inline('(n==fix(n)).*exp(-n/5).*cos(pi*n/5).*(n>=0)','n'); 

stem(n,f(n/2),'k');
