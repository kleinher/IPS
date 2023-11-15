function y = filtro1(n,x)
  h = zeros(1, n);
  h(1) = 1;      
  h(8820+1) = -0.4;   
  
  y = zeros(1, length(x) + length(h) - 1);
  
  % Realizar la convolución manual
  for i = 1:length(x)
      for j = 1:length(h)
          y(i + j - 1) = y(i + j - 1) + x(i) * h(j);
      end
  end

end