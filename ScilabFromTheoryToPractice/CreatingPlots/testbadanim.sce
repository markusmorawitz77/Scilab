clf;
z=[0:0.01:2*%pi];  // to plot the trajectory
for t=0:0.01:1  // loop to increment the time
    // compute the new position
    x=cos(2*%pi*t); // x-coordinate
    y=sin(2*%pi*t); // y-coordinate
    clf; // parameterize the graphics window 
    A=gca();A.data_bounds=[-1.2,-1.2;1.2,1.2];A.isoview="on";
    plot(cos(z),sin(z),'-b')   // trajectory in blue
    plot(x,y,'.r') // the animated dot in red
end
