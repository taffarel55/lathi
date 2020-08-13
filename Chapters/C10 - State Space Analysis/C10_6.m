#a
A = [1 0; 1 -1]; B = [1; 0]; C = [1 -2];
[V, Lamba] = eig(A); P = inv(V);
disp('Parte (a):'), Bhat = P*B, Chat = C*inv(P)

#b
A = [-1 0; -2 1]; B = [1; 1]; C = [0 1];
[V, Lamba] = eig(A); P = inv(V);
disp('Parte (a):'), Bhat = P*B, Chat = C*inv(P)