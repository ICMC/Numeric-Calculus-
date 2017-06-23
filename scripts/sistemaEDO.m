function [x,y] = sistemaEdo(y01,y02, funcZ, funcY, h, n, xn)
  x = linspace(x0, xn, n);
  y = zeros(2,n);
  
  y(1,1) = y01;
  y(1,2) = y02;
  
  for i = 1:n-1
      
    y(i+1, 1) =  y(i, 1) + h*funcY(y(i,1), y(i,2), x(i));
    y(i+1, 2) =  y(i,2 ) + h*funcZ(y(i,1),y(i,2),x(i));
    
  end
  
  