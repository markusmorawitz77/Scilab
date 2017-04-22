function foo(x)
    txt_foo='x is equal to '+string(x)
    txt_sci=return(txt_foo)
    disp('what follows doesn''t get executed')
endfunction

foo(1)
txt_sci    // the txt_sci variable does exist here
txt_foo    // the txt_foo variable doesn't exist here
