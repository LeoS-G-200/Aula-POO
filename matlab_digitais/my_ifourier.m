function [t,g] = my_ifourier(G,Fs,T,L)
% [f,G] = my_fourier(g,Fs)
% f : frequência
% G : G(f)
% g : g(t)
% Fs : Frequencia de amostragem

NFFT = 2^(nextpow2(length(G)) + 0); % Próxima potência de 2
if nargin == 3
  L=NFFT;
end
g1 =  ifft(ifftshift(G),NFFT)*Fs; % Inversa de Fourier
g=g1(1:L);
t=linspace(-T,T,L);
