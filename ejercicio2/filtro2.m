function y = filtro2(n,x)
  h = 0:length(x);
  h = zeros(1,length(x));
  % Asignar los valores conocidos de la respuesta impulsional
  h(1) = 1;      
  h(26460+1) = -0.064;

  y = conv(x, h, 'full');
end