function y = mutation(x, index)
x(index) = xor(x(index), x(index));
y = x;
