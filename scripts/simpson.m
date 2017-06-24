function x = simpson(func, h, pontos) 
  x= 0;
  n = size(pontos,2);
  
  for i = 1:2:n-2
    x = x + (func(pontos(i)) + 4*func(pontos(i+1)) + func(pontos(i+2)));
  end
  
  x = h*x;