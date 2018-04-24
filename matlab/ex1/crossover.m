function [nx1, nx2] = crossover(x1, x2)
% One point crossover
x1g = bi2gray(x1);
x2g = bi2gray(x2);
index = randi(length(x1));
temp = x1g(index:end);
x1g(index:end) = x2g(index:end);
x2g(index:end) = temp;
nx1 = gray2bi(x1g);
nx2 = gray2bi(x2g);


