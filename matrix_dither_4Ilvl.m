function dithered = matrix_dither_4Ilvl(img, I)
    % 4 gray values are: 0, 85, 170, 255
    num_rows = size(img, 1);
    num_cols = size(img, 2);
    
    dithered = zeros(num_rows, num_cols, 'uint8');
    
    N = size(I, 1);
    
    T = zeros(N, N, 'double');
    
    % Convert index matrix to threshold matrix
    for i=1:N
        for j=1:N
            T(i,j) = (I(i,j)+0.5) / (N*N);
        end
    end
    
    for i=1:num_rows
        for j=1:num_cols
            val = img(i,j);
            %Change this to use the cool rounding version from
            %Floyd steinberg dithering
            
            % Multiply by 255 since T is binary and 
            % img is uint8
            % add 1 cause matlab indexing
            thresh_mid = uint8(T(mod(j,N)+1, mod(i,N)+1) * 255);
            thresh_low = thresh_mid / 2;
            thresh_high = thresh_mid + (255-thresh_mid)/2;
            
            if val > thresh_high
                dithered(i,j) = 255;
            elseif val > thresh_mid && val <= thresh_high
                dithered(i,j) = 170;
            elseif val > thresh_low && val <= thresh_mid
                dithered(i,j) = 85;
            elseif val <= thresh_low
                dithered(i,j) = 0;
            end
        end
    end 