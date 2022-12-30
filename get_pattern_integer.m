function id = get_pattern_integer(pattern)
    x = double(pattern(2,2));
    x0 = double(pattern(2,3));
    x1 = double(pattern(1,3));
    x2 = double(pattern(1,2));
    x3 = double(pattern(1,1));
    x4 = double(pattern(2,1));
    x5 = double(pattern(3,1));
    x6 = double(pattern(3,2));
    x7 = double(pattern(3,3));
    id = x + 2^1*x0 + 2^2*x1 + 2^3*x2 + 2^4*x3 + ...
         2^5*x4 + 2^6*x5 + 2^7*x6 + 2^8*x7;