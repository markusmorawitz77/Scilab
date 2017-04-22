clf;
dt=0.01  // time step
z=[0:0.01:2*%pi];  // to plot the trajectory
A=gca();A.data_bounds=[-1.2,-1.2;1.2,1.2];A.isoview="on";
plot(cos(z),sin(z),'-b')   // trajectory in blue
plot(1,0,'.r') // initial position of the red dot
E=gce();  //  handle of the red dot 
for t=0:dt:1  // loop to increment the time
    dx=-2*%pi*sin(2*%pi*t)*dt; // displacement in x
    dy=2*%pi*cos(2*%pi*t)*dt; // displacement in y
    move(E,[dx,dy]);  // move the E handle
    sleep(10) // to have enough time to see the figure
end
