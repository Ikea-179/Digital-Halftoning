function [filtered,cnt_remove] = morph_filter_2(filter, pattern_id_table)
    cnt_remove = 0;
    num_rows = size(filter, 1);
    num_cols = size(filter, 2);
    
    filtered = filter;
    filter = add_dimensions(filter, 1, 1, 0);
    
    for i=1:num_rows
        for j=1:num_cols
            subimg = get_subimg(filter, j, i, 3, 3);
            bin_subimg = to_binary(subimg);
            
            id = get_pattern_integer(bin_subimg);
            
            % If the pattern matches a pattern in the lookup table
            if vector_contains(pattern_id_table, id)
                filtered(i, j) = 0;
                cnt_remove = cnt_remove + 1;
            end
        end
    end
    disp(cnt_remove);