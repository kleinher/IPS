%Sistema 4
addpath('./sistema4');

[n, x] = senial(1614);

%salida a senial
figure;          
y = sistema4(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 4 a senial');
print -f1 -dpng 'sistema3/respuestaSistema3aSenial.png'            


% TFTD(sistema(senial))
Y = TFTD(n,y);
%Modulo
Y_magnitud = abs(Y);
%Fase
Y_fase = rad2deg(angle(Y));

figure;
s = -0.5:0.001:0.5;
plot(s, Y_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Modulo');
title('Modulo TFTD(S4(senial))');
print -f2 -dpng 'sistema4/moduloTFTD-s4-senial.png'

figure;
plot(s, Y_fase);
xlabel('S');
title('Fase TFTD(S4(senial))');
print -f3 -dpng 'sistema4/faseTFTD-s4-senial.png'


% h
x = zeros(size(n));
x(n == 0) = 1;

% sistema(h)
figure;
h = sistema4(x);
stem(t,h)
xlabel('Tiempo');
ylabel('Salida y[n]');
title('Respuesta al impulso del sistema');
print -f4 -dpng 'sistema4/respuestaSistemaAImpulso.png'

% TFTD(h)
H = TFTD(n,h);
%Modulo
H_magnitud = abs(H);
%Fase
H_fase = rad2deg(angle(H));

figure;
s = -0.5:0.001:0.5;
plot(s, H_magnitud);
xlabel('Frecuencia (Hz)');
ylabel('Modulo');
title('Modulo TFTD(S4(h))');
xlim([-0.5 0.5]);
print -f5 -dpng 'sistema4/moduloTFTD-s4-h.png'

figure;
plot(s, H_fase);
xlabel('S');
title('Fase TFTD(S4(h))');
xlim([-0.5 0.5]);
print -f6 -dpng 'sistema4/faseTFTD-s4-h.png'