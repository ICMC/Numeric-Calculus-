function x = newton_sis(F,J,x,tol)
  for kmax=1:1000
    v = J(x)\F(x);
    x = x - v;
  if (norm(v)<tol) return end;
end

