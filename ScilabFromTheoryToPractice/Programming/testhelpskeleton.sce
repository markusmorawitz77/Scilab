function y=foo(x)
    //header comments
    //y,x= two real numbers
    y=1+x^2
    //closing comments
endfunction
head_comments('foo')
txt=help_skeleton('foo');
mputl(txt,'foo.xml');
