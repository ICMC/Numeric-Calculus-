function [x,y,k1,k2,k3,k4] = runge_kutta4(x0, y0, func, n, h)
  x = zeros(1,n);
  y = zeros(1, n); 
  k1 = zeros(1,n);
  k2=k3=k4=k1; 

  y(1) = y0;
  
  for i = 1:n-1
    k1(i) = func(x(i), y(i));
    k2(i) = func(x(i) +0.5*h, y(i) + 0.5*h*k1(i));
    k3(i) = func(x(i) + 0.5*h, y(i) + 0.5*h*k2(i));
    k4(i) = func(x(i) + h, y(i)+h*k3(i));
    
    y(i+1) = y(i) + (h/6)*(k1(i) +( (k1(i) + 2*(k2(i)+k3(i))))+k4(i));
    x(i+1) = x(i) + h;
  end 
  