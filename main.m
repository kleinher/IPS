% Generar señal
[n, x] = senial(1614);
s = [-0.5:0.001:0.5];  % Definir el vector de frecuencias una sola vez

% Graficar la señal
figure;
stem(n, x);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de la Señal');
grid on;
print -f1 -dpng 'senial/graficaSenial.png';

% Calcular la TFTD de la señal
X = TFTD(n, x);

% Calcular la magnitud y la fase de la TFTD
X_magnitud = abs(X);
X_fase = rad2deg(unwrap(angle(X)));

% Graficar la magnitud de la TFTD
figure;
plot(s, X_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Modulo');
title('Modulo de la TFTD de la señal');
xlim([-0.5 0.5]);
print -f2 -dpng 'senial/moduloTFTD.png';


% Graficar la fase de la TFTD
figure;
plot(s, X_fase);
xlabel('Frecuencia (Hz)');
ylabel('Fase (grados)');
title('Fase de la TFTD de la señal');
xlim([-0.5 0.5]);
print -f3 -dpng 'senial/faseTFTD.png';

