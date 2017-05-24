function [p,D] = newtown(xi,yi,x)
  
  [m,n] = size(x); % size retorna dois valore, numero de linhas = m, numero de colunas = n
  
  if(n==1) 
    xi=xi'; % padronizando para xi ser uma linha caso o input seja uma coluna 
    n=m;
  end 
  
  [e,d] = size(y);
  
  if(d==1)
    yi =yi'; %padronizando para yi ser uma linha caso o input seja uma coluna 
    d=e;
  end 
  
  n = length(xi); % number of points or number or 'x'
  ni =length(x); % length 1
  
  D = zeros(n);
  N = ones(n, ni);
  
  D(:,1) = yi';
  
  for j = 1:n
    for i = 1:n-j
     D(i,i+j)= (D(i+1,j) - D(i,j))/(xi(i+j) - xi(i));
    end 
  end 
  
  for i = 2:n
    for k = i-1
      N(i,:) = N(i,:).*(x - xi(k));
    end  
  end
  p = D(1,:)*N;  % multiplica a primeira linha pelo vetor N