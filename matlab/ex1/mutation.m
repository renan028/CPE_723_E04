function y = mutation(x, index)
xg = bi2gray(x);
xg(index) = xor(xg(index), xg(index));
y = gray2bi(xg);
