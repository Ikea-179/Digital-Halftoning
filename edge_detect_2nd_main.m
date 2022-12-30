function edge_detected = edge_detect_2nd_main(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    edge_detected = edge_detect_2nd(img, operator, thresh_frac);    
    writeraw(edge_detected, "output/OUT_edge_detect_2nd_main" + img_name);
    project_show(edge_detected, img_name, operator+"2nd edge detected");
