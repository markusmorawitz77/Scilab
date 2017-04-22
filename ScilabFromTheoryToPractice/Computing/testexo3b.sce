exec('scilab-base-calculs-testexo3d.sce',-1)//to delete
exec('scilab-base-calculs-testexo3a.sce',-1)//to delete
i=3;j=5;  // element of interest
// values already using in the row
A=unique(S(find((S<>0)&(L==i))))  
// values already used in the column
B=unique(S(find((S<>0)&(K==j)))) 
// values already used in the region
C=unique(S(find((S<>0)&(R==R(i,j)))))  
