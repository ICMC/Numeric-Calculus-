% y0 =  vector of inicial values 
  % func =  vector with functions 
  % h = gap, between points 
  % int  = interval  
  function [x,y] = sistemaEDOEuler(y0, func, h, int) 
     n = round((int(2) - int(1))/h); % number of steps
     y =  zeros(2,n);
     y(:,1) = y0;
     x = linspace(0,int(2),n+1);
     
     for i = 1:n
       y(:,i+1) = y(:,i) + h*func(x(i),y(:,i));
     end 
     