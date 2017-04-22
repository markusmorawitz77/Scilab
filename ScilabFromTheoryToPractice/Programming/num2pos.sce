function  [i,j]=num2pos(k)
    //S = sudoku with 9 rows and 9 columns 
    //k = element's position number 
    //(i,j)=position of the entry in the sudoku
    i=1+pmodulo(k-1,9)
    j=1+(k-i)/9
endfunction
