n = (-2:10)'; y=[1;2;zeros(length(n)-2,1)]; x=[0;0;n(3:end)];
for k = 1:length(n)-2
  y(k+2) = y(k+1) - 0.24*y(k) + x(k+2) - 2*x(k+1);
endfor
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]');
disp(['n','             ','y']); disp([num2str([n,y])]);