omeca_c = 2*pi*3000;
C = 1e-9;
R = 1/sqrt(C^2*omeca_c^2);
f = linspace(0,20000,200);
B = 1; A=[R*C 1]; Hmag_RC = abs(M4_1(B,A,f*2*pi));
plot(f,f*2*pi<=omeca_c,'k-',f,Hmag_RC,'k--');
xlabel('f [Hz]'); ylabel('|H_{RC}(j2\pi f|');
axis([0 20000 -.05 1.05]); legend('ideal','RC first order');