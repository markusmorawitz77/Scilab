//bad recursion
function y=Fibonacci1(n)
    if n<=1 then y=1
        else y=Fibonacci1(n-1)+Fibonacci1(n-2)
    end
endfunction

tic()
Fibonacci1(25)
time=toc()
//matrix structure use
function y=Fibonacci2(n)
    F=[0 1; 1 1]
    u=(F^n)*[1;1]
    y=u(1)
endfunction

tic()
Fibonacci2(25)
time=toc()
