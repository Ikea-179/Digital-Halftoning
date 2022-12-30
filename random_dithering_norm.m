function dithered = random_dithering_norm(img)
    num_rows = size(img, 1);
    num_cols = size(img, 2);
    
    dithered = zeros(num_rows, num_cols, 'uint8');
    
    for i=1:num_rows
        for j=1:num_cols
            T = uint8(round(127+50*randn(1))-1);
            val = img(i,j);
            if val >= T
                dithered(i,j) = 255;
            end
        end
    end