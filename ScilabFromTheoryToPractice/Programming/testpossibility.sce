exec('scilab-base-program-load_sudoku-fct.sce',-1)  //to delete 
S=[ 5 3 0 0 8 0 0 2 0;
    8 0 0 0 4 2 0 0 0;
    0 0 1 3 0 6 0 8 0;
    6 5 3 0 0 0 1 0 2;
    2 1 4 6 0 3 5 7 8;
    9 0 8 0 0 0 3 6 4;
    0 6 0 5 0 1 8 0 0;
    0 0 0 4 6 0 0 0 5;
    0 4 0 0 3 0 0 1 6];
//  possible values of cell (1,3)  - >  6,7,9
P=possibility(1,3,S)  
