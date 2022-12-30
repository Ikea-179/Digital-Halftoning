function I = generate_index_matrix(N)

    % Initial 2x2 matrix
    I = [0 0; 0 0]; 
    
    i = 1;
    while i < N
        prev_i = i;
        i = i * 2; 
        I2N = zeros(i);
        
        for j=1:i
            for y=1:prev_i
                for x=1:prev_i
                    I2N(y*j,x*j) = [
                end
            end
        end

    end