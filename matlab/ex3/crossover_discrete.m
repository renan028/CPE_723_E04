function y = crossover_discrete(pop)
global population_size

parent_1 = pop(:,randi(population_size));
parent_2 = pop(:,randi(population_size));
a = randi(2, length(parent_1),1);
parent = [parent_1 , parent_2];
y = diag(parent(:,a));