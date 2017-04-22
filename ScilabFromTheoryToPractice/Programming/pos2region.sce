function r=pos2region(i,j)
    //sudoku with 9 rows and 9 columns 
    //r=number of the region associated to the element 
    //(i,j)=entry position in the sudoku
    r=1+floor((j-1)/3)+floor((i-1)/3)*3
endfunction
