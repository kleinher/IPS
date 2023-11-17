function y = eco(x)
  k = 8820;
  j = 17640
  y = zeros(1, length(x)); % Inicializar y con la misma longitud que x
  for n = 1:length(x)
    if (n - k) <= 0
      y(n) = x(n); % Para índices menores que k, simplemente copia x a y
    elseif (n-j) <= 0
      y(n) = x(n) + 0.4 * x(n - k); % Aplica la fórmula para índices mayores o iguales a k
    else
      y(n) = x(n) + 0.4 * x(n - k) + 0.16 * x(n-17640); % Aplica la fórmula para índices mayores o iguales a k
    end
  end
endfunction