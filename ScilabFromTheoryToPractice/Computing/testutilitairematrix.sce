A=grand(1,5,'uin',0,100)
M=max(A),m=min(A)    // maximum and minimum
sum(A),prod(A)    // sum and product
cumsum(A),cumprod(A)    // cumulative sum and product
[values,position]=gsort(A,'g','i')    // sort in ascending order 
[values,position]=gsort(A,'g','d')    // sort in descending order 
A(position)    // =values (sorted in order)
find(A==M)    // find the position(s) of element M in A 
