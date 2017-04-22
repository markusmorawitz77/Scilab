function y=foo(x)
    z=1+x^2
    return z
endfunction
clear y  // no y variable
foo(0)   // the execution isn't successful 
