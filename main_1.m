%Sistema 1
addpath('./sistema1');

[n, x] = senial(1614);
t = 0:1:100;  % Define el vector del tiempo

%salida a senial
figure;          
y = sistema1(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 1 a senial');

% TFTD(sistema(senial))
Y = fft(y);
%Modulo
Y_magnitud = fftshift(abs(Y));
%Fase
Y_fase = fftshift(angle(Y));

figure;
s = -0.5:0.01:0.5;
plot(s, Y_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Magnitud TFTD(S1(senial))');

figure;
plot(s, Y_fase);
xlabel('S');
title('Fase TFTD(S1(senial))');



% h
x = zeros(size(t));
x(t == 0) = 1;

% sistema(h)
h = sistema1(x);
stem(t,h)
xlabel('Tiempo');
ylabel('Salida y[n]');
title('Respuesta al impulso del sistema');
grid on;

% TFTD(h)
H = fft(h);
%Modulo
H_magnitud = fftshift(abs(H));
%Fase
H_fase = fftshift(angle(H));

figure;
s = -0.5:0.01:0.5;
plot(s, H_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Magnitud TFTD(S1(h))');

figure;
plot(s, H_fase);
xlabel('S');
title('Fase TFTD(S1(h))');