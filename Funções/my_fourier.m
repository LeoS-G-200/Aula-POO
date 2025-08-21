function [f,G] = my_fourier(g,Fs)
% [f,G] = my_fourier(g,Fs)
% f : frequência
% G : G(f)
% g : g(t)
% Fs : Frequencia de amostragem
NFFT = 2^(nextpow2(length(g)) + 6); % Próxima potência de 2 + 5
G = fftshift( fft(g,NFFT) )/Fs; % Fourier
f=linspace(-1,1,length(G))*Fs/2;
