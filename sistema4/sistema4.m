function y = sistema3(x)
    y = zeros(size(x));
    y(1) = 1/4 * x(1);  % Inicializa el primer valor de y[n]
    for n = 2:length(x)
        y(n) = 1/4 * x(n) - 1/4 * x(n - 1) - 1/2 * y(n - 1);
    end
end
