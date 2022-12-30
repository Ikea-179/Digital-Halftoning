function [edge_detected1,edge_detected2] = edge_detect_1st_prepost_noise(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    
    % Denoise the image
    mask1 = [1/16,2/16,1/16;2/16,4/16,2/16;1/16,2/16,1/16];
    mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
    preprocessed1 = xyj_convolve(img, mask1);
    preprocessed2 = xyj_convolve(img, mask2);
    edge_detected1 = edge_detect_1st(preprocessed1, operator, thresh_frac);
    edge_detected2 = edge_detect_1st(preprocessed2, operator, thresh_frac);
    writeraw(edge_detected1, "output/OUT_edge_detect_1st_prepost_noise_mask1" + img_name);
    project_show(edge_detected1, img_name, ...
        "1st edge detected w/ noise reduction mask1");
    writeraw(edge_detected2, "output/OUT_edge_detect_1st_prepost_noise_mask2" + img_name);
    project_show(edge_detected1, img_name, ...
        "1st edge detected w/ noise reduction mask2");