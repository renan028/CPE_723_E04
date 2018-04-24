function [pop, s] = comma_selection(children, children_s)
global population_size
j = f(children);
[~, jsort_index]=sort(j, 'descend'); 
jsort_index = jsort_index(1:population_size);

pop = children(:,jsort_index);
s = children_s(:,jsort_index);