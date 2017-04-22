clf;
k=0;  // to number the images 
z=[0:0.01:2*%pi];  // to plot the trajectory
for t=0:0.01:1  // loop to increment the time
    // compute the new position
    x=cos(2*%pi*t); // x-coordinate
    y=sin(2*%pi*t); // y-coordinate
    clf; // parameterizing the graphics window 
    A=gca();A.data_bounds=[-1.2,-1.2;1.2,1.2];A.isoview="on";
    plot(cos(z),sin(z),'-b')   // trajectory in blue
    plot(x,y,'.r') // the red point advances
    // to have time to see the figure:
    xs2gif(0,'img_'+string(1000+k)+'.gif') 
    k=k+1  // increment the image number
end
unix('convert img_*.gif -delay 10 -loop 0 animation.gif')
mdelete('img_*.gif')
