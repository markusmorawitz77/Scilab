//*   file   testplot.sce   *//
clf;  //clear the graphics window 
//plot the circle  x(t)=cos(t), y(t)=sin(t)
t=[0:0.02:2*%pi];
x=cos(t);y=sin(t);
plot(x,y,'-r')
//plot the line y=sqrt(2)-x in blue 
x=[0;sqrt(2)];y=[sqrt(2);0];
plot(x,y,'--b')
//plot the vector in cyan
x=1/sqrt(2)+[0;1];y=x;
plot(x,y,'c:o')
