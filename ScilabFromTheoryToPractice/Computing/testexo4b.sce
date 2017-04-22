exec('scilab-base-calculs-testexo4a.sce',-1)//to delete
eps=1D-4;                       // precision 
L1=cumsum(F1);                  // list of partial sums
n=find(abs(L1-%pi^2/6)<=eps,1)  // term that achieves a precision eps
L1(n),%pi^2/6                   // verifying
