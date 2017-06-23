function [x,y] = euler(x0, y0, func, h, n)
  x =  zeros(1,n);
  y = x;
    
  x(1) = x0;
  y(1) = y0;
  
  for i = 1:n-1 
     y(i+1) = y(i)+ h*func(x(i), y(i));
     x(i+1) = x(i) + h;
  end 