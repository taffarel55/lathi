x = inline(['mod(t,2*pi)/A.*(mod(t,2*pi)<A)+',...
            '((mod(t,2*pi)>=A)&(mod(t,2*pi)<pi))'],'t','A');
A = pi/64; [x_N, t] = MS6P1(A);
plot(t,x_N(21,:),'k',t,x(t,A),'k:'); axis([-pi/4,2*pi+pi/4,-.1,1.1]);
xlabel('t'); ylabel('Amplitude'); legend('x_20(t)','x(t)');
%{
plot(t,x_N(101,:),'k',t,x(t,A),'k:'); axis([-pi/4,2*pi+pi/4,-.1,1.1]);
xlabel('t'); ylabel('Amplitude'); legend('x_100(t)','x(t)');
%}