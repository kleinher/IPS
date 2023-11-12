function y = sistema1(x)
  % Inicializar la salida con ceros. La salida tiene la misma longitud que la entrada.
  y = zeros(size(x));
  
  % Aplicar la ecuación en diferencias a la señal de entrada x
  % Ignora el primer valor ya que x[n-1] no está definido para n=1
  y(1) = 1/2 * x(1);
  
  for n = 2:length(x)
    y(n) = 1/2 * x(n) + 1/2 * x(n - 1);
  end
end