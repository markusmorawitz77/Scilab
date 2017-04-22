//*****************************************************************
// animation of a spring pendulum 
//*****************************************************************
//  function to create rotation matrix
function M=rot(a)
    M=[cos(a),sin(a);-sin(a),cos(a)];   
endfunction
//  constants 
n=40;      // number of coils of the spring 
T=5;       // duration of the simulation 
g=9.81;    //  g (gravitational acceleration)
k=10;      //  k (spring stiffness)
dt=0.01;   // dt (time step)
//*****************************************************************
// launch the graphics window   
//*****************************************************************
//  window title
xtitle("(left-click to start the animation, right-click to stop)")
// title page (in LaTeX)
titlepage(["numerical solution of the spring pendulum ODE : ";" "; "$$\Large r{d^2\over dt^2}a+2{d\over dt}r \times {d\over dt}a=g\times \sin(a)$$";
" "; "$$\Large {d^2\over dt^2}r-{k\over m}(r-r_0)=r\left({d\over dt} a\right)^2+g\times \cos(a)$$";" "; " with initial conditions : "; "$$\Large  a(0)=? \;\;\;\;\;\; {d\over dt}a(0)=0  \;\;\;\;\;\; r(0)=r_0=? \;\;\;\;\;\; {d\over dt}r(0)=0 $$"])
//*****************************************************************
// processing the graphics window interactions
//*****************************************************************
// wait for a mouse click in the window
[c_i,c_x,c_y,c_w]=xclick(); 
while (c_i<>2)&(c_i<>5)   // as long as there is no right-click 
      clf()    //clear the window
      //***********************************************************
      // retrieve the animation's initial data   
      //***********************************************************
      // window title
      xtitle("(one click to initialize pendulum position a(0) and r(0) )")
      // parameterize the window's Axes handle
      plot(0,0,'.k');A=gca();A.x_location="origin";
      A.y_location="origin";A.auto_scale="off";A.isoview="on";
      A.data_bounds=[-1 -1; 1,0];xgrid(3)
      // retrieve the pendulum's initial position coordinates :
      [c_i,x,y,c_w]=xclick();    
      // compute initial values :
      a=sign(x)*abs(atan(x/y));a0=a;da=0;  // compute angle a(0)
      l=sqrt(x^2+y^2);r=l;,dr=0;           //  compute r(0)
      // adapt the window's size to the pendulum's maximum size :
      A.data_bounds=[-1.5,-max(4*l,4);1.5,max(l,0.5)];  
      //***********************************************************
      // loop creates the animation   
      //*********************************************************** 
      for t=0:dt:T  
           //******************************************************
           // compute new positions  
           //******************************************************
           // solve the differential equation for a and r using 
           // Euler's method
           dda=-(g*sin(a)+2*dr*da)/r;
           ddr=r*(da)^2-k*(r-l)+g*cos(a);
           da=da+dt*dda; 
           dr=dr+dt*ddr;
           a=a+dt*da;
           r=r+dt*dr;
           // compute the spring's line representation
           springr=linspace(0,r,n)';        // the spring stretches 
           // coordinates transverse to spring's axis -> /\/\/\
           springa=[0;(-1).^[0:n-3]';0]*(l/10);  
           //rotate the spring's picture by the angle a
           x=[x;r*sin(a)];
           y=[y;-r*cos(a)];
           M=-rot(-a);
           N=[springr,springa]*M;
           springy=N(:,1);springx=N(:,2);
           //******************************************************
           // display the pendulum 
           //******************************************************
           drawlater()  // write to the graphics buffer 
           clf()        // clear the window
           plot(springx,springy) //display the pendulum's spring
           xstring(0,0.1,["t=" string(t)]) // elapsed time
           // pendulum bob :
           xfarc(r*sin(a)-0.05,-r*cos(a)+0.05,0.1,0.1,0,360*64)     
           // resize the graphics window 
           A=gca();A.data_bounds=[-1.5,-max(4*l,4);1.5,max(l,0.5)];
           A.auto_scale="off";A.isoview="on";
           A.axes_visible=["off" "off" "off"];
           drawnow()            // display the graphics buffer  
           realtime(t);           // delay display
      end 
      //***********************************************************
      // choose a new animation or exit program
      //***********************************************************
      xtitle("(one clic to proceed )")    // window title
      plot(x,y,'-r')                       // display trajectory
      A=gca();A.isoview="on";xgrid(3); //display grid (green)
      // waiting for a mouse click in graphics window :
      [c_i,x,y,c_w]=xclick(); 
      clf();                         // choose a new operation 
      xtitle("(left-click to start the animations, right-click to stop)")
      plot(0,0,'.k');A=gca();A.x_location="origin";
      A.y_location="origin";  
      // waiting for a mouse click in the window :
      [c_i,x,y,c_w]=xclick(); 
end
