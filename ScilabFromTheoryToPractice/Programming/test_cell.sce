function bool=test_cell(i,j,S)
    // S= sudoku
    //(i,j)= cell to check in sudoku S
    // bool= True if S(i,j) is consistent with the rest of the sudoku, 
    // False otherwise 
    value=S(i,j) // retrieve the value of S(i,j)
    S(i,j)=0      // set element (i,j) to 0 
    row=S(i,:)
    column=S(:,j)
    r=pos2region(i,j)
    [i1,i2,j1,j2]=region2pos(r)
    region=S(i1:i2,j1:j2)
    bool=and(row<>value)&and(column<>value)&and(region<>value)&(value<=9)&(value>0)
endfunction
