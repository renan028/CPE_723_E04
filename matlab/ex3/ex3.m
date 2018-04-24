clear all
clc

global tau tau_prime epsilon population_size

number_of_iteration = 1000;
number_of_states = 30;
population_size = 30;
number_of_parents = 200;
tau = .5/sqrt(2 * sqrt(number_of_states));
tau_prime = .5/sqrt(2 * number_of_states);
epsilon = 1e-2;
jmax = -inf;

s = randn(number_of_states, population_size);
pop = (30+30)*rand(number_of_states, population_size)-30;

n = 1;
while n < number_of_iteration+1
    j = f(pop);
    
    jm = max(j);
    if jm > jmax
        jmax = jm;
    end
    
    % Recombinacao
    children = zeros(number_of_states, number_of_parents);
    children_s = zeros(number_of_states, number_of_parents);
    for i = 1:number_of_parents
        children(:,i) = crossover_discrete(pop);
        children_s(:,i) = crossover_global_intermediate(s);
    end
    
    % Mutacao
    [children, children_s] = mutation(children, children_s);

    [pop, s] = comma_selection(children, children_s);
    n = n + 1;
        
end
    