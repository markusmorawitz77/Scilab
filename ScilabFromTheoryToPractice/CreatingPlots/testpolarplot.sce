clf()
theta=[0:0.02:2*%pi]';
r=1+0.2*cos(theta.^2);
polarplot(theta,r,style=5);
//axes modification 
a=gca();a.isoview='on'    
//decrease the window size
a.data_bounds=[-1.2,-1.2;1.2,01.2] 
