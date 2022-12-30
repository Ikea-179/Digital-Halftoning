function [edge_detected1,edge_detected2,edge_detected3]   = edge_detect_2nd_prepost_noise(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    
    mask1 = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
    filtered1 = xyj_convolve(img, mask1);
    filtered2 = xyj_convolve(img, mask2);
    medianed = applyMedianFilter(img, 3);
    edge_detected1 = edge_detect_2nd(filtered1, operator, thresh_frac);   
    edge_detected2 = edge_detect_2nd(filtered2, operator, thresh_frac);
    edge_detected3 = edge_detect_2nd(medianed, operator, thresh_frac);
    writeraw(edge_detected1, "output/OUT_edge_detect_2nd_prepost_noise_mask1" + img_name);
    project_show(edge_detected1, img_name, "2nd edge detected preproc noise mask1");
    writeraw(edge_detected2, "output/OUT_edge_detect_2nd_prepost_noise_mask2" + img_name);
    project_show(edge_detected2, img_name, "2nd edge detected preproc noise mask2");
    writeraw(edge_detected3, "output/OUT_edge_detect_2nd_prepost_noise_median" + img_name);
    project_show(edge_detected3, img_name, "2nd edge detected preproc noise median");