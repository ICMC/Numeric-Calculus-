function [y, D, z] = hermite(xi, yi, dyi, x)

if(size(xi,2) == 1)
    xi = xi'; yi = yi';
end

ni = length(xi); n = length(x);

z = zeros(2*ni,1);
D = zeros(2*ni);

z(1:2:2*ni-1) = xi;
z(2:2:2*ni) = xi;
D(1:2:2*ni-1,1) = yi;
D(2:2:2*ni,1) = yi;

D(1:2:2*ni-1,2) = dyi;
D(2:2:2*ni-2,2) = (D(3:2:2*ni-1,1)-D(2:2:2*ni-2,1))./(z(3:2:2*ni-1) - z(2:2:2*ni-2));

for j = 2:2*ni
    for i = 1:2*ni-j
        D(i,j+1) = (D(i+1,j) - D(i,j))/(z(i+j)-z(i));
    end
end

N = ones(2*ni,length(x));

for i = 2:2*ni
    for k = 1:i-1
        N(i,:) = N(i,:).*(x' - z(k));
    end
end

y = D(1,:)*N;

end