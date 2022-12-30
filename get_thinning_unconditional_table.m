function unconditional_table = get_thinning_unconditional_table()
    % Spur    
    unconditional_table(:,:,1)   = [ 0 0 1; 0 1 0; 0 0 0 ];
    unconditional_table(:,:,2)   = [ 1 0 0; 0 1 0; 0 0 0 ];
    % Single 4-connection
    unconditional_table(:,:,3)   = [ 0 0 0; 0 1 0; 0 1 0 ];
    unconditional_table(:,:,4)   = [ 0 0 0; 0 1 1; 0 0 0 ];
    % 4-connected Offset
    unconditional_table(:,:,5)   = [ 0 1 1; 1 1 0; 0 0 0 ];
    unconditional_table(:,:,6)   = [ 1 1 0; 0 1 1; 0 0 0 ];
    unconditional_table(:,:,7)   = [ 0 1 0; 0 1 1; 0 0 1 ];
    unconditional_table(:,:,8)   = [ 0 0 1; 0 1 1; 0 1 0 ];
    % Spur Corner Cluster A=1 B=0
    unconditional_table(:,:,9)   = [ 0 1 1; 0 1 0; 1 0 0 ];
    unconditional_table(:,:,10)  = [ 1 0 0; 1 1 0; 0 0 1 ];
    unconditional_table(:,:,11)  = [ 0 0 1; 1 1 0; 1 0 0 ];
    unconditional_table(:,:,12)  = [ 1 0 0; 0 1 0; 0 1 1 ];
    % Spur Corner Cluster A=0 B=1
    unconditional_table(:,:,13)  = [ 0 0 1; 0 1 1; 1 0 0 ];
    unconditional_table(:,:,14)  = [ 1 1 0; 0 1 0; 0 0 1 ];
    unconditional_table(:,:,15)  = [ 0 0 1; 0 1 0; 1 1 0 ];
    unconditional_table(:,:,16)  = [ 1 0 0; 0 1 1; 0 0 1 ];
    % Spur Corner Cluster A=1 B=1
    unconditional_table(:,:,17)  = [ 0 1 1; 0 1 1; 1 0 0 ];
    unconditional_table(:,:,18)  = [ 1 1 0; 1 1 0; 0 0 1 ];
    unconditional_table(:,:,19)  = [ 0 0 1; 1 1 0; 1 1 0 ];
    unconditional_table(:,:,20)  = [ 1 0 0; 0 1 1; 0 1 1 ];
    % Corner Cluster D = 0
    unconditional_table(:,:,21)  = [ 1 1 0; 1 1 0; 0 0 0 ];
    % Corner Cluster D = 1 ?
    unconditional_table(:,:,22)  = [ 1 1 0; 1 1 0; 0 0 0 ];
    % Tee Branch D = 0
    unconditional_table(:,:,23)  = [ 0 1 0; 1 1 1; 0 0 0 ];
    unconditional_table(:,:,24)  = [ 0 1 0; 1 1 1; 0 0 0 ];
    unconditional_table(:,:,25)  = [ 0 0 0; 1 1 1; 0 1 0 ];
    unconditional_table(:,:,26)  = [ 0 0 0; 1 1 1; 0 1 0 ];    
    unconditional_table(:,:,27)  = [ 0 1 0; 1 1 0; 0 1 0 ];
    unconditional_table(:,:,28)  = [ 0 1 0; 1 1 0; 0 1 0 ];
    unconditional_table(:,:,29)  = [ 0 1 0; 0 1 1; 0 1 0 ];
    unconditional_table(:,:,30)  = [ 0 1 0; 0 1 1; 0 1 0 ];
    % Tee Branch D = 1
    unconditional_table(:,:,31)  = [ 1 1 0; 1 1 1; 1 0 0 ];
    unconditional_table(:,:,32)  = [ 0 1 1; 1 1 1; 0 0 1 ];
    unconditional_table(:,:,33)  = [ 0 0 1; 1 1 1; 0 1 1 ];
    unconditional_table(:,:,34)  = [ 1 0 0; 1 1 1; 1 1 0 ];
    unconditional_table(:,:,35)  = [ 1 1 1; 1 1 0; 0 1 0 ];
    unconditional_table(:,:,36)  = [ 0 1 0; 1 1 0; 1 1 1 ];
    unconditional_table(:,:,37)  = [ 0 1 0; 0 1 1; 1 1 1 ];
    unconditional_table(:,:,38)  = [ 1 1 1; 0 1 1; 0 1 0 ];
    % Vee branch
    % 1
    unconditional_table(:,:,39)  = [ 1 0 1; 0 1 0; 0 0 1 ];
    unconditional_table(:,:,40)  = [ 1 1 1; 1 1 1; 0 0 1 ];
    unconditional_table(:,:,41)  = [ 1 0 1; 0 1 0; 0 1 0 ];
    unconditional_table(:,:,42)  = [ 1 1 1; 1 1 1; 0 1 0 ];
    unconditional_table(:,:,43)  = [ 1 0 1; 0 1 0; 0 1 1 ];
    unconditional_table(:,:,44)  = [ 1 1 1; 1 1 1; 0 1 1 ];
    unconditional_table(:,:,45)  = [ 1 0 1; 0 1 0; 1 0 0 ];
    unconditional_table(:,:,46)  = [ 1 1 1; 1 1 1; 1 0 0 ];
    unconditional_table(:,:,47)  = [ 1 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,48)  = [ 1 1 1; 1 1 1; 1 0 1 ];
    unconditional_table(:,:,49)  = [ 1 0 1; 0 1 0; 1 1 0 ];
    unconditional_table(:,:,50)  = [ 1 1 1; 1 1 1; 1 1 0 ];
    unconditional_table(:,:,51)  = [ 1 0 1; 0 1 0; 1 1 1 ];
    unconditional_table(:,:,52)  = [ 1 1 1; 1 1 1; 1 1 1 ];
    % 2
    unconditional_table(:,:,53)  = [ 1 0 1; 0 1 0; 1 0 0 ];
    unconditional_table(:,:,54)  = [ 1 1 1; 1 1 0; 1 1 0 ];
    unconditional_table(:,:,55)  = [ 1 0 0; 0 1 1; 1 0 0 ];
    unconditional_table(:,:,56)  = [ 1 1 0; 1 1 1; 1 1 0 ];
    unconditional_table(:,:,57)  = [ 1 0 1; 0 1 1; 1 0 0 ];
    unconditional_table(:,:,58)  = [ 1 1 1; 1 1 1; 1 1 0 ];
    unconditional_table(:,:,59)  = [ 1 0 0; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,60)  = [ 1 1 0; 1 1 0; 1 1 1 ];
    unconditional_table(:,:,61)  = [ 1 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,62)  = [ 1 1 1; 1 1 0; 1 1 1 ];
    unconditional_table(:,:,63)  = [ 1 0 0; 0 1 1; 1 0 1 ];
    unconditional_table(:,:,64)  = [ 1 1 0; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,65)  = [ 1 0 1; 0 1 1; 1 0 1 ];
    unconditional_table(:,:,66)  = [ 1 1 1; 1 1 1; 1 1 1 ];
    % 3
    unconditional_table(:,:,67)  = [ 1 0 0; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,68)  = [ 1 0 0; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,69)  = [ 0 1 0; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,70)  = [ 0 1 0; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,71)  = [ 1 1 0; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,72)  = [ 1 1 0; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,73)  = [ 0 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,74)  = [ 0 0 1; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,75)  = [ 1 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,76)  = [ 1 0 1; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,77)  = [ 0 1 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,78)  = [ 0 1 1; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,79)  = [ 1 1 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,80)  = [ 1 1 1; 1 1 1; 1 1 1 ];
    % 4
    unconditional_table(:,:,80)  = [ 0 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,81)  = [ 0 1 1; 0 1 1; 1 1 1 ];
    unconditional_table(:,:,82)  = [ 0 0 1; 1 1 0; 0 0 1 ];
    unconditional_table(:,:,83)  = [ 0 1 1; 1 1 1; 0 1 1 ];
    unconditional_table(:,:,84)  = [ 0 0 1; 1 1 0; 1 0 1 ];
    unconditional_table(:,:,85)  = [ 0 1 1; 1 1 1; 1 1 1 ];
    unconditional_table(:,:,86)  = [ 1 0 1; 0 1 0; 0 0 1 ];
    unconditional_table(:,:,87)  = [ 1 1 1; 0 1 1; 0 1 1 ];
    unconditional_table(:,:,88)  = [ 1 0 1; 0 1 0; 1 0 1 ];
    unconditional_table(:,:,89)  = [ 1 1 1; 0 1 1; 1 1 1 ];
    unconditional_table(:,:,90)  = [ 1 0 1; 1 1 0; 0 0 1 ];
    unconditional_table(:,:,91)  = [ 1 1 1; 1 1 1; 0 1 1 ];
    unconditional_table(:,:,92)  = [ 1 0 1; 1 1 0; 1 0 1 ];
    unconditional_table(:,:,93)  = [ 1 1 1; 1 1 1; 1 1 1 ];
    % Diagonal Branch D = 0
    unconditional_table(:,:,94)  = [ 0 1 0; 0 1 1; 1 0 1 ];
    unconditional_table(:,:,95)  = [ 0 1 0; 1 1 0; 0 0 1 ];
    unconditional_table(:,:,96)  = [ 0 0 1; 1 1 0; 0 1 0 ];
    unconditional_table(:,:,97)  = [ 1 0 0; 0 1 1; 0 1 0 ];
    % Diagonal Branch D = 1
    unconditional_table(:,:,98)  = [ 1 1 0; 0 1 1; 1 0 1 ];
    unconditional_table(:,:,99)  = [ 0 1 1; 1 1 0; 1 0 1 ];
    unconditional_table(:,:,100) = [ 1 0 1; 1 1 0; 0 1 1 ];
    unconditional_table(:,:,101) = [ 1 0 1; 0 1 1; 1 1 0 ];
    
    % L Cluster
    unconditional_table(:,:,102) = [ 0 0 1; 0 1 1; 0 0 0 ];
    unconditional_table(:,:,103) = [ 0 1 1; 0 1 0; 0 0 0 ];
    unconditional_table(:,:,104) = [ 1 1 0; 0 1 0; 0 0 0 ];
    unconditional_table(:,:,105) = [ 1 0 0; 1 1 0; 0 0 0 ];
    unconditional_table(:,:,106) = [ 0 0 0; 1 1 0; 1 0 0 ];
    unconditional_table(:,:,107) = [ 0 0 0; 0 1 0; 1 1 0 ];
    unconditional_table(:,:,108) = [ 0 0 0; 0 1 0; 0 1 1 ];
    unconditional_table(:,:,109) = [ 0 0 0; 0 1 1; 0 0 1 ];