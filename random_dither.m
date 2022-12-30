function random_dither()
    img = readraw("Images/barbara.raw");
    dithered = random_dithering_uni(img);
    writeraw(dithered, "output/OUT_rand_uni_dither_barbara.raw");
    project_show(dithered, "Images/barbara.raw", "uniform random dithered");
    dithered = random_dithering_norm(img);
    writeraw(dithered, "output/OUT_rand_norm_dither_barbara.raw");
    project_show(dithered, "Images/barbara.raw", "normal random dithered");