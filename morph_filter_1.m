function [filtered,hit] = morph_filter_1(img, pattern_id_table)
    num_rows = size(img, 1);
    num_cols = size(img, 2);
    hit = 0;
    filtered = zeros(num_rows, num_cols, 'uint8');
    img = add_dimensions(img, 1, 1, 0);
    
    for i=1:num_rows
        for j=1:num_cols
            subimg = get_subimg(img, j, i, 3, 3);
            bin_subimg = to_binary(subimg);
            
            id = get_pattern_integer(bin_subimg);
            
            % If the pattern matches a pattern in the lookup table
            if vector_contains(pattern_id_table, id)
                % Mark the pixel as potential removal pixel (255)
                % A hit is a 1 (so that after filter1, during filter2,
                % after inversion id calculations will be correct)
                filtered(i, j) = 255;
                hit = hit+1;
            else
                filtered(i, j) = 0;
            end
        end
    end
