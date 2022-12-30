function skeletonize_patterns_pcb(num_iterations)
    patterns = readraw("Images/patterns.raw");
    skeleton_patterns = morph(patterns, num_iterations, 'skeletonize');
    writeraw(skeleton_patterns, "output/OUT_skeleton_patterns.raw");
    project_show(skeleton_patterns, "output/patterns.raw", ...
        "skeletonized: " + num_iterations + " iterations");

    pcb = readraw("Images/pcb.raw");
    skeleton_pcb = morph(pcb, num_iterations, 'skeletonize');
    writeraw(skeleton_pcb, "output/OUT_skeleton_pcb.raw");
    project_show(skeleton_pcb, "output/pcb.raw", ...
        "skeletonized: " + num_iterations + " iterations");