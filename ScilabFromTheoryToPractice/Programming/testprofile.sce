function x=foo(n)
    k=1:n
    x=sum(k.^(-2))
endfunction

add_profiling('foo')   // profiled function
foo(1D5)               // execute foo
profile(foo)     // retrieve the execution profile's matrix
showprofile(foo) // execution profile as character strings
plotprofile(foo) // execution profile in graphics form
