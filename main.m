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
X_fase = fftshift(angle(X));

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
