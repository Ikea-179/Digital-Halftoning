function unconditional_table = get_skeleton_unconditional_table
    % Skeletonize
    % Spur
    unconditional_table(:, :, 1) = [0 0 0; 0 1 0; 0 0 1]; 
    unconditional_table(:, :, 2) = [0 0 0; 0 1 0; 1 0 0];
    unconditional_table(:, :, 3) = [0 0 1; 0 1 0; 0 0 0];
    unconditional_table(:, :, 4) = [1 0 0; 0 1 0; 0 0 0];

    % Single 4-Connection
    unconditional_table(:, :, 5) = [0 0 0; 0 1 0; 0 1 0];
    unconditional_table(:, :, 6) = [0 0 0; 0 1 1; 0 0 0];
    unconditional_table(:, :, 7) = [0 0 0; 1 1 0; 0 0 0];
    unconditional_table(:, :, 8) = [0 1 0; 0 1 0; 0 0 0];

    % L Corner
    unconditional_table(:, :, 9) = [0 1 0; 0 1 1; 0 0 0];
    unconditional_table(:, :, 10) = [0 1 0; 1 1 0; 0 0 0];
    unconditional_table(:, :, 11) = [0 0 0; 0 1 1; 0 1 0];
    unconditional_table(:, :, 12) = [0 0 0; 1 1 0; 0 1 0];

    % Corner Cluster
    unconditional_table(:, :, 13) = [1 1 0; 1 1 0; 0 0 0]; 
    unconditional_table(:, :, 14) = [0 0 0; 0 1 1; 0 1 1];
    unconditional_table(:, :, 15) = [1 1 1; 1 1 1; 1 1 1];

    % Tee Branch
    unconditional_table(:, :, 16) = [0 1 0; 1 1 1; 0 0 0];
    unconditional_table(:, :, 17) = [0 1 0; 1 1 0; 0 1 0];
    unconditional_table(:, :, 18) = [0 0 0; 1 1 1; 0 1 0];
    unconditional_table(:, :, 19) = [0 1 0; 0 1 1; 0 1 0];

    % Vee Branch
    unconditional_table(:, :, 20) = [1 0 1; 0 1 0; 0 0 1];
    unconditional_table(:, :, 21) = [1 1 1; 1 1 1; 0 0 1];
    unconditional_table(:, :, 22) = [1 0 1; 0 1 0; 0 1 0];
    unconditional_table(:, :, 23) = [1 1 1; 1 1 1; 0 1 0];
    unconditional_table(:, :, 24) = [1 0 1; 0 1 0; 0 1 1];
    unconditional_table(:, :, 25) = [1 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 26) = [1 0 1; 0 1 0; 1 0 0];
    unconditional_table(:, :, 27) = [1 1 1; 1 1 1; 1 0 0];
    unconditional_table(:, :, 28) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 29) = [1 1 1; 1 1 1; 1 0 1];
    unconditional_table(:, :, 30) = [1 0 1; 0 1 0; 1 1 0];
    unconditional_table(:, :, 31) = [1 1 1; 1 1 1; 1 1 0];
    unconditional_table(:, :, 32) = [1 0 1; 0 1 0; 1 1 1];
    unconditional_table(:, :, 33) = [1 1 1; 1 1 1; 1 1 1];

    unconditional_table(:, :, 33) = [1 0 1; 0 1 0; 1 0 0];
    unconditional_table(:, :, 34) = [1 1 1; 1 1 0; 1 1 0];
    unconditional_table(:, :, 35) = [1 0 0; 0 1 1; 1 0 0];
    unconditional_table(:, :, 36) = [1 1 0; 1 1 1; 1 1 0];
    unconditional_table(:, :, 37) = [1 0 1; 0 1 1; 1 0 0];
    unconditional_table(:, :, 38) = [1 1 1; 1 1 1; 1 1 0];
    unconditional_table(:, :, 39) = [1 0 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 40) = [1 1 0; 1 1 0; 1 1 1];
    unconditional_table(:, :, 41) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 42) = [1 1 1; 1 1 0; 1 1 1];
    unconditional_table(:, :, 43) = [1 0 0; 0 1 1; 1 0 1];
    unconditional_table(:, :, 44) = [1 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 45) = [1 0 1; 0 1 1; 1 0 1];
    unconditional_table(:, :, 46) = [1 1 1; 1 1 1; 1 1 1];

    unconditional_table(:, :, 47) = [1 0 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 48) = [1 0 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 49) = [0 1 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 50) = [0 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 51) = [1 1 0; 0 1 0; 1 0 1];
    unconditional_table(:, :, 52) = [1 1 0; 1 1 1; 1 1 1];
    unconditional_table(:, :, 53) = [0 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 54) = [0 0 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 55) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 56) = [1 0 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 57) = [0 1 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 58) = [0 1 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 59) = [1 1 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 60) = [1 1 1; 1 1 1; 1 1 1]; 

    unconditional_table(:, :, 61) = [0 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 62) = [0 1 1; 0 1 1; 1 1 1];
    unconditional_table(:, :, 63) = [0 0 1; 1 1 0; 0 0 1];
    unconditional_table(:, :, 64) = [0 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 65) = [0 0 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 66) = [0 1 1; 1 1 1; 1 1 1];
    unconditional_table(:, :, 67) = [1 0 1; 0 1 0; 0 0 1];
    unconditional_table(:, :, 68) = [1 1 1; 0 1 1; 0 1 1];
    unconditional_table(:, :, 69) = [1 0 1; 0 1 0; 1 0 1];
    unconditional_table(:, :, 70) = [1 1 1; 0 1 1; 1 1 1];
    unconditional_table(:, :, 71) = [1 0 1; 1 1 0; 0 0 1];
    unconditional_table(:, :, 72) = [1 1 1; 1 1 1; 0 1 1];
    unconditional_table(:, :, 73) = [1 0 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 74) = [1 1 1; 1 1 1; 1 1 1]; 

    % Diagonal Branch
    unconditional_table(:, :, 75) = [0 1 0; 0 1 1; 1 0 0];
    unconditional_table(:, :, 76) = [0 1 0; 1 1 0; 0 0 1];
    unconditional_table(:, :, 77) = [0 0 1; 1 1 0; 0 1 0];
    unconditional_table(:, :, 78) = [1 0 0; 0 1 1; 0 1 0];
    unconditional_table(:, :, 79) = [1 1 0; 0 1 1; 1 0 1];
    unconditional_table(:, :, 80) = [0 1 1; 1 1 0; 1 0 1];
    unconditional_table(:, :, 81) = [1 0 1; 1 1 0; 0 1 1];
    unconditional_table(:, :, 82) = [1 0 1; 0 1 1; 1 1 0];