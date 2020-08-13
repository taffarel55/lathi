A = [0 1;-2 3]; B = [1 0; 1 1];
C = [1 0;1 1;0 2]; D = [0 0;1 0;0 1];

syms s; H = simplify(C*inv(s*eye(2)-A)*B+D)

disp('Funções de transferências:')
[num,den] = ss2tf(A,B,C,D); tf(num,den)