% Arquivo para calcular os valores dos componentes de Sallen-key
% e a resposta em amplitude para cada uma das cinco seções de filtros
% de segunda ordem

omega_0 = 3000*2*pi; % frequencia de corte
psi = [9 27 45 63 81]*pi/180; % angulo dos polos de Butterworth
f = linspace(0, 6000, 200); % faixa de frequencia para os cálculos da resposta
Hmag_SK = zeros(5,200); % pré aloca a matriz para as amplitudes
for i = 1:5,
  Q = 1/(2*cos(psi(i))); % calcula fator de qualidade para i
  disp(['Estágio ', num2str(i),...
        ' (Q = ', num2str(Q),...
        '): R1 = R2 = ',num2str(56000),...
        ', C1 = ',num2str(2*Q/(omega_0*56000)),...
        ', C2 = ',num2str(1/(2*Q*omega_0*56000))]);
  B = omega_0^2; A = [1 omega_0/Q omega_0^2]; % calcula coeficientes do filtros
  Hmag_SK(i) = abs(M4_1(B,A,2*pi*f)); % calcula a resposta em amplitude
endfor
plot(f,Hmag_SK,'k',f,prod(Hmag_SK),'k:');
