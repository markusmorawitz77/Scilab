function z=plan(x,y)
    z=x-y
endfunction
// rectangular grid 
x=[0:4],y=[0:2],
// bad evaluation 
z=feval(x,y,plan)
// surface is correctly displayed with plot3d
clf;plot3d(x,y,z)  
// incompatible display dimensions  
clf;surf(x,y,z)
