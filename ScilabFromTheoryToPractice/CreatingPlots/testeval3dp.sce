function [x,y,z]=plan(u,v)
    x=u
    y=v
    z=u-v
endfunction
// compute parameters
u=[0:2],v=u,
// compute the facets
[xx,yy,zz]=eval3dp(plan,u,v)
//display the facets
clf;plot3d1(xx,yy,zz)
