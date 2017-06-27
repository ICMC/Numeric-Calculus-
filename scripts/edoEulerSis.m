function x = edoEulerSis(func,w,x0)
  h = x0(2) - x0(1);
  n = size(x0, 2);
 
  for i = 1:n-1
     w(:,i+1) = w(:,i) +(h*func(x0(i),w(:,i)))';
  end
  
  x = w;
  
  