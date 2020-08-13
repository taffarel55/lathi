num = [0 10^5]; den=[1 10^5];
T = pi/10^6; Fs = 1/T;
[b,a] = impinvar(num,den,Fs);
tf(b,a,T)