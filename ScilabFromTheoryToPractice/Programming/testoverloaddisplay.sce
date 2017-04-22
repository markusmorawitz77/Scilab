exec('scilab-base-program-make_point.sce',-1)  //to delete 
exec('scilab-base-program-check_point.sce',-1) //to delete 
M=make_point(0,1)  // creates point M

function %point_p(P)
    check_point(P)
    printf('(x=%f,y=%f)\n',P.x,P.y)
endfunction

M //  point M's display is modified
