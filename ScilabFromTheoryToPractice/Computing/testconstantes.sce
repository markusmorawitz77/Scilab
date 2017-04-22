// mathematical constants 
a=cos(%pi)
b=log(%e)
// complex numbers
%i^2    // =-1
(1+%i)^2    // =2i
c=exp(%i*%pi)    // =-1 (within rounding error!)
ans    // contains the result of 2*%i
// NaN, infinity and machine epsilon
typeof(%eps)    // machine epsilon
x=10^155,x^2    // >10^309 yields infinity 
%inf-%inf,%inf/%inf     // not defined, returns %nan
