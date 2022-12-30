function dithered = fixed_thresh_dithering(img, T)
    num_rows = size(img, 1);
    num_cols = size(img, 2);
    
    dithered = zeros(num_rows, num_cols, 'uint8');
    
    for i=1:num_rows
        for j=1:num_cols
            val = img(i,j);
            if val >= T
                dithered(i,j) = 255;
            end
        end
    end