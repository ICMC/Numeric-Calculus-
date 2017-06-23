function [x,y] = taylor2(x0, y0, h, n, func, derFunc)
  x =  zeros(1,n);
  y = x;
  
  x(1) = x0;
  y(1) = y0;
  
  for i = 1:n-1
    y(i+1) = y(i) + h*func(x(i), y(i) + (power(h,2)/2)*derFuc(x(i),y(i));
    x(i+1) = x(i) + h;
  end