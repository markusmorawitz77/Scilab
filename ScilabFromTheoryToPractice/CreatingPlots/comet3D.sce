//********************************************************
// simulation of the perturbed trajectory of a comet 
//********************************************************
//  parameterization of a sphere
function [x,y,z]=sphere(theta,phi)
   A=0.1,B=0.01
   x=A*cos(phi).*cos(theta)
   y=A*cos(phi).*sin(theta)
   z=B*sin(phi)
endfunction
//  function to draw a sphere
function plot_sphere(x,y,z)
   phi=[0:0.1:2*3.15];
   theta=[2*3.15:-0.05:0];
   [dx,dy,dz]=eval3dp(sphere,theta,phi);
   surf(x+dx,y+dy,z+dz);
endfunction
//  function to plot the z=0 plane 
function plot_ecliptic(ebox)
   x=[ebox(1);ebox(2)]
   y=[ebox(3);ebox(4)]
   z=zeros(2,2)
   surf(x,y,z)
endfunction

// functions calculating the gravitational forces
function [u2]=force_g(t,u,mass)
   module=-G*mass*((u(1)^2+u(2)^2+u(3)^2)^(-3/2))
   u2=[module*u(1); module*u(2); module*u(3)]
endfunction

function [du]=force(t,u,mass0,mass1)
   u1=[u(1);u(2);u(3)]
   du1=[u(4);u(5);u(6)]
   u2=[u(7);u(8);u(9)]
   du2=[u(10);u(11);u(12)]
   ddu1=force_g(t,u1,mass0)
   ddu2=force_g(t,u2,mass0)+force_g(t,u2-u1,mass1)
   du=[du1;ddu1;du2;ddu2]
endfunction

// constants
G=0.04;
m0=1000;
m1=1;
dt=0.05;
T=50;
dx=0.5;
dy=0.5;
dz=0.5;
alpha=65;
Beta=150;
//********************************************************
// trajectory calculations 
//********************************************************
//initial coordinates of the planet
x1=5;y1=0;z1=0;vx1=0;vy1=2.5;vz1=0;
//initial coordinates of the comet
x2=6;y2=6;z2=0.21;vx2=-2;vy2=-0.5;vz2=-0.1;
//solve the differential equation using ode 
t=[0:dt:T];
u0=[x1; y1; z1; vx1; vy1; vz1; x2; y2; z2; vx2; vy2; vz2];
u=ode(u0,0,t,list(force,m0,m1));
//  retrieve results
X=[u(1,:)',u(7,:)'];
Y=[u(2,:)',u(8,:)'];
Z=[u(3,:)',u(9,:)'];
//********************************************************
// launch the graphics window
//********************************************************
ebox=[min(X),max(X),min(Y),max(Y),min(Z),max(Z)];
N=length(t);                       // number of steps
drawlater()
plot_ecliptic(ebox) // plot the ecliptic plane
plot_sphere(0,0,0)                 // sun
plot_sphere(X(1,1),Y(1,1),Z(1,1))  // planet
plot_sphere(X(1,2),Y(1,2),Z(1,2))  // comet
A=gca();
A.axes_visible=["off" "off" "off"];
A.rotation_angles=[alpha Beta];
A.data_bounds=ebox;
drawnow()
//********************************************************
// main loop creates the graphical animation
//********************************************************
for k=1:5:N
   Beta=Beta+k/300;                        //  view angle 
   realtimeinit(0.05)                     // unit of time 
   drawlater()               // open the graphical buffer 
   clf()                    // erase the graphical buffer 
   plot_ecliptic(ebox)        // plot on ecliptic plane 
   param3d1(X(1:k,:),Y(1:k,:),...          // display the 
   list(Z(1:k,:),[5,2]))                  // trajectories
   plot_sphere(0,0,0)                          // the sun 
   plot_sphere(X(k,1),Y(k,1),Z(k,1))        // the planet
   plot_sphere(X(k,2),Y(k,2),Z(k,2))         // the comet
   title('comet dynamics simulation : t='+msprintf(...
   '%2.2f',t(k))+'/'+string(T)+' years')         // title
   xinfo(string(t(k)))                    // display time
   A=gca();                 // resize the graphics window
   A.axes_visible=["off" "off" "off"];
   A.rotation_angles=[alpha Beta];    // rotate pt of vue
   A.data_bounds=ebox;
   drawnow()                  // display graphical buffer 
   realtime(k)            // pause to adjust display rate
end
