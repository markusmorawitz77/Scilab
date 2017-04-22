function y=f(x)
    y=-sin(x^2)/x
endfunction
ieee(2) // to warn of division by 0
x=[0:0.02:2*%pi];
clf;
fplot2d(x,f,5)
