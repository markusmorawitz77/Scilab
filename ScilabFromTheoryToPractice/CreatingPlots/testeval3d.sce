function z=plan(x,y)
    z=x-y
endfunction
// calcul des facettes
x=[0:2],y=x,[xx,yy,zz]=eval3d(plan,x,y)
//affichage des facettes
clf;plot3d1(xx,yy,zz)
