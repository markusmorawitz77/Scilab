function y=foo(x)
    y=1+x^2
endfunction
funcprot(0)
function y=foo(x)
    y=2+x^2
endfunction    // no warning
// retrieve the current value of "funcprot" :
previousprot=funcprot()     
// change and retrieve the current value of "funcprot" :
previousprot=funcprot(1)    
function y=foo(x)
    y=3+x^2
endfunction    // warning (default behavior)
funcprot(2)    // change the current value of "funcprot"
function y=foo(x)
    y=4+x^2
endfunction    // produces error  111

