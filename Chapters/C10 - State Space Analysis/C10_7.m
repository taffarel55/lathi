A = [0 1; -1/6 5/6]; B = [0; 1]; C = [-1 5]; D = 0;
sys = ss(A,B,C,D,-1); % Modelo em tempo discreto do espaço de estados
N = 25; x = ones(1,N+1); n = (0:N); q0 = [2;3];
[y,q] = lsim(sys,x,n,q0); % Saída simulada e vetor de estados
clf; stem(n,y,'k'); xlabel('n'); ylabel('y[n]'); axis([-.5 25.5 11.5 13.5]);