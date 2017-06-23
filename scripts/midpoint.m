function I = midpoint(fun,a,b,N)
  h =(b-a)/N;
  xm = linspace(a+0.5*h,b+0.5*h ,N);
  y = fun(xm);
  I = h * sum(y);
  