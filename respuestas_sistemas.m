% Definir el rango de índices n
n = -20:20;

% Definir la función escalón unitario u[n]
u = @(n) 1.0 .* (n >= 0);

% Definir las funciones h1[n] y h2[n]
h1 = 0.5 * (n == 0) + 0.5 * (n == 1);
h2 = 0.5 * (n == 0) - 0.5 * (n == 1);

% Definir las funciones corregidas h3[n] y h4[n]
h3 = 1./(2.^(n + 2)) .* u(n) + 1./(2.^(n + 1)) .* u(n - 1);
h4 = 1./((-2).^(n + 2)) .* u(n) + 1./((-2).^(n + 1)) .* u(n - 1);

% Graficar h1[n]
figure(3);
stem(n, h1, 'r', 'LineWidth', 2);
title('h1[n] = 0.5 * \delta[n] + 0.5 * \delta[n-1]');
xlabel('n');
ylabel('h1[n]');
grid on;

% Graficar h2[n]
figure(5);
stem(n, h2, 'b', 'LineWidth', 2);
title('h2[n] = 0.5 * \delta[n] - 0.5 * \delta[n-1]');
xlabel('n');
ylabel('h2[n]');
grid on;

% Graficar h3[n]
figure(7);
stem(n, h3, 'g', 'LineWidth', 2);
title('h3[n] = 1/(2^{n+2}) * u[n] + 1/(2^{n+1}) * u[n-1]');
xlabel('n');
ylabel('h3[n]');
grid on;

% Graficar h4[n]
figure(9);
stem(n, h4, 'm', 'LineWidth', 2);
title('h4[n] = 1/(-2^{n+2}) * u[n] + 1/(-2^{n+1}) * u[n-1]');
xlabel('n');
ylabel('h4[n]');
grid on;


% CALCULO DE RESPUESTA EN FRECUENCIA ANALITICAS


% Definir el rango de frecuencias s
s = linspace(-0.5, 0.5, 1000); % 1000 puntos de -0.5 a 0.5

% Calcular H1(e^(j2πs))
H1 = 0.5 + 0.5 * exp(-1i * 2 * pi * s);
% Calcular la magnitud y la fase
H1_magnitud = abs(H1);
H1_fase = angle(H1);

% Calcular H2(e^(j2πs))
H2 = 0.5 - 0.5 * exp(-1i * 2 * pi * s);
% Calcular la magnitud y la fase
H2_magnitud = abs(H2);
H2_fase = angle(H2);

% Calcular H3(e^(j2πs))
H3 = ((1/4) + (1/4) * exp(-1i * 2 * pi * s)) ./ (1 - (1/2) * exp(-1i * 2 * pi * s));
% Calcular la magnitud y la fase de H3
H3_magnitud = abs(H3);
H3_fase = angle(H3);

% Calcular H4(e^(j2πs))
H4 = ((1/4) - (1/4) * exp(-1i * 2 * pi * s)) ./ (1 + (1/2) * exp(-1i * 2 * pi * s));
% Calcular la magnitud y la fase de H4
H4_magnitud = abs(H4);
H4_fase = angle(H4);


% Crear la figura 4
figure(4);
% Subgráfico para la magnitud
subplot(2, 1, 1);
plot(s, H1_magnitud);
xlabel('Frecuencia (s)');
ylabel('Magnitud');
title('Magnitud de H1(e^{j2\pi s})');
% Subgráfico para la fase
subplot(2, 1, 2);
plot(s, H1_fase);
xlabel('Frecuencia (s)');
ylabel('Fase (radianes)');
title('Fase de H1(e^{j2\pi s})');


% Crear la figura 6
figure(6);
% Subgráfico para la magnitud
subplot(2, 1, 1);
plot(s, H2_magnitud);
xlabel('Frecuencia (s)');
ylabel('Magnitud');
title('Magnitud de H2(e^{j2\pi s})');
% Graficar la fase
subplot(2, 1, 2);
plot(s, H2_fase);
xlabel('Frecuencia (s)');
ylabel('Fase (radianes)');
title('Fase de H2(e^{j2\pi s})');

% Crear la figura 8
figure(8);
% Subgráfico para la magnitud de H3
subplot(2, 1, 1);
plot(s, H3_magnitud);
xlabel('Frecuencia (s)');
ylabel('Magnitud');
title('Magnitud de H3(e^{j2\pi s})');
% Subgráfico para la fase de H3
subplot(2, 1, 2);
plot(s, H3_fase);
xlabel('Frecuencia (s)');
ylabel('Fase (radianes)');
title('Fase de H3(e^{j2\pi s})');

% Crear la figura 10
figure(10);
% Subgráfico para la magnitud de H4
subplot(2, 1, 1);
plot(s, H4_magnitud);
xlabel('Frecuencia (s)');
ylabel('Magnitud');
title('Magnitud de H4(e^{j2\pi s})');
% Subgráfico para la fase de H4
subplot(2, 1, 2);
plot(s, H4_fase);
xlabel('Frecuencia (s)');
ylabel('Fase (radianes)');
title('Fase de H4(e^{j2\pi s})');

