function [x,y]=coordinates()
    rep=-ones(1,3)
    //move the mouse until there's a click
    while rep(3)==-1
        rep=xgetmouse([%t %t])
        x=rep(1);y=rep(2);
        //display the coordinates
        txt='('+string(x)+','+string(y)+')'
        xinfo(txt)
    end
    // display the point in the graphics window as output
    plot(x,y,'xk'); 
    xstring(x,y,'  this is point ('+string(x)+','+string(y)+')') 
endfunction

clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
[x,y]=coordinates()
