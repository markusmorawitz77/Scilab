// grid definition
x=[-1:0.1:1];y=x; 
// surface computation
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
//surface display 
clf;
subplot(121)
contour(x,y,Z,7)
xtitle('contour(x,y,Z,7)')
subplot(122)
L=[-0.6 -0.3 -0.1 0 0.2 0.5 0.7]; 
contour(x,y,Z,L)
xtitle('contour(x,y,Z,L)')
