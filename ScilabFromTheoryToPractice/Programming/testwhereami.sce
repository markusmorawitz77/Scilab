function y=foo1(x)
    y=foo2(x)
endfunction

function y=foo2(x)
    y=1+x^2
    whereami()
endfunction

foo1(2)
foo2(2)
