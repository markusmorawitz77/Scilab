// system of 3 equations with 3 unknowns 
A=[2 1 1;1 2 1;1 1 2]
X=[1;2;3]
Y=A*X
// solving for general case 
linsolve(A,-Y)    //=X
A\Y    // left division 
// system with multiple solutions 
A=[2 1 1 1;1 2 1 1;1 1 2 1]
X=[1;2;3;4]
Y=A*X
linsolve(A,-Y)    // solution different from X
A\Y    // different solution
// system with no solution 
A=[2 1 1;1 2 2 ;1 1 1]
Y=[1;2;3]
linsolve(A,-Y)    // no solution 
A\Y    //  "solution" approximation using least squares approach
