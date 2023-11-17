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


% Grafico del filtro
figure;
y = filtro1(n,h);
n_conv = 0:(length(h) + length(n) - 2);
stem(n_conv, y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de filtro 1');
print -f3 -dpng 'ejercicio2/respuestaFiltro1.png' 

delta = zeros(1,length(n));
delta(1) = 1; % Suponiendo que el primer valor es n=0

y = eco(delta);

% Graficar la salida del sistema a una delta
figure;
n_conv = 0:(length(n) + length(n) - 2);
stem(n_conv, y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Respuesta del sistema a un impulso unitario');
print -f4 -dpng 'ejercicio2/SalidaSistemaImpulsoUnitario.png' 

% Graficar la salida del sistema a la entrada de audio
figure;
  canal_izquierdo = audio(:, 1);  % Extrae el canal izquierdo
  canal_derecho = audio(:, 2);    % Extrae el canal derecho
  eco_izquierdo = eco(canal_izquierdo);
  eco_derecho = eco(canal_derecho);
  audio_estereo_con_eco = [eco_izquierdo, eco_derecho];
  
  sound(eco_izquierdo, Fs);
  plot(eco_izquierdo);
  xlabel('n (Instantes)');
  ylabel('x (Señal)');
  title('Respuesta del sistema a un impulso unitario');
  print -f5 -dpng 'ejercicio2/SalidaSistemaAEntradaAudio.png'

  % Graficar la salida del sistema a la entrada de audio
figure;
  y=filtro1(eco_izquierdo,eco_izquierdo);
  
  sound(eco_izquierdo, Fs);
  plot(y);
  xlabel('n (Instantes)');
  ylabel('x (Señal)');
  title('Salida eco al filtro 1');
  print -f5 -dpng 'ejercicio2/SalidaSistemaAEntradaAudio.png'

   % Graficar la salida del sistema a la entrada de audio
figure;
  y=filtro2(y,y);
  
  sound(eco_izquierdo, Fs);
  plot(y);
  xlabel('n (Instantes)');
  ylabel('x (Señal)');
  title('Salida eco al filtro 2');
  print -f5 -dpng 'ejercicio2/SalidaSistemaAEntradaAudio.png'