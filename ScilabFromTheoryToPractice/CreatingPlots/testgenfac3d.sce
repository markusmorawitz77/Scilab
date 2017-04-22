function z=plan(x,y)
    z=x-y
endfunction
// evaluate over a grid
x=[0:2],y=x,z=feval(x,y,plan)
// compute the facets
[xx,yy,zz]=genfac3d(x,y,z)
//display the facets
clf;plot3d1(xx,yy,zz)
