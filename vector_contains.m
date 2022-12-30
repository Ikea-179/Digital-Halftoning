function is_present = vector_contains(V, val)
    len = size(V, 1);
    is_present = false;

    for i=1:len
       if V(i) == val
           is_present = true;
       end
    end