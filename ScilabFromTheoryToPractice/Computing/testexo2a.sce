n=6;m=5;
L=([1:n]')*ones(1,m); // row number
C=ones(n,1)*[1:m];    // column number
D=1+abs(L-C)          // diagonal index
