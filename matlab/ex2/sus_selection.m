function mating_pool = sus_selection(x, j)
[xsort, psort] = ranking(x, j);
number_of_bits = size(xsort, 2);
population_size = size(xsort, 1);
current_member = 1;
i=1;

mating_pool = zeros(population_size, number_of_bits);
psort = cumsum(psort);

r = rand / population_size;
while current_member <= population_size
    while r <= psort(i)
        mating_pool(current_member,:) = xsort(i,:);
        r = r + 1/population_size;
        current_member = current_member + 1;
    end
    i = i + 1;
end
        
