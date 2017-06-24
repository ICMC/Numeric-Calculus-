function x = gaussLegendre(func, pontos, pesos, int)
  n = size(pontos); %size returns size os lines and columns 
  x= 0; 
  
  if((int(1)!= 1) && (int(2)!= -1) ) % if the interval is not [-1,1], then apply x = (t(b-a)+a+b)/2
    for i = 1:n(2) 
      pontos(i) = (pontos(i)*(int(2) - int(1)) + int(1) + int(2)) / 2;
    end 
  
  end 

  for i = 1:n(2)
    x = x + (pesos(i)*func(pontos(i)));
  end 