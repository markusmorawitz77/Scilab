function [a,b]=foo(x,y)
    u=x+y       // u is a local variable 
    v=x*y       // v is a local variable 
    a=u+c       // c is an external variable
    b=u*exp(v)  // exp is an external functions
endfunction

L=macrovar(foo)   //   L=list(in,out,nolocal,called,local)
