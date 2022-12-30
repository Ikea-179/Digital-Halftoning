function erased = remove_erasures(img, guide)
    num_rows = size(img, 1);
    num_cols = size(img, 2);

    erased = img;

    for i=1:num_rows
        for j=1:num_cols    
            % If guide says to erase
            if guide(i,j) == 255
                % Mark the pixel as black (the following invert procedure will turn it into background)
                erased(i, j) = 0;
            end
        end
    end