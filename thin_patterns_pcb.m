function thin_patterns_pcb(num_iterations)
    patterns = readraw("Images/patterns.raw");
    thinned_pattern = morph(patterns, num_iterations, 'thin');
    writeraw(thinned_pattern, "output/OUT_thinned_patterns.raw");
    project_show(thinned_pattern, "Images/patterns.raw", ...
    "thinned: " + num_iterations + " iterations");

    pcb = readraw("Images/pcb.raw");
    thinned_pcb = morph(pcb, num_iterations, 'thin');
    writeraw(thinned_pcb, "output/OUT_thinned_pcb.raw");
    project_show(thinned_pcb, "Images/pcb.raw", ...
    "thinned: " + num_iterations + " iterations");