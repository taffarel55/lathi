num = [2 10]; den = [1 8 19 12];
[A,B,C,D] = tf2ss(num,den)
[nm,dn] = ss2tf(A,B,C,D);
tf(nm,dn)