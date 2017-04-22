function P=possibility(i,j,S)
    // S= matrix with 9 rows and 9 columns = sudoku
    //(i,j)= cell of interest in sudoku S
    // P= list of possible values out of {1;2;...;9} 
    // for element (i,j) 
    S(i,j)=0//we set element (i,j) to 0 
    A=unique(S(i,:))  //  values in row i
    A=A(find(A<>0))   // remove the value 0
    B=unique(S(:,j))  //  values in column j
    B=B(find(B<>0))   // remove the value 0
    //values already used in the region
    r=pos2region(i,j) 
    [i1,i2,j1,j2]=region2pos(r)
    C=unique(S(i1:i2,j1:j2))
    C=C(find(C<>0))   // remove the value 0
    //  union of all values already used
    E=union(A,union(B,C))
    // remaining options
    P=[1:9],P(E)=[]
endfunction
