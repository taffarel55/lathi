# LCIT System is (D2 + 3D + 2)y(t) = (D+5)x(t)

H = inline('(j*w+5)/((j*w)^2+3*j*w+2)','w');

# The input is x(t) = 20cos(3t+35deg)
t=0:0.01:10;
y = abs(H(3)) * 20 * cos(3*t + 35*pi/180 + arg(H(3)));
plot(t,y,'k');