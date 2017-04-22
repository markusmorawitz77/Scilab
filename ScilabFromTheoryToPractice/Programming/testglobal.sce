a=10;b=100;
global a b;    // declare global variables
function y=foo(x)
    global a;  // only a is global
    disp('dans ''foo''    a='+string(a))
    y=a+x^2
    a=2*a      // modifies a globally
    b=2*b      // b is locally modified 
    disp('dans ''foo''    b='+string(b))
endfunction

foo(1)      // inside "foo" a is 10
a           // a gets modified outside
b           // b does not get modified
