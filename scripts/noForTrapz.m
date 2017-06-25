function x = noForTrapz(y0,h) % implementing trapz without using for 
  b = (h/2) *(y0(1) + y0(end));
  a = h*sum(y0(2:1:end-1));
  x = b + a;