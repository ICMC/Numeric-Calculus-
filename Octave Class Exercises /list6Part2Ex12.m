function[y] = lagrange_igual(xi, yi,x) 
  h = xi(2) - xi(1);
  u =(x - xi(1))/h;
  
  n = length(xi); #o tamanho de xi e' o numero de linhas 
  
  L = ones(n, length(x)); # x e' o numero de colunas 
  
  for i = 1:n
    for j = 1:n
      if(i~= j) # se i for diferente de j 
        L(i, :) = L(i,:)*(u -(j+1))/(i-j);
      end     
    end
  end
  