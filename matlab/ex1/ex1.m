clear all
clc

number_of_iteration = 100;
n = 1;
number_of_bits = 16;
population_size = 30;
xbimax = 2 ^ number_of_bits - 1;
pc = 0.7;
pm = 0.001;
jmax = 0;
xmax = 0;
xdemin = -2;
xdemax = 2;

pop = randi(2, population_size, number_of_bits) - 1;


while n <number_of_iteration
    xr = mapbi2func(pop, xdemin, xdemax, xbimax);
    j = -f(xr);
    
    [jm, index] = max(j);
    if jm > jmax
        jmax = jm;
        xmax = xr(index);
    end
    
    mating_pool = sus_selection(pop, j);
    children = zeros(population_size, number_of_bits);
    
    % Recombinacao
    i = 1;
    while i <= population_size
        if rand < pc && i < population_size - 1
            [children(i,:), children(i+1,:)] = ...
                crossover(mating_pool(i,:), mating_pool(i+1,:));
            i = i + 2;
        else
            children(i,:) = mating_pool(i,:);
            i = i + 1;
        end
    end
    
    % Mutacao
    for i = 1:population_size
        for j = 1:length(children(i))
            if rand < pm
                children(i,:) = mutation(children(i,:), j);
            end
        end
    end
    
    pop = children;
    n = n + 1;
        
end
    