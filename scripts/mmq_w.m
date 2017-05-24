function p = mmq_w(x,y, w, k) 
  W = diag(w);
  x = vander(x);
  x = x(:, end-k:end);
  p = (X'*W*X)\(X'*W*y);
  
  
  
  