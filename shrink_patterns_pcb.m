function shrink_patterns_pcb(num_iterations)
    patterns = readraw("Images/patterns.raw");
    shrunk_patterns = morph(patterns, num_iterations, 'shrink');
    writeraw(shrunk_patterns, "output/OUT_shrunk_patterns.raw");
    project_show(shrunk_patterns, "Images/patterns.raw", ...
        "shrunk: " + num_iterations + " iterations");

    
    pcb = readraw("Images/pcb.raw");
    shrunk_pcb = morph(pcb, num_iterations, 'shrink');
    writeraw(shrunk_pcb, "output/OUT_shrunk_pcb.raw");
    project_show(shrunk_pcb, "Images/pcb.raw",...
        "shrunk: " + num_iterations + " iterations");