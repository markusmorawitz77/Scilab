function y=fact(n)
    if n==0 then y=1
    else disp(' beginning of call to fact('+string(n-1)+')')
        y=n*fact(n-1)
    end
    disp(' end of call to fact('+string(n)+')')
endfunction

fact(3)
