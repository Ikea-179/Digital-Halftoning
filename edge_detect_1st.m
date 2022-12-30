function edge_detected = edge_detect_1st(img, operator, thresh_frac)
    % Change to compute threshold somehow
    % consider changing this to use the K formula (pg 497 in txtbk pdf)
    switch lower(operator)
        case "pixel_diff"
            row_mask = [0 0 0; 0 1 -1; 0 0 0];
            col_mask = [0 -1 0; 0 1 0; 0 0 0];
        case "sep_pixel_diff"
            row_mask = [0 0 0 ; 1 0 -1; 0 0 0];
            col_mask = [0 -1 0; 0 0 0; 0 1 0];
        case "roberts"
            row_mask = [0 0 -1; 0 1 0; 0 0 0]; 
            col_mask = [-1 0 0; 0 1 0; 0 0 0];
        case "sobel"
            row_mask = [1/4 0 -1/4; 1/2 0 -1/2; 1/4 0 -1/4];
            col_mask = [-1/4 -1/2 -1/4; 0 0 0; 1/4 1/2 1/4];
        case "frei_chen"
            row_mask = [1/(2+sqrt(2)) 0 -1/(2+sqrt(2));...
                        sqrt(2)/(2+sqrt(2)) 0 -sqrt(2)/(2+sqrt(2));...
                        1/(2+sqrt(2)) 0 -1/(2+sqrt(2))];
            col_mask = [-1/(2+sqrt(2)) -sqrt(2)/(2+sqrt(2)) -1/(2+sqrt(2));...
                        0 0 0;...
                        1/(2+sqrt(2)) sqrt(2)/(2+sqrt(2)) 1/(2+sqrt(2))];
        case "prewitt" 
            %prewitt
            row_mask = [1/3 0 -1/3; 1/3 0 -1/3; 1/3 0 -1/3];
            col_mask = [-1/3 -1/3 -1/3; 0 0 0; 1/3 1/3 1/3];
        otherwise 
            printf("No valid operator defined; using Prewitt");
            %prewitt
            row_mask = [1/3 0 -1/3; 1/3 0 -1/3; 1/3 0 -1/3];
            col_mask = [-1/3 -1/3 -1/3; 0 0 0; 1/3 1/3 1/3];
    end
    
    row_grad = convolve_double(img, row_mask);
    col_grad = convolve_double(img, col_mask);
    
    combined = combine_row_col_grad(row_grad, col_grad);
    thresh = calc_thresh(combined, thresh_frac);
    
    edge_detected = apply_thresh(combined, thresh);
    
    function thresholded = apply_thresh(img, thresh)
        num_rows = size(img, 1);
        num_cols = size(img, 2);
        thresholded = zeros(num_rows, num_cols, 'uint8');
        
        for i=1:num_rows
            for j=1:num_cols
                val = img(i,j);
                if val > thresh
                    thresholded(i,j) = 0;
                else
                    thresholded(i,j) = 255;
                end
            end
        end
    

    function combined = combine_row_col_grad(row_grad, col_grad)
        num_rows = size(row_grad, 1);
        num_cols = size(row_grad, 2);
        combined = zeros(num_rows, num_cols, 'double');
        
        for i=1:num_rows
            for j=1:num_cols
                sum_of_squares = double(row_grad(i,j)^2 + col_grad(i,j)^2);
                val = sum_of_squares^(1/2);
                combined(i,j) = val;
            end
        end
        