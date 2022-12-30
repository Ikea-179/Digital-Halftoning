function detected = detect_zero_crossing(diff_mat, thresh)
    num_rows = size(diff_mat, 1);
    num_cols = size(diff_mat, 2);

    detected = zeros(num_rows, num_cols, 'uint8');

    for i=1:num_rows
        for j=1:num_cols
            diff = diff_mat(i,j);
            if diff > thresh
                detected(i, j) = 0;
            else
                detected(i, j) = 255;
            end
        end
    end