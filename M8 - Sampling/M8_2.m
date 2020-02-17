T = 1/50; N_0 = 50; n = (0:N_0-1);
y = T*exp(j*2*pi*(10+1/3)*n*T); Y = fft(y);
f = (0:N_0-1)/(T*N_0);
stem(f-25,fftshift(abs(Y)),'k'); axis([-25 25 -0.05 1.05]);
xlabel('f [Hz]'); ylabel('|Y(f)|');

# não da pra pegar o 10 + 1/3 Hz, y[n] não é real, a TDF não é 
# conjugada simétrica do sinal, vamos preencher com 11x do tamanho
# de y com 0's

##{
y_pn = [y, zeros(1,11*length(y))]; Y_pn = fft(y_pn);
f_pn = (0:12*N_0-1)/(T*12*N_0);
stem(f_pn-25,fftshift(abs(Y_pn)),'k.'); axis([-25 25 -0.05 1.05]);
xlabel('f [Hz]'); ylabel('|Y_{pn}(f)|');
#}

