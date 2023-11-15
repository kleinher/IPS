function y = sistemaDos(x)
    y = zeros(size(x));
    y(1) = 1/2 * x(1);  % El primer valor de y[n] es tratado como un caso especial
    for n = 2:length(x)
        y(n) = 1/2 * x(n) - 1/2 * x(n - 1);
    end
end