function x = trapezio(func, pontos, h)
  n = size(pontos, 2);
  x = h/2*(func(pontos(1) - pontos(n));
  y = 0;
  
  for i = 2:n-1 
    y = y + func(pontos(i));
  end 
  
  x = x +  h*y;
