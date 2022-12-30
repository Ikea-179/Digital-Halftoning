function cond_int_table = pattern_table_to_int_vec(pattern_table)
    % Get table with matrix versions of patterns
    num_patterns = size(pattern_table, 3);
    cond_int_table = zeros(num_patterns, 1);
    
    % Compute integer id for every pattern and store in id table
    for i=1:num_patterns
        pattern = pattern_table(:,:,i);
        id = get_pattern_integer(pattern);
        cond_int_table(i) = id;
    end