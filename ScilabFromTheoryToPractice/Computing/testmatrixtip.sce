A=[1 2 3; 4 5 6; 7 8 9]; // 3x3 matrix
A(4,5)=10 // this assignment increases the size of A 
A(:,4)=[-1;-2;-3;-4] // assign values to column 4
A(2:3,3:4) // retrieve rows 2,3 and columns 3,4
A([2,4],[1,5]) // retrieve rows 2,4 and columns 1,5
A(1,1:$-1) // extract line 1 from the first to the second-to-last column
