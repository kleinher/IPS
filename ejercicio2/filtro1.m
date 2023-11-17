function y = filtro1(x)
  k = 8820;
  y = zeros(1, length(x)); % Inicializar y con la misma longitud que x
  for n = 1:length(x)
    if (n - k) <= 0
      y(n) = x(n); % Para índices menores que k, simplemente copia x a y
    else
      y(n) = x(n) - 0.4 * x(n - k); % Aplica la fórmula para índices mayores o iguales a k
    end
  end
endfunction
