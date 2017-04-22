A=[1 2 3; 4 5 6; 7 8 9]    // 3x3 matrix (3 rows, 3 columns)
A(2,3)    // value stored at row 2, column 3
A(2,3)=-1    // modify the value at row 2 column 3
A(4,5)=10    // this assignment increases the size of A 
    // entry that doesn't exist in A
A(10,10)    // this call returns error 21
