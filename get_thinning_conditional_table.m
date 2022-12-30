function conditional_table = get_thinning_conditional_table()
    % Bond 4
    conditional_table(:, :, 17) = [0 1 0; 0 1 1; 0 0 0];
    conditional_table(:, :, 18) = [0 1 0; 1 1 0; 0 0 0];
    conditional_table(:, :, 19) = [0 0 0; 1 1 0; 0 1 0];
    conditional_table(:, :, 20) = [0 0 0; 0 1 1; 0 1 0];
    conditional_table(:, :, 21) = [0 0 1; 0 1 1; 0 0 1];
    conditional_table(:, :, 22) = [1 1 1; 0 1 0; 0 0 0];
    conditional_table(:, :, 23) = [1 0 0; 1 1 0; 1 0 0];
    conditional_table(:, :, 24) = [0 0 0; 0 1 0; 1 1 1];

    % Bond 5
    conditional_table(:, :, 25) = [1 1 0; 0 1 1; 0 0 0];
    conditional_table(:, :, 26) = [0 1 0; 0 1 1; 0 0 1];
    conditional_table(:, :, 27) = [0 1 1; 1 1 0; 0 0 0];
    conditional_table(:, :, 28) = [0 0 1; 0 1 1; 0 1 0];
    conditional_table(:, :, 29) = [0 1 1; 0 1 1; 0 0 0];
    conditional_table(:, :, 30) = [1 1 0; 1 1 0; 0 0 0];
    conditional_table(:, :, 31) = [0 0 0; 1 1 0; 1 1 0];
    conditional_table(:, :, 32) = [0 0 0; 0 1 1; 0 1 1];

    % Bond 6
    conditional_table(:, :, 33) = [1 1 0; 0 1 1; 0 0 1];
    conditional_table(:, :, 34) = [0 1 1; 1 1 0; 1 0 0];
    conditional_table(:, :, 35) = [1 1 1; 0 1 1; 0 0 0];
    conditional_table(:, :, 36) = [0 1 1; 0 1 1; 0 0 1];
    conditional_table(:, :, 37) = [1 1 1; 1 1 0; 0 0 0];
    conditional_table(:, :, 38) = [1 1 0; 1 1 0; 1 0 0];
    conditional_table(:, :, 39) = [1 0 0; 1 1 0; 1 1 0];
    conditional_table(:, :, 40) = [0 0 0; 1 1 0; 1 1 1];
    conditional_table(:, :, 41) = [0 0 0; 0 1 1; 1 1 1];
    conditional_table(:, :, 42) = [0 0 1; 0 1 1; 0 1 1];

    % Bond 7
    conditional_table(:, :, 43) = [1 1 1; 0 1 1; 0 0 1];
    conditional_table(:, :, 44) = [1 1 1; 1 1 0; 1 0 0];
    conditional_table(:, :, 45) = [1 0 0; 1 1 0; 1 1 1];
    conditional_table(:, :, 46) = [0 0 1; 0 1 1; 1 1 1];

    % Bond 8
    conditional_table(:, :, 47) = [0 1 1; 0 1 1; 0 1 1];
    conditional_table(:, :, 48) = [1 1 1; 1 1 1; 0 0 0];
    conditional_table(:, :, 49) = [1 1 0; 1 1 0; 1 1 0];
    conditional_table(:, :, 50) = [0 0 0; 1 1 1; 1 1 1];

    % Bond 9
    conditional_table(:, :, 51) = [1 1 1; 0 1 1; 0 1 1];
    conditional_table(:, :, 52) = [0 1 1 ; 0 1 1; 1 1 1];
    conditional_table(:, :, 53) = [1 1 1; 1 1 1; 1 0 0];
    conditional_table(:, :, 54) = [1 1 1; 1 1 1; 0 0 1];
    conditional_table(:, :, 55) = [1 1 1; 1 1 0; 1 1 0];
    conditional_table(:, :, 56) = [1 1 0; 1 1 0; 1 1 1];
    conditional_table(:, :, 57) = [1 0 0 ; 1 1 1; 1 1 1];
    conditional_table(:, :, 58) = [0 0 1; 1 1 1; 1 1 1];

    % Bond 10
    conditional_table(:, :, 59) = [1 1 1; 0 1 1; 1 1 1]; 
    conditional_table(:, :, 60) = [1 1 1; 1 1 1; 1 0 1];
    conditional_table(:, :, 61) = [1 1 1; 1 1 0; 1 1 1];
    conditional_table(:, :, 62) = [1 0 1; 1 1 1; 1 1 1];