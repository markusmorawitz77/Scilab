n=6;m=5;
L=([1:n]')*ones(1,m); // line number
C=ones(n,1)*[1:m];    // column number
// N = matrix of element positions
N=L+(C-1)*n          // method 1
N=zeros(n,m);N(:)=[1:n*m] // method 2
