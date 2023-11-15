addpath('./ejercicio2');
[n, h] = hcanald(1614);

for idx = 1:length(h)
    if h(idx) != 0
        fprintf("h es diferente de 0 en n = %d y h = %d\n", n(idx),h(idx));
    end
end
fprintf("El valor maximo de n = %d \n", length(h));


% Graficar la señal
figure;
stem(n, h);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de la Señal');
grid on;
print -f1 -dpng 'ejercicio2/respuestaImpulsional.png' 



% Grafico del filtro
figure;
y = filtro1(n,h);
stem(n, y);
xlabel('n (Instantes)');
ylabel('x (Señal)');
title('Gráfica de filtro 1');
grid on;
print -f1 -dpng 'ejercicio2/respuestaFiltro1.png'  
