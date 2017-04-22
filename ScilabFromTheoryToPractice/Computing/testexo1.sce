n=6;m=5;
L=([1:n]')*ones(1,m) // numéros de ligne
C=ones(n,1)*[1:m]    // numéros de colonne
D=1+abs(L-C)         //numéro de diagonale
N=zeros(n,m);N(:)=[1:n*m] // numéro de case
N=L+(C-1)*n               // autre solution
