// system of 3 equations with 3 unknowns 
A=[2 1 1;1 2 1;1 1 2]
X=[1;2;3]
Y=A*X
// compute the inverse of A 
I=A^(-1),inv(A),1/A
// solve the system 
I*Y    //=X
// error 19 if there is no inverse
inv(ones(2,2))
