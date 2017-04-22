exec('testplot.sce',-1)
// add a title 
xtitle(' figure title')
// add a green (=3) coordinate grid
xgrid(3)   
// add a legend in the upper-right corner (2) with a box (1) surrounding it  
legend('circle','tangent','normal',2,1); 
// add a legend in the lower-right corner (4) without a box (0)
legends(['circle','tangent','normal'],[5,2,4],4,0); 
