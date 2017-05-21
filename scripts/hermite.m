function [y, D] = hermite(xi,yi,dy,x)
% xi, yi, x: vetor linha ou coluna
[m,n]= size (x);
if (n == 1) 
    xi = xi'; yi = yi'; n = m; 
end
n = length(xi); ni = length(x); N = ones(n,ni);
D=zeros(n); D(:,1) = yi';
k=1;

for j=1:n % tabela de diferencas divididas
    for i=1:n-j
      if(xi(i+j) == xi(i))
        D(i, j+1) = dy(k);
        k = k+1;
       
      else
        D(i,j+1) = (D(i+1,j)-D(i,j))/(xi(i+j)-xi(i));
      end
    end
end
for i=2:n % forma de Newton
    for k = 1:i-1
        N(i,:) = N(i,:).*(x-xi(k));
    end
end

  y = D(1,:)*N;
end