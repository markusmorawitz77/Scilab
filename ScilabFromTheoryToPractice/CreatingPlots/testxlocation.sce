clf;
t=[0:0.02:10*%pi]';  // matrix of parameters 
// warning, needs the element-wise operator .* :
x=sin(t).*t;y=cos(t).*t; 
plot(x,y,'-r')          // plot 
// intersect the coordinate axes at point (0,0)
A=gca();
A.x_location="origin";
A.y_location="origin";
