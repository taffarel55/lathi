# b
n = [0:20]; d = zeros(size(n));

for i = find(n>0),
  d(i) = 1 - 0.5*(d(i-1))
endfor

# c
n = [0:20]; d = zeros(size(n));

for i = find(n>0),
  d(i) = (2-d(i-1))/3;
endfor

d