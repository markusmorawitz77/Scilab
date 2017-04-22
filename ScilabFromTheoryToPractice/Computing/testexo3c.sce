exec('scilab-base-calculs-testexo3d.sce',-1)//to delete
exec('scilab-base-calculs-testexo3a.sce',-1)//to delete
exec('scilab-base-calculs-testexo3b.sce',-1)//to delete
// set of values already taken
D=union(union(A,B),C) 
// candidate values for element (i,j)
E=[1:9];E(D)=[] 
