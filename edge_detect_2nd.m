function edge_detected = edge_detect_2nd(img, operator, thresh_frac)
    switch lower(operator)
        case "laplacian"
            mask = [   0  -1/4    0; 
                    -1/4    1  -1/4; 
                       0  -1/4    0];
        case "prewitt"
            mask = [-1/8 -1/8 -1/8; 
                    -1/8   1  -1/8; 
                    -1/8 -1/8 -1/8];
        case "sep_laplacian"
            mask = [-1/4 1/8 -1/4; 
                     1/8 1/2  1/8;
                    -1/4 1/8 -1/4];
        otherwise 
            fprintf("No valid operator defined; using laplacian");
            mask = [   0  -1/4    0; 
                    -1/4    1  -1/4; 
                       0  -1/4    0];
    end

    convolved = convolve_double(img, mask);
    diff_mat = get_diff_mat(convolved);
    thresh = calc_thresh(diff_mat, thresh_frac);
    edge_detected = detect_zero_crossing(diff_mat, thresh);
    