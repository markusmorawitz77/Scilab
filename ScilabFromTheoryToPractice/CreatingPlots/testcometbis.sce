x=[1:1000]';
// length of the tail as a percentage of the curve
p=0.1;  
k=round(p*length(x)); 
// initialization of graphics window
clf;
drawlater()
plot([x x x],[x zeros(x) -x])
A=gca();rect=A.data_bounds;
for i=1:10:length(x)
    imk=max(1,i-k);
    drawlater()
    clf;
    //1st curve in blue
    y=x;
    plot(x(1:i),y(1:i),'-b')  //  body
    plot(x(imk:i),y(imk:i),'-b')  // tail
    E=gce();E.children.thickness=3;
    plot(x(i),y(i),'ob')  // head
    //second curve in green
    y=zeros(x);
    plot(x(1:i),y(1:i),'-g')  // body
    plot(x(imk:i),y(imk:i),'-g')  // tail 
    E=gce();E.children.thickness=3;
    plot(x(i),y(i),'og')  // head
    //third curve in red
    y=-x;
    plot(x(1:i),y(1:i),'-r')  // body
    plot(x(imk:i),y(imk:i),'-r')  // tail
    E=gce();E.children.thickness=3;
    plot(x(i),y(i),'or')  //head
    A=gca();A.data_bounds=rect;
    drawnow()
    sleep(10)
end
