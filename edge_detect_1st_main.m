function edge_detect_1st_main(img_name, operator, thresh_frac)
    img = readraw("Images/" + img_name);
    edge_detected = edge_detect_1st(img, operator, thresh_frac);
    writeraw(edge_detected, "output/OUT_edge_detect_1st_main" + img_name);
    project_show(edge_detected, img_name,...
        operator+"1st edge detected, top " + (1-thresh_frac) + "%");