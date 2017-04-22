function y=foo(x)
    y=z+x^2
endfunction

clear z   // z doesn't exist 
foo(1)    // error
