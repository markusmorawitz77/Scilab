function z=saddle(x,y)
    z=x^2-y^2
endfunction
// evaluate over a grid
x=[-1:0.2:1];y=x;z=feval(x,y,saddle);
// surface display 
clf;
subplot(221)
surf(x,y,z')
xtitle('surf')
subplot(222)
mesh(x,y,z')
xtitle('mesh')
subplot(223)
plot3d(x,y,z)
xtitle('plot3d')
subplot(224)
plot3d1(x,y,z)
xtitle('plot3d1')
