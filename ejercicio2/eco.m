function y = eco(x)
  
  h = 0:length(x);
  h = zeros(1,length(x));
  % Asignar los valores conocidos de la respuesta impulsional
  h(1) = 1;      
  h(8820+1) = 0.4;   
  h(17640+1) = 0.16;
  
  [filas, columnas] = size(x);

  y = conv(x, h, 'full');
end