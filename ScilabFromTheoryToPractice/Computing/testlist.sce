list() // empty list
// list with 4 elements:
L=list(%pi, eye(2,2), poly(0,'x'), 'scilab') 
typeof(L) // list type
L(1) // retrieve
L(1)=null() // delete
length(L)
M=list(%e,rand(1,2),'end')
N=lstcat(L,M) // concatenating lists
