exec('scilab-base-program-make_point.sce',-1)  //to delete 
exec('scilab-base-program-check_point.sce',-1) //to delete 
function l=distance(A,B)
    check_point(A)
    check_point(B)
    l=sqrt((A.x-B.x)^2+(A.y-B.y)^2)
endfunction

A=make_point(0,1)
B=make_point(1,0)
distance(A,B)
