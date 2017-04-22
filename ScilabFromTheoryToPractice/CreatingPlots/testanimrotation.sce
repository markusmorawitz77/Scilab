clf;
plot3d1() // a three-dimensional surface
for k=1:360  // loop to rotate the figure
    // change the angle alpha of the view point by 1 degree
    A=gca();A.rotation_angles(2)=A.rotation_angles(2)+1;
    sleep(10) // to have enough time to see the figure
end
