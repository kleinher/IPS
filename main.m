addpath('./sistema1');
addpath('./sistema2');
addpath('./sistema3');
addpath('./sistema4');
[n, x] = senial(1614);

% Graficar la señal
stem(n, x);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de la Señal');
grid on;

% Calcular la TFTD de la señal
X = fft(x);

% Calcular la magnitud y la fase de la TFTD
X_magnitud = fftshift(abs(X));
X_fase = angle(X);

% Graficar la magnitud de la TFTD
figure;

plot(n, X_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Magnitud');
title('Magnitud de la TFTD de la señal');

% Graficar la fase de la TFTD
figure;
stem(n, X_fase);
xlabel('Frecuencia (Hz)');
ylabel('Fase (radianes)');
title('Fase de la TFTD de la señal');
%{
%Sistema 1
figure;
t = 0:1:100;           % Define el vector del tiempo
[n, x] = senial(1614);
y = sistema1(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 1 a senial');

%Sistema dos
figure;
[n, x] = senial(1614);
y = sistemaDos(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 2 a senial');

%Sistema Tres
figure;
[n, x] = senial(1614);
y = sistema3(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 3 a senial');

%Sistema Cuatro
figure;
[n, x] = senial(1614);
y = sistema4(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 4 a senial');
}%