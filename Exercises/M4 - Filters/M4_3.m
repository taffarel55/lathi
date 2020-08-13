omeca_c = 2*pi*3000;
C = 1e-9;
R = sqrt(2^(1/10)-1)/(C*omeca_c);
f = linspace(0,20000,200);
B = 1; A=poly(-1/(R*C)*ones(10,1)); A=A/A(end); 
Hmag_RC_cascade = abs(M4_1(B,A,f*2*pi));
plot(f,f*2*pi<=omeca_c,'k-',f,Hmag_RC_cascade,'k--');
xlabel('f [Hz]'); ylabel('|H_{RC}(j2\pi f|');
axis([0 20000 -.05 1.05]); legend('ideal','RC first order');