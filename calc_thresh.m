function thresh = calc_thresh(derivative_mat, thresh_frac)
    N = size(derivative_mat, 1) * size(derivative_mat, 2);
    max_cumdist_val = N * thresh_frac;
    hist = xyj_hist(derivative_mat);
    cumdist = cum_dist(hist);

    i=1;
    thresh = 0;
    while cumdist(i) < max_cumdist_val
        thresh = i;
        i = i+1;
    end
