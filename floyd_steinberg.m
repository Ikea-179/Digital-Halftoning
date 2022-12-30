function floyd_steinberg()
    img = readraw("Images/barbara.raw");
    dithered = floyd_steinberg_dither(img);
    writeraw(dithered, "output/OUT_floyd_steinberg_dither_barbara.raw");
    project_show(dithered, "Images/barbara.raw", "floyd steinberg dithered");