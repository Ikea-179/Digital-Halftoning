function diff_mat = get_diff_mat(img)
    num_rows = size(img, 1);
    num_cols = size(img, 2);

    diff_mat = zeros(num_rows, num_cols, 'double');
    img = add_dimensions(img, 1, 1, 0);

    for i=1:num_rows
        for j=1:num_cols
            subimg = get_subimg(img, j, i, 3, 3);
            positives = subimg( subimg > 0 );
            negatives = subimg( subimg < 0 );
            max_pos = xyj_max(positives);
            min_neg = xyj_min(negatives);
            if max_pos < 0
                max_pos = 0;
            end
            if min_neg > 0
                min_neg = 0;
            end
            diff = abs(max_pos - min_neg);
            diff_mat(i,j) = diff;
        end
    end
    
    function positives = get_positives(A)
        signs = sign(A);
        
        for i=1:size(A)
            if signs(i)
                positives(i) = A(i);
            end
        end