Omega = linspace(-pi,pi,4097); g_mag = [0.83 0.96 0.99];
H = zeros(length(g_mag),length(Omega));
for m=1:length(g_mag),
  H(m,:) = freqz([1 0 -1],[1 -sqrt(2)*g_mag(m) g_mag(m)^2],Omega);
endfor

subplot(2,1,1); plot(Omega,abs(H(1,:)),'k-',...
                     Omega,abs(H(2,:)),'k--',...
                     Omega,abs(H(3,:)),'k-.');
axis tight; xlabel('\Omega'); ylabel('|H[e^{j \Omega}]|');
legend('(a) |\gamma| = 0.83','(b) |\gamma| = 0.96','(c) |\gamma| = 0.99');

subplot(2,1,2); plot(Omega,angle(H(1,:)),'k-',...
                     Omega,angle(H(2,:)),'k--',...
                     Omega,angle(H(3,:)),'k-.');
axis tight; xlabel('\Omega'); ylabel('\angle H[e^{j \Omega}]');
legend('(a) |\gamma| = 0.83','(b) |\gamma| = 0.96','(c) |\gamma| = 0.99');