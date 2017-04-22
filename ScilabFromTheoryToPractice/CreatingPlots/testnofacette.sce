function z=plan(x,y)
    z=x-y
endfunction
// evaluate over a grid
x=[0:2],y=x,z=feval(x,y,plan)'
// display the surface 
clf;surf(x,y,z)
