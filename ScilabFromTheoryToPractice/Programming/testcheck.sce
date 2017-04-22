exec('scilab-base-program-make_point.sce',-1)  //to delete 
exec('scilab-base-program-check_point.sce',-1) //to delete 
M=make_point(0,1);   // creating the point M
check_point(M)       // M is indeed a point
N=make_point(0,%i);  // point is not valid
check_point(N)       // N  is not a point 
