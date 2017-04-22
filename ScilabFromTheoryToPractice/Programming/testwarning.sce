function y=foo(x)
    if x==0 then              // 1/0 is undefined
        error('x cannot be 0!',9999)
    // 1/x too small for a good precision
    elseif abs(x)>1D15 then   
        y=(1+1/x)^x;
        warning(['computation is too imprecise since x is too big!';..
        ' usually foo(x) ~ e=2.7182818...'])
    else y=(1+1/x)^x         // normal case 
    end
endfunction

foo(1D10)    // normal computation
foo(1D100)   // warning
foo(0)       // error 9999
