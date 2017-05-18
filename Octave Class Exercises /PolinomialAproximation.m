function p = mmq(x,y,m) #m is the power 
 
  x =  vander(x);
  x = x(:, end-m:end); # vander stores backwards the values, so power 0 will be in the last column, and power m will be in the first column 
  p = ((x'*x)\(x'*y'))' # \ calculates sistem , ()' just transforming it back to column because matlab stores it as line 
  
  
  
  
  