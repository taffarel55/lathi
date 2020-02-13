X = inline('tau*sinc(omega*tau/2)','omega','tau');
omega = linspace(-4*pi, 4*pi, 200);
plot(omega,X(omega,1),'k-',omega,X(omega,0.5),'k:',omega,X(omega,2),'k--');
grid; axis tight; xlabel('\omega'); ylabel('X(\omega)');
legend('Referência (\tau = 1)','Comprimida (\tau = 0.5)',...
       'Expandida (\tau = 2.0)');