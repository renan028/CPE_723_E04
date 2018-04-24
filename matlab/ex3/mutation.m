function [y, s] = mutation(x, s)
global tau tau_prime epsilon 
s = s.*exp(tau_prime * randn + tau * randn(size(x)));

s(s<epsilon) = epsilon;

y = x + s.*randn(size(x));
