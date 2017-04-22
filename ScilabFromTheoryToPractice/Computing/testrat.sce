P=poly(1,'x')    // variable 'x'
Q=poly(2,'x')    // combination of polynomials
R=P/Q    // fraction  (x-1)/(x-2)
numer(R)    // numerator
denom(R)    // denominator
M=[1 R; P Q]    // matrix of rational fractions
N=invr(M)    // inverse matrix
N*M    // =identity matrix
// computing the characteristic polynomial
X=poly(0,'x');
A=[1 2; 3 4]
P=det(A-X*eye(2,2))
