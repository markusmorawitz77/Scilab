A=[1,2;3,4]
B=exp(A)    // element-wise exponent operator
log(B)
C=expm(A)    // matrix exponent
logm(C)
B=sqrt(A)    // element-wise square root
B.^2    //=A
C=sqrtm(A)    // matrix square root
C^2    //=A
sqrtm([1:4])    // error 
