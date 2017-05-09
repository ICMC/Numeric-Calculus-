function pt=newton_interp(x,y,t)
  
  n = lenght(x);
  m = lenght(t); 
  D = zeros(n);
  D(:,1) = y'; #y' is the transpose matrix 
  N = ones(n,m);
  
  
  for j=1:n-1 # column
    for i = 1:n-j # line
      D(i, j+1)= (D(i+1,j) -D(i,j))/(x(i+j)-x(i));
    end 
  end
  
 for i = 2:n # start from the position, because the first line is all 1 
   for j= 1:i-1
     N(i,:) = N(i,:).*(t-x(j));
   end 
 end
 
 pt = D(1,:) * N;
 
 