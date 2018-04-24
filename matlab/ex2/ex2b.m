clear all
clc

time_to_optimum = [];
for program_iteration = 1:10
    number_of_iteration = 100;
    number_of_bits = 25;
    population_size = 100;
    xbimax = 2 ^ number_of_bits - 1;
    pc = 0.7;
    pm = 1/number_of_bits;
    jmax = [0];
    jmin  = [];
    jmean = [];

    pop = randi(2, population_size, number_of_bits) - 1;


    n = 0;
    while max(jmax) < 25
        
        n = n + 1;
        j = f(pop);

        jmax = [jmax ; max(j)];
        jmin = [jmin ; min(j)];
        jmean = [jmean ; mean(j)];

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

    end
    time_to_optimum = [time_to_optimum;n];
end

mean(time_to_optimum)
std(time_to_optimum)
    