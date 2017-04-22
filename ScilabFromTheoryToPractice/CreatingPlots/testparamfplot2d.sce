function y=f(x,t)
    y=exp(-(x-t).^2/2)
endfunction
x=[-10:0.05:10].';
t=[-5:0.2:5];
clf;
paramfplot2d(f,x,t);
