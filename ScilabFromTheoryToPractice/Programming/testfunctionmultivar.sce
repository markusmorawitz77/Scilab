function [a,b,c]=foo(x,y,z)
    a=x+y
    b=x*y
    c=z
endfunction

foo(2,3,4)          // only the value of a is displayed
[a,b]=foo(2,3,4)    // a and b are retrieved as outputs
[a,b,c]=foo(2,3,4)  // a,b,c are retrieved as outputs
