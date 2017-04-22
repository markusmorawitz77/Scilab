function [i1,i2,j1,j2]=region2pos(r)
    //sudoku with 9 rows and 9 columns 
    //r=region number 
    //(i1:i2,j1:j2)=corresponding sudoku zone
    column=pmodulo(r-1,3)
    j1=1+column*3
    j2=3+column*3
    row=(r-1-column)/3
    i1=1+row*3
    i2=3+row*3
endfunction
