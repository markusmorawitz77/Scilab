n=9;m=9;                        // size of matrices
L=([1:n]')*ones(1,m);           // row number
K=ones(n,1)*[1:m];              // column number
R=1+int((K-1)/3)+int((L-1)/3)*3 // region number
