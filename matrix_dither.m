function dithered = matrix_dither(img, I)
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
            % Multiply by 255 since T is binary and 
            % img is uint8
            % add 1 cause matlab indexing
            thresh = T(mod(j,N)+1, mod(i,N)+1) * 255;
            if val > uint8(thresh)
                dithered(i,j) = 255;
            end
        end
    end 