clf;  
x=[0.001:0.02:2*%pi]';
y1=cos(x);y2=sin(x);y3=-sin(x.^2)./x;
plot2d([x x x],[y1 y2 y3],[2 4 5])
