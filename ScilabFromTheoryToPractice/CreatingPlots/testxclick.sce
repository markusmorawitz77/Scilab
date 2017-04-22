clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
// wait for a click inside the window
[button,x,y,fig_id,menu]=xclick()
//  place a cross at the selected point
plot(x,y,'xk'); 
// display the point's coordinates
xstring(x,y,'  it''s point ('+string(x)+','+string(y)+')') 
