function y = sistema1(x)
  y = zeros(size(x));
  
  y(1) = 1/2 * x(1);
  
  for n = 2:length(x)
    y(n) = 1/2 * x(n) + 1/2 * x(n - 1);
  end
end