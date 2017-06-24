function I = simpson(xi,yi) 
  h = xi(2) - xi(1);
  I = yi(1) + yi(end)+ 4*sum(yi(1:2:end-1))+ 2*sum(yi(3:2:end-2));
  I = h/3 * I;
  
  