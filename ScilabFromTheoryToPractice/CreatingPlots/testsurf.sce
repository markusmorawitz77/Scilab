// evaluate over a grid
x=[-1:0.2:1];y=x;[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
// compute a color (0,1,...,10) for each facet
C=round(5*(1+X));
// display the surface 
clf;
subplot(221)
surf(Z)
xtitle('surf(z)')
subplot(222)
surf(Z,C)
xtitle('surf(z,C)')
subplot(223)
surf(x,y,Z,C)
xtitle('surf(x,y,z,C)')
subplot(224)
mesh(Z)
xtitle('mesh(z)')
