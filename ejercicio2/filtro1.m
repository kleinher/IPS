function y = filtro1(n,x)
  h = zeros(1, n);

  h(1) = 1;      
  h(8820+1) = -0.4;   

  y = filter(h, 1, x); 
end