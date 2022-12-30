function conditional_table = get_shrink_conditional_table()
    % Bond 1
    conditional_table(:,:,1)  = [ 0 0 1; 0 1 0; 0 0 0 ];
    conditional_table(:,:,2)  = [ 1 0 0; 0 1 0; 0 0 0 ];
    conditional_table(:,:,3)  = [ 0 0 0; 0 1 0; 1 0 0 ];
    conditional_table(:,:,4)  = [ 0 0 0; 0 1 0; 0 0 1 ];

    % Bond 2
    conditional_table(:,:,5)  = [ 0 0 0; 0 1 1; 0 0 0 ];
    conditional_table(:,:,6)  = [ 0 1 0; 0 1 0; 0 0 0 ];
    conditional_table(:,:,7)  = [ 0 0 0; 1 1 0; 0 0 0 ];
    conditional_table(:,:,8)  = [ 0 0 0; 0 1 0; 0 1 0 ];

    % Bond 3
    conditional_table(:,:,9)  = [ 0 0 1; 0 1 1; 0 0 0 ];
    conditional_table(:,:,10) = [ 0 1 1; 0 1 0; 0 0 0 ];
    conditional_table(:,:,11) = [ 1 1 0; 0 1 0; 0 0 0 ];
    conditional_table(:,:,12) = [ 1 0 0; 1 1 0; 0 0 0 ];
    conditional_table(:,:,13) = [ 0 0 0; 1 1 0; 1 0 0 ];
    conditional_table(:,:,14) = [ 0 0 0; 0 1 0; 1 1 0 ];
    conditional_table(:,:,15) = [ 0 0 0; 0 1 0; 0 1 1 ];
    conditional_table(:,:,16) = [ 0 0 0; 0 1 1; 0 0 1 ];

    % Bond 4
    conditional_table(:,:,17) = [ 0 0 1; 0 1 1; 0 0 1 ];
    conditional_table(:,:,18) = [ 1 1 1; 0 1 0; 0 0 0 ];
    conditional_table(:,:,19) = [ 1 0 0; 1 1 0; 1 0 0 ];
    conditional_table(:,:,20) = [ 0 0 0; 0 1 0; 1 1 1 ];

    % Bond 5
    conditional_table(:,:,21) = [ 1 1 0; 0 1 1; 0 0 0 ];
    conditional_table(:,:,22) = [ 0 1 0; 0 1 1; 0 0 1 ];
    conditional_table(:,:,23) = [ 0 1 1; 1 1 0; 0 0 0 ];
    conditional_table(:,:,24) = [ 0 0 1; 0 1 1; 0 1 0 ];
    conditional_table(:,:,25) = [ 0 1 1; 0 1 1; 0 0 0 ];
    conditional_table(:,:,26) = [ 1 1 0; 1 1 0; 0 0 0 ];
    conditional_table(:,:,27) = [ 0 0 0; 1 1 0; 1 1 0 ];
    conditional_table(:,:,28) = [ 0 0 0; 0 1 1; 0 1 1 ];

    % Bond 6
    conditional_table(:,:,29) = [ 1 1 0; 0 1 1; 0 0 1 ];
    conditional_table(:,:,30) = [ 0 1 1; 1 1 0; 1 0 0 ];
    conditional_table(:,:,31) = [ 1 1 1; 0 1 1; 0 0 0 ];
    conditional_table(:,:,32) = [ 0 1 1; 0 1 1; 0 0 1 ];
    conditional_table(:,:,33) = [ 1 1 1; 1 1 0; 0 0 0 ];
    conditional_table(:,:,34) = [ 1 1 0; 1 1 0; 1 0 0 ];
    conditional_table(:,:,35) = [ 1 0 0; 1 1 0; 1 1 0 ];
    conditional_table(:,:,36) = [ 0 0 0; 1 1 0; 1 1 1 ];
    conditional_table(:,:,37) = [ 0 0 0; 0 1 1; 1 1 1 ];
    conditional_table(:,:,38) = [ 0 0 1; 0 1 1; 0 1 1 ];

    % Bond 7
    conditional_table(:,:,39) = [ 1 1 1; 0 1 1; 0 0 1 ];
    conditional_table(:,:,40) = [ 1 1 1; 1 1 0; 1 0 0 ];
    conditional_table(:,:,41) = [ 1 0 0; 1 1 0; 1 1 1 ];
    conditional_table(:,:,42) = [ 0 0 1; 0 1 1; 1 1 1 ];

    % Bond 8
    conditional_table(:,:,43) = [ 0 1 1; 0 1 1; 0 1 1 ];
    conditional_table(:,:,44) = [ 1 1 1; 1 1 1; 0 0 0 ];
    conditional_table(:,:,45) = [ 1 1 0; 1 1 0; 1 1 0 ];
    conditional_table(:,:,46) = [ 0 0 0; 1 1 1; 1 1 1 ];

    % Bond 9
    conditional_table(:,:,47) = [ 1 1 1; 0 1 1; 0 1 1 ];
    conditional_table(:,:,48) = [ 0 1 1; 0 1 1; 1 1 1 ];
    conditional_table(:,:,49) = [ 1 1 1; 1 1 1; 1 0 0 ];
    conditional_table(:,:,50) = [ 1 1 1; 1 1 1; 0 0 1 ];
    conditional_table(:,:,51) = [ 1 1 1; 1 1 0; 1 1 0 ];
    conditional_table(:,:,52) = [ 1 1 0; 1 1 0; 1 1 1 ];
    conditional_table(:,:,53) = [ 1 0 0; 1 1 1; 1 1 1 ];
    conditional_table(:,:,54) = [ 0 0 1; 1 1 1; 1 1 1 ];

    % Bond 10
    conditional_table(:,:,55) = [ 1 1 1; 0 1 1; 1 1 1 ]; 
    conditional_table(:,:,56) = [ 1 1 1; 1 1 1; 1 0 1 ];
    conditional_table(:,:,57) = [ 1 1 1; 1 1 0; 1 1 1 ];
    conditional_table(:,:,58) = [ 1 0 1; 1 1 1; 1 1 1 ];