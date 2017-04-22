function y=f(x)
    y=sin(x)/x
endfunction

x=[-2*%pi:0.02:2*%pi]';size(x)  // x coordinate
y=f(x);size(y)                  // y is not the correct size
y=sin(x)./x; size(y)            // y is the correct size 
y=feval(x,f); size(y)           // y is the correct size 
