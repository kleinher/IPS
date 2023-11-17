%Sistema 1
addpath('./sistema2');
addpath('./senial');
[n, x] = senial(1614);
t = 0:1:100;  % Define el vector del tiempo

%salida a senial
figure;          
y = sistema2(x);          % Evalúa la señal a través del sistema
stem(n, y);               % Grafica la salida del sistema
xlabel('Tiempo [n]');
ylabel('Salida y[n]');
title('Respuesta de Sistema 2 a senial');
print -f1 -dpng 'sistema2/respuestaSistema2aSenial.png'  

% TFTD(sistema(senial))
Y = TFTD(n,y);
%Modulo
Y_magnitud = abs(Y);
%Fase
Y_fase = rad2deg(angle(Y));


figure;
s = -0.5:0.001:0.5;
plot(s, Y_magnitud);
xlabel('S');
ylabel('Modulo');
title('Modulo TFTD(S2(senial))');
print -f2 -dpng 'sistema2/moduloTFTD-s2-senial.png' 

figure;
plot(s, Y_fase);
xlabel('S');
title('Fase TFTD(S2(senial))');
print -f3 -dpng 'sistema2/faseTFTD-s2-senial.png'


% h
x = zeros(size(n));
x(t == 0) = 1;

% sistema(h)
figure;
h = sistema2(x);
stem(n,h)
xlabel('Tiempo');
ylabel('Salida y[n]');
title('Respuesta al impulso del sistema');
print -f4 -dpng 'sistema2/respuestaSistemaAImpulso.png'

% TFTD(h)
H = TFTD(n,h);
%Modulo
H_magnitud = abs(H);
%Fase
H_fase = rad2deg(angle(H));

figure;
s = -0.5:0.001:0.5;
plot(s, H_magnitud);
xlabel('S');
ylabel('Modulo');
title('Modulo TFTD(S2(h))');
xlim([-0.5 0.5]);
print -f5 -dpng 'sistema2/moduloTFTD-s2-h.png'

figure;
plot(s, H_fase);
xlabel('S');
title('Fase TFTD(S2(h))');
xlim([-0.5 0.5]);
print -f6 -dpng 'sistema2/faseTFTD-s2-h.png'