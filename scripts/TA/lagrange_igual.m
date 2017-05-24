function [y] = lagrange_igual(xi,yi,x)

h = xi(2) - xi(1);
u = (x - xi(1))/h;

n = length(xi);
L = ones(n,length(x));

for i = 1:n
    for j = 1:n
        if(i ~= j)
            L(i,:) = L(i,:).*(u' - j + 1)/(i - j);
        end
    end
end

ni = size(yi,1);
if(ni ~= 1)
    yi = yi';
end

y = yi*L;

end