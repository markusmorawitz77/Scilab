function y=foo1()
    y=1
endfunction

foo1()   // outputs 1

function foo2()
    disp('hello')
endfunction

foo2()    // doesn't output anything but displays 'hello'
a=foo2()   // no error 
a          // but a isn't created
