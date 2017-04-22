function mouse_action(win, x, y, iaim)
     if iaim==-1000 then return,end
     //convert coordinates from pixels to numbers
    [x,y]=xchange(x,y,'i2f')
    if iaim==-1 then //display coordinates  
        txt='coordinates ('+string(x)+','+string(y)...
        +')  window  '+string(win)+'  button '+string(iaim)
        xinfo(txt)
    else xstring(x,y,'you have clicked the mouse ('+...
        string(iaim)+') on ('+string(x)+','+string(y)+')')
    end
endfunction
// launching the graphics window 
clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
// activate the function mouse_action
seteventhandler('mouse_action')
// to stop the behavior of the graphics window
seteventhandler('') 
