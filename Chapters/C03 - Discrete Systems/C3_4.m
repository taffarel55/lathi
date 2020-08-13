n=(-2:20)'; y=[1;2;zeros(length(n)-2,1)];
for k = 1:length(n)-2,
  y(k+2) = 1.56*y(k+1)-0.81*y(k);
endfor;
clf; stem(n,y); xlabel('n'); ylabel('y[n]');