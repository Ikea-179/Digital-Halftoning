function dithered = floyd_steinberg_dither(img)
    num_rows = size(img, 1);
    num_cols = size(img, 2);
    
    dithered = zeros(num_rows, num_cols, 'double');
    img = double(img);
    left2right = true;
    
    for i=1:num_rows
        if left2right
            for j=1:num_cols
                old_val = img(i,j);
                new_val = closest_palette_color(old_val);
                dithered(i,j) = new_val;
                err = double(old_val) - double(new_val);

                if j+1 <= num_cols
                    img(i,j+1)   = double(img(i,j+1)) + err * (7.0/16.0);
                end
                if i+1 <= num_rows && j-1 > 0
                    img(i+1,j-1) = double(img(i+1,j-1)) + err * (3.0/16.0);
                end
                if i+1 <= num_rows
                    img(i+1,j)   = double(img(i+1,j)) + err * (5.0/16.0);
                end
                if i+1 <= num_rows && j+1 <= num_cols
                    img(i+1,j+1) = double(img(i+1,j+1)) + err * (1.0/16.0);
                end
            end
            left2right = false;
        else
            for j=num_cols:-1:1
                old_val = img(i,j);
                new_val = closest_palette_color(old_val);
                dithered(i,j) = new_val;
                err = double(old_val - new_val);

                if j-1 > 0
                    img(i,j-1)   = double(img(i,j-1)) + err * (7.0/16.0);
                end
                if i+1 <= num_rows && j-1 > 0
                    img(i+1,j-1) = double(img(i+1,j-1)) + err * (1.0/16.0);
                end
                if i+1 <= num_rows
                    img(i+1,j)   = double(img(i+1,j)) + err * (5.0/16.0);
                end
                if i+1 <= num_rows && j+1 <= num_cols
                    img(i+1,j+1) = double(img(i+1,j+1)) + err * (3.0/16.0);
                end
            end
            left2right = true;
        end
    end
    
    dithered = uint8(dithered);
    
    function quantized_val = closest_palette_color(v)
        if v > (255.0/2.0)
            quantized_val = 255;
        else
            quantized_val = 0;
        end