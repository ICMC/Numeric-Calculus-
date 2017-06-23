function [x,y] = runge_kutta4(x0, y0, h, func, n)
  x = zeros(1, n);
  y = x; 
  
  x(1) = x0;
  y(1) = y0;
  
  for i = 1:n-1
    k1 = func(x(i), y(i));
    k2 = func(x(i) +0.5*h, y(i) + 0.5*h*k1);
    k3 = func(x(i) + 0.5*h, y(i) + 0.5*h*k2);
    k4 = func(x(i) + h, y(i)+h*k3);
    
    y[i+1] = y(i) + h/6[k1 + 2*(k1 + 2*(k2+k3)+k4];
    
  end 
  