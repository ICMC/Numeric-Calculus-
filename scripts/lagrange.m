function p = lagrange(yi,xi,x)
  
  [m,n] = size(xi);
  if(n==1)
    xi=xi';yi=yi';n=m;
  end 
  L = ones(n, length(x));
  for i = 1:n
    for j=1:n
      if (i~=j)
          L(i,:) = L(i, :)*((x-xi(j))/(xi(i) - xi(j))); %L(i,:) pega a linha i inteira. 

      end
    end
  end  
  
  p=yi*L;