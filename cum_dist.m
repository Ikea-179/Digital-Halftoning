function cumdist = cum_dist(vec)
    num_entries = size(vec, 1);
    cumdist = zeros(num_entries, 1);
    cumdist(1) = vec(1);
    
    for i=2:num_entries
        cumdist(i) = (vec(i) + cumdist(i-1));
    end
    