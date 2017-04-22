function y=f(x)
    y=-sin(x^2)/x
endfunction
x=[0.001:0.02:2*%pi];
clf;
plot(x,f,"r")
