exec('scilab-base-program-make_point.sce',-1)  //to delete 
exec('scilab-base-program-check_point.sce',-1) //to delete 
exec('scilab-base-program-testoverloaddisplay.sce',-1) //to delete 
function M=%point_m_point(O,P)
    check_point(P)
    check_point(O)
    M=make_point(0,0)
    M.x=O.x-(P.x-O.x)
    M.y=O.y-(P.y-O.y)
endfunction
O=make_point(0,1)  // creates point O
P=make_point(1,0)  // creates point P
M=O*P              // M=symmetric of P with respect to O
