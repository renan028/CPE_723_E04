function [xsort, psort] = ranking(x, j)
j = j + max(abs(j));
sumj = sum(j);
if sumj == 0
    p = ones(length(j), 1) / length(j);
else
    p = j / sum(j);
end
[psort, psort_index]=sort(p, 'descend'); 
xsort = x(psort_index,:);