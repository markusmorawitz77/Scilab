function y=foo(x)
    y=1+x^2
endfunction

typeof(foo)
f=foo      // assign foo to f
f(2)       //outputs 5
typeof(f)
disp(foo)  // displays the functions
