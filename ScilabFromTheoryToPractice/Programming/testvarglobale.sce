function y=foo(x)
    disp('inside ''foo''    x='+string(x))
    disp('at the beginning      a='+string(a))
    y=a+x^2
    a=a+1   // modifies a locally 
    disp('at the end      a='+string(a))
endfunction

a=1
x=2
foo(3)  //inside "foo" x is 3  and a gets modified
x       // x is still  2
a       // a is still 1
