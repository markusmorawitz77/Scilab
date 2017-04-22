A=eye(5,5)    //identity matrix
typeof(A)    //constant type
A=sparse(A)    //converts A into a sparse matrix
typeof(A)    // sparse type
A(3,2)=1    // sparse matrix value assignment
full(A)    //convert back to a "regular" matrix
sprand(5,5,0.2)    //"random" sparse matrix
