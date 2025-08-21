clc
clear

Fs=1e2;
Ts=1/Fs;
T=1;
A=1;


t=-T:Ts:T;
g=rectpuls(t,T);

f=-3:Ts:3;
L=length(t);


figure(1)
subplot(2,3,1)
plot(t,g)
xlabel('tempo');
ylabel('g(t)');
title('Degrau');
grid on

G=(A*T)*sin(pi*f*T)./(pi*f*T)
subplot(2,3,2)
plot(f,abs(G));
xlabel('Frequência(Hz)');
ylabel('|G(t)|');
title('Tranformada de F')
grid on

G=(A*T)*sinc(f*T);
subplot(2,3,3)
plot(f,abs(G));
xlabel('Frequência(Hz)');
ylabel('|G(t)|');
title('Tranformada de F')
grid on

[f,G] = my_fourier(g,Fs);
subplot(2,3,4)
plot(f,G);
xlabel('Frequência(Hz)');
ylabel('|G(t)|');
title('Tranformada de Fourier Simulada')
axis([-3 3 0 1])
grid on

[t,g]= my_ifourier(G,Fs,T,L);
subplot(2,3,6)
plot(t,g);
xlabel('Tempo(Hz)');
ylabel('|G(t)|');
title('Tranformada Inversa de Fourier Simulada')
grid on