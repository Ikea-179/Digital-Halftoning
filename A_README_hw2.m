% CS 207 HW 2
% Nov 17, 2022
% Name: Yijia Xue
% NetID: yx179
% Email: yx179@duke.edu

% Note: The directory structure should be the same as the following:
% > project_dir
%       > Images
%       > output
%       src_file1.m
%       src_file2.m
%       . . .

% Where project_dir contains all source files, and /Images contains 
% images to be read /output stores all the generated images

%% Problem 1: Edge Detection (30%)
% (a) Basic edge detection algorithms
%% 1-a-1 | First Order Derivative Gradient Edge Detection
% M-file name: edge_detect_1st_main.m
% Usage: edge_detect_1st_main(img_name, operator, threshold_fraction)
% Variable Explaination:
% img_name = string name of image (exclude "Images/")
% operator = first order derivative discrete approximation operator
% options: pixel_diff, sep_pixel_diff, roberts, sobel, frei_chen, prewitt
% threshold_fraction = fraction (0-1) of pixels considered background
% based on derivative value 
% Example:
% 0.75 = consider bottom 75% of pixel derivative values to be background pixels
% 0 = include all pixel derivative values
% 1 = exclude all pixel derivative values
% Output image: "output/OUT_edge_detect_1st_main" + img_name
% Parameters: operator=prewitt, thresh_frac=0.75
edge_detect_1st_main("building.raw", "pixel_diff", 0.75);
edge_detect_1st_main("building_noise.raw", "pixel_diff", 0.75);
edge_detect_1st_main("building.raw", "sep_pixel_diff", 0.75);
edge_detect_1st_main("building_noise.raw", "sep_pixel_diff", 0.75);
edge_detect_1st_main("building.raw", "roberts", 0.75);
edge_detect_1st_main("building_noise.raw", "roberts", 0.75);
edge_detect_1st_main("building.raw", "sobel", 0.75);
edge_detect_1st_main("building_noise.raw", "sobel", 0.75);
edge_detect_1st_main("building.raw", "frei_chen", 0.75);
edge_detect_1st_main("building_noise.raw", "frei_chen", 0.75);
edge_detect_1st_main("building.raw", "prewitt", 0.75);
edge_detect_1st_main("building_noise.raw", "prewitt", 0.75);

%% 1-a-2 | Second Order Derivative Gradient Edge Detection
% M-file name: edge_detect_2nd_main.m
% Usage: edge_detect_2nd_main(img_name, operator, threshold)
% img_name = string name of image (exclude "Images/")
% operator = second order derivative discrete approximation operator
% options: laplacian, prewitt, sep_laplacian
% threshold_fraction = fraction (0-1) of pixels considered background
% based on derivative value 
% Ex:
% 0.6 = consider bottom 60% of pixel derivative values to be
% background pixels
% 0 = include all pixel derivative values
% 1 = exclude all pixel derivative values
% Output image: "output/OUT_edge_detect_2nd_main" + img_name
% Parameters: operator=laplacian, thresh_frac=0.6
edge_detect_2nd_main("building.raw", "laplacian", 0.6);
edge_detect_2nd_main("building_noise.raw", "laplacian", 0.6);
edge_detect_2nd_main("building.raw", "prewitt", 0.6);
edge_detect_2nd_main("building_noise.raw", "prewitt", 0.6);
edge_detect_2nd_main("building.raw", "sep_laplacian", 0.6);
edge_detect_2nd_main("building_noise.raw", "sep_laplacian", 0.6);

%% (b) Advanced edge detection algorithms
%% 1-b-1 | First Order Derivative Enhanced
% M-file name: edge_detect_1st_prepost.m
% Usage: edge_detect_1st_prepost(img_name, operator, threshold)
% img_name = string name of image (exclude "Images/")
% operator = first order derivative discrete approximation operator
% options: pixel_diff, sep_pixel_diff, roberts, sobel, frei_chen, prewitt
% threshold_fraction = fraction (0-1) of pixels considered background
% based on derivative value 
% Example:
% 0.75 = consider bottom 75% of pixel derivative values to be background pixels
% 0 = include all pixel derivative values
% 1 = exclude all pixel derivative values
% Output image: "output/OUT_edge_detect_1st_prepost_contrast" + img_name
%               "output/OUT_edge_detect_1st_prepost_noise" + img_name
% Parameters: operator, thresh_frac

% Display histogram
img_name = 'building.raw';
img = readraw("Images/" + img_name);
newhist = xyj_hist(img);
figure("Name", img_name + " histogram", "NumberTitle", "off");
bar(newhist);
xlabel('pixel value');
ylabel('number pixels');
edge_detect_1st_prepost_contrast("building.raw", "prewitt", 0.65);
edge_detect_1st_prepost_noise("building_noise.raw", "prewitt", 0.75);
[edge_detected1,a] = edge_detect_1st_prepost_contrast("building.raw", "prewitt", 0.65);
mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
preprocessed2 = xyj_convolve(edge_detected1, mask2);
project_show(preprocessed2, "building.raw", ...
        "1st edge detected with noise reduction mask1 post linear pre");
medianed = applyMedianFilter(edge_detected1, 3);
project_show(medianed, "building.raw", ...
        "1st edge detected with median noise reduction  post linear pre");
[edge_detected1,a] = edge_detect_1st_prepost_noise("building_noise.raw", "prewitt", 0.7);
mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
preprocessed2 = xyj_convolve(edge_detected1, mask2);
project_show(preprocessed2, "building_noise.raw", ...
        "1st edge detected with noise reduction mask1 post noise reduction mask1 pre");
medianed = applyMedianFilter(edge_detected1, 3);
medianed = applyMedianFilter(medianed, 3);
medianed = applyMedianFilter(medianed, 3);
project_show(medianed, "building_noise.raw", ...
        "1st edge detected with median noise reduction  noise reduction post mask1 pre");

%% 1-b-2 | Second Order Derivative Enhanced
% M-file name: edge_detect_2nd_prepost.m
% Usage: edge_detect_2nd_prepost(img_name, operator, threshold)
% img_name = string name of image (exclude "Images/")
% operator = second order derivative discrete approximation operator
% options: laplacian, prewitt, sep_laplacian
% threshold_fraction = fraction (0-1) of pixels considered background based on derivative value 
% Example:
% 0.55 = consider bottom 55% of pixel derivative values to be background pixels
% 0 = include all pixel derivative values
% 1 = exclude all pixel derivative values
% Output image: "output/OUT_edge_detect_2nd_prepost_contrast" + img_name
%               "output/OUT_edge_detect_2nd_prepost_noise" + img_name
% Parameters: operator, thresh_frac
edge_detect_2nd_prepost_contrast("building.raw", "laplacian", 0.55);
edge_detect_2nd_prepost_noise("building_noise.raw", "laplacian", 0.6);
[edge_detected1,a] = edge_detect_2nd_prepost_contrast("building.raw", "prewitt", 0.55);
mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
preprocessed2 = xyj_convolve(edge_detected1, mask2);
project_show(preprocessed2, "building.raw", ...
        "2nd edge detected with noise reduction mask1 post linear pre");
medianed = applyMedianFilter(edge_detected1, 3);
project_show(medianed, "building.raw", ...
        "2nd edge detected with median noise reduction  post linear pre");
[edge_detected1,a,c] = edge_detect_2nd_prepost_noise("building_noise.raw", "prewitt", 0.7);
mask2 = [1/9,1/9,1/9; 1/9,1/9,1/9; 1/9,1/9,1/9];
preprocessed2 = xyj_convolve(edge_detected1, mask2);
project_show(preprocessed2, "building_noise.raw", ...
        "2nd edge detected with noise reduction mask1 post noise reduction mask1 pre");
medianed = applyMedianFilter(edge_detected1, 3);
medianed = applyMedianFilter(medianed, 3);
medianed = applyMedianFilter(medianed, 3);
project_show(medianed, "building_noise.raw", ...
        "2nd edge detected with median noise reduction  noise reduction post mask1 pre");
%% Problem 2: Morphological Processing(30%)
%% 2-a | Shrinking - Morphological Image Processing
% M-file name: shrink_patterns_pcb.m
% Usage: shrink_patterns_pcb(num_iterations)
% Output image: "output/OUT_shrunk_patterns.raw"
%               "output/OUT_shrunk_pcb.raw"
% Parameters: num_iterations(this is set to be a large enough number to let
% the algorithm converge)
shrink_patterns_pcb(1000);

%% 2-b | Thinning - Morphological Image Processing
% M-file name: thin_patterns_pcb.m
% Usage: thin_patterns_pcb(num_iterations)
% Output image: "output/OUT_thinned_patterns.raw"
%               "output/OUT_thinned_pcb.raw"
% Parameters: num_iterations(this is set to be a large enough number to let
% the algorithm converge)
thin_patterns_pcb(1000);

%% 2-c | Skeletonizing - Morphological Image Processing
% M-file name: skeletonize_patterns_pcb.m
% Usage: skeletonize_patterns_pcb(num_iterations)
% Output images: "output/OUT_skeleton_patterns.raw"
%               "output/OUT_skeleton_pcb.raw"
% Parameters: num_iterations(this is set to be a large enough number to let
% the algorithm converge)
skeletonize_patterns_pcb(1000);

%% Problem 3: Digital Halftoning (40%)
%% 3-a | Fixed Threshold Dithering - Digital Halftoning
% M-file name: fixed_thresh_dither_barbara.m
% Usage: fixed_thresh_dither_barbara()
% Output image: "output/OUT_fixed_dither_barbara.raw"
fixed_thresh_dither();

%% 3-b | Random Dithering - Digital Halftoning
% M-file name: random_dither_barabara.m
% Usage: random_dither_barabara()
% Output image: "output/OUT_rand_dither_barbara.raw"
% Random number generator: randi(Uniform)/randn(Gaussian)[mean:127 std:50/100]
random_dither();

%% 3-c | Dithering Matrix (Pattern) - Digital Halftoning
% M-file name: dither_matrix_barbara.m
% Usage: dither_matrix()
% Output images: "output/OUT_mat_dither_2L2x2_barbara.raw"
%                "output/OUT_mat_dither_2L4x4_barbara.raw"
%                "output/OUT_mat_dither_4L2x2_barbara.raw"
%                "output/OUT_mat_dither_4L4x4_barbara.raw"
dither_matrix();

%% 3-d | Floyd-Steinberg's Error Diffusion w/ Serpentine Scanning
% M-file name: floyd_steinberg_barbara.m
% Usage: floyd_steinberg()
% Output images: "output/OUT_floyd_steinberg_dither_barbara.raw"
floyd_steinberg();