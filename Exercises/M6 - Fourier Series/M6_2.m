m = inline('sum(cos(omega*t+theta*ones(size(t))))','theta','t','omega');
N = 20; omega = 2*pi*100*[1:N]'; theta = zeros(size(omega));
t = linspace(-0.01, 0.01, 1000);

#plot(t,m(theta,t,omega),'k'); xlabel('t [sec]'); ylabel('m(t) [volts]');

%{
rand('state',0); theta_rand0 = 2*pi*rand(N,1);
m_rand0 = m(theta_rand0,t,omega);
[max_mag, max_ind] = max(abs(m_rand0(1:end/2)));
plot(t, m_rand0, 'k'); axis([-.01,.01,-10,10]);
xlabel('t [sec]'); ylabel('m(t) [volts]');
text(t(max_ind),m_rand0(max_ind),...
     ['\leftarrow max = ',num2str(m_rand0(max_ind))]);
%}

Fs = 8000; t = [0:1/Fs:2]; % registro de 2s com faixa de 8kHz
m_0 = m(theta,t,omega);
sound(m_0/20,Fs);

maxmagm = inline('max(abs(sum(cos(omega*t+theta*ones(size(t))))))',...
           'theta','t','omega');
rand('state',0); theta_init = 2*pi*rand(N,1);
theta_opt = fminsearch(maxmagm,theta_init,[],t,omega);
t = linspace(0,0.01,201);