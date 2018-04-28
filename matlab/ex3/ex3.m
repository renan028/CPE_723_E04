clear all
clc


global tau tau_prime epsilon population_size

number_of_iteration = 1000;
number_of_states = 30;
population_size = 30;
number_of_parents = 200;
tau = 1/sqrt(2 * sqrt(number_of_states));
tau_prime = 1/sqrt(2 * number_of_states);
epsilon = 1e-2;
jmin = inf;

s = randn(number_of_states, population_size);
pop = (30+30)*rand(number_of_states, population_size)-30;

n = 1;
while n < number_of_iteration+1

    % Recombinacao
    children = zeros(number_of_states, number_of_parents);
    children_s = zeros(number_of_states, number_of_parents);
    i = 1;
    while i < number_of_parents
        index_1 = randi(population_size);
        index_2 = randi(population_size);
        if index_1 == index_2
            continue
        end
        children(:,i) = crossover_discrete(pop(:,index_1), pop(:,index_1));
        children_s(:,i) = ...
            crossover_global_intermediate(s(:,index_1), s(:,index_1));
        i = i + 1;
    end

    % Mutacao
    [children, children_s] = mutation(children, children_s);

    j = f(children);
    jm = min(j);
    if jm < jmin
        jmin = jm;
    end
    [pop, s] = comma_selection(j, children, children_s);
    n = n + 1;
end

    