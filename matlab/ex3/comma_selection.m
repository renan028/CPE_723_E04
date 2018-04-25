function [pop, s] = comma_selection(j, children, children_s)
global population_size
[~, jsort_index]=sort(j, 'ascend'); 
jsort_index = jsort_index(1:population_size);

pop = children(:,jsort_index);
s = children_s(:,jsort_index);