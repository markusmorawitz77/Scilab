//un sudoku non-résolu
S =[  5  3  0  0  8  0  0  2  0;
      8  0  0  0  4  2  0  0  0;
      0  0  1  3  0  6  0  8  0;
      6  5  3  0  0  0  1  0  2;
      2  1  4  6  0  3  5  7  8;
      9  0  8  0  0  0  3  6  4;
      0  6  0  5  0  1  8  0  0;
      0  0  0  4  6  0  0  0  5;
      0  4  0  0  3  0  0  1  6]
// question 1
n=9;m=9;                        // taille des matrices
L=([1:n]')*ones(1,m);            // numéros de ligne
K=ones(n,1)*[1:m];               // numéros de colonne
R=1+int((K-1)/3)+int((L-1)/3)*3 //numéros de région
//question 2
i=3;j=5;                                // case étudiée
A=unique(S(find((S<>0)&(L==i))))   // valeurs prises dans la ligne
B=unique(S(find((S<>0)&(K==j))))   // valeurs prises dans la colonne
C=unique(S(find((S<>0)&(R==R(i,j)))))   // valeurs prises dans la région
D=union(union(A,B),C)                   // ensemble des valeurs prises 
E=[1:9];E(D)=[]                         // valeurs possibles pour la case (i,j)
