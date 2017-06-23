function [x,y] = runge_kutta2(x0, y0, h, func, n)
  x = zeros(1,n);
  y = x0;
  
  x(1) = x0;
  y(1) = y0;
 
  
  for i= 1:n-1;
    
    k1 = func(x(i), y(i));
    k2 = func(x(i) + 0.5*h, y(i)+0.5*h*k1);
    y(i+1) = y(i) + h*(0.5*k1 + 0.5*k2);
    
  end 
  