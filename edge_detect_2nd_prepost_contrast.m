function [edge_detected1,edge_detected2] = edge_detect_2nd_prepost_contrast(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    scaled = linear_scale(img);
    hist = xyj_hist(img);
    preprocessed = histeq(img, hist);
    edge_detected1 = edge_detect_2nd(scaled, operator, thresh_frac);
    edge_detected2 = edge_detect_2nd(preprocessed, operator, thresh_frac);
    writeraw(edge_detected1, "output/OUT_edge_detect_2nd_prepost_linear" + img_name);
    project_show(edge_detected1, img_name, "2nd edge detected preproc linear scaling");
    writeraw(edge_detected2, "output/OUT_edge_detect_2nd_prepost_histeq" + img_name);
    project_show(edge_detected2, img_name, "2nd edge detected preproc histeq");