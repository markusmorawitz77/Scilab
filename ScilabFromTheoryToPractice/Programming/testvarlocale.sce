clear y //to delete
function y=foo(x)
    disp('dans ''foo''  x='+string(x))
    y=1+x^2
    disp('dans ''foo''  y='+string(y))
endfunction

x=2
z=foo(1) // inside "foo" x is 1
x        // x is still equal to 2
y        // y  doesn't exist here
