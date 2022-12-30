function result = minimax(S)
    L = length(S);
    M = floor((L+1)/2);
    maxes = zeros(L-M+1,1);
    
    for i=1:(L-M+1)
        maxes(i) = xyj_max(vec_range(S,i,i+M-1));
    end
    
    % Maybe change so it uses my own version of max()?
    result = xyj_min(maxes);