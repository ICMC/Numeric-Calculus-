%create a function using FOR , that given a matrix nxn
% returns its transpose matrix 

clear all;
m=input('n=');

for i=1:n 
  for j=1:n
     A(i,j)=input('a=');
  end
end

for i=1:n
  for j=1:n
    B(i,j)= A(j,i);
    end
end


