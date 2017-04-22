n=1D5;eps=1D-4;
//somme des 1/k^2
%pi^2/6                   // valeur exacte
F1=[1:n]^(-2);            // liste des 1/k^2
S1=sum(F1)                // valeur de la série
eps1=abs(%pi^2/6-S1)     // précision
L1=1+cumsum(F1);         // listes des sommes partielles
n1=find(abs(L1-%pi^2/6)<=eps,1)
L1(n1)                  // valeur approchée à eps près
//  somme des 1/2^k
1                         // valeur exacte
F2=2^(-[1:n]);            // liste des 1/k^2
S2=sum(F2)                // valeur de la série
eps2=abs(1-S2)            // précision
L2=cumsum(F2);            // listes des sommes partielles
n2=find(abs(L2-1)<=eps,1)
L2(n2)                   // valeur approchée à eps près
// somme des 1/k!
%e                      // valeur exacte
F3=(1)./cumprod([1:n]); // liste des 1/k!
S3=1+sum(F3)            // valeur de la série
eps3=abs(%e-S3)         // précision
L3=1+cumsum(F3);            // listes des sommes partielles
n3=find(abs(L3-%e)<=eps,1)
L3(n3)                   // valeur approchée à eps près
