omega_0 = 2*pi*60; theta = [60 80  87]*(pi/180);
omega = (0:.5:1000)'; mag = zeros(3,length(omega));
for m = 1:length(theta),
  H = tf([1 0 omega_0^2],[1 2*omega_0*cos(theta(m)) omega_0^2]);
  [mag(m,:), phase] = bode(H,omega);
endfor
f = omega/(2*pi); plot(f,mag(1,:),'k-',f,mag(2,:),'k--',f,mag(3,:),'k-.');
xlabel('f [Hz]'); ylabel('|H(j2\pi f)|');
legend('\theta = 60^\circ','\theta = 80^\circ','\theta = 87^\circ');