// evaluate over a grid
x=[-1:0.2:1];y=x;
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
// surface display 
clf;
plot3d(x,y,Z,alpha=50,theta=140,leg="X1@X2@X3",flag=[0 0 4])
A=gca();
// values of alpha and theta
A.rotation_angles
// axes labels
[A.x_label.text,A.y_label.text,A.z_label.text]
// first argument for flag
A.children.color_mode
