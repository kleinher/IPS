addpath('./ejercicio2');
addpath('./senial');
[n, h] = hcanald(1614);
[audio, Fs] = audioread('./senial/audio.wav');
%sound(audio, Fs);

% Graficar la señal de audio
figure;
plot(audio);
xlabel('Muestra');
ylabel('Amplitud');
title('Forma de Onda del Audio');
print -f1 -dpng 'ejercicio2/audio.png'


for idx = 1:length(h)
    if h(idx) != 0
        fprintf("h es diferente de 0 en n = %d y h = %d\n", n(idx),h(idx));
    end
end

fprintf("El valor maximo de n = %d \n", length(h));

% Graficar la señal hcanal
figure;
stem(n, h);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de la Señal');
xlim([0 26460]);
print -f2 -dpng 'ejercicio2/respuestaImpulsional.png' 

delta = zeros(1,length(audio));
delta(1) = 1; % Suponiendo que el primer valor es n=0

y = eco(delta);

% Graficar la salida del sistema a una delta
figure;
stem(y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('eco(h)');
print -f3 -dpng 'ejercicio2/h-eco.png'

% Filtro 1 h
figure;
y=filtro1(y);
stem( y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('filtro 1 eco(h)');
print -f4 -dpng 'ejercicio2/h-filtro1.png'

% Filtro 2 h
figure;
y=filtro2(y);
stem(y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('filtro 2 eco(h)');
print -f5 -dpng 'ejercicio2/h-filtro2.png'


audio = audio(:, 1);  % Extrae el canal izquierdo

% Audio eco
figure;
audio=eco(audio);
plot(audio);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Audio eco');
print -f6 -dpng 'ejercicio2/audio-eco.png'

% Filtro 2 audio
figure;
y=filtro1(audio);
plot(y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Audio filtro 1');
print -f7 -dpng 'ejercicio2/audio-f1.png'

% Filtro 2 audio
figure;
y=filtro2(y);
plot(y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Audio filtro 2');
print -f8 -dpng 'ejercicio2/audio-f2.png'




