% Define el vector de tiempo
t = 0:1:100;

% Crea una señal de entrada, por ejemplo, un impulso unitario
x = zeros(size(t));
x(t == 0) = 1;

% Evalúa la señal a través del sistema
h = sistema1(x);

% Grafica la salida del sistema
stem(t,h)
xlabel('Tiempo');
ylabel('Salida y[n]');
title('Respuesta al impulso del sistema');
grid on;

% Calcular la TFTD de la señal
H = fft(h);
% Calcular la magnitud y la fase de la TFTD
H_magnitud = abs(H);

% Graficar la magnitud de la TFTD
figure;
stem(n, H_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Magnitud de la TFTD de la señal');

