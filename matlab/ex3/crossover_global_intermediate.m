function y = crossover_global_intermediate(s)
population_size = size(s,2);
number_of_parents = randi(population_size);
list = 1:population_size;
y = zeros(size(s,1),1);

for i=1:number_of_parents
    r = randi(length(list));
    y = y + s(:,list(r));
    list(r) = [];
end

y = y / number_of_parents;