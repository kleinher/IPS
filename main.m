[n, x] = senial(1614);

% Graficar la señal
plot(n, x);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de la Señal');
grid on;

% Calcular la TFTD de la señal
X = fft(x);

% Calcular la magnitud y la fase de la TFTD
X_magnitud = abs(X);
  X_fase = angle(X);

% Graficar la magnitud de la TFTD
figure;
stem(n, X_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Magnitud de la TFTD de la señal');

% Graficar la fase de la TFTD
figure;
stem(n, X_fase);
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
title('Fase de la TFTD de la señal');

t = -2:0.001:8;           % Define el vector del tiempo
x = (t == 0);             % Crea una señal de impulso (delta de Kronecker)
y = sistema(x);           % Evalúa la señal a través del sistema
plot(t, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta al impulso del sistema');