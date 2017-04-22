exec('scilab-base-program-region2pos.sce',-1)  //to delete 
// region 1 ->  elements (1,1) and (3,3)
[i1,i2,j1,j2]=region2pos(1) 
// region 4 ->  elements (1,7) and (3,7)
[i1,i2,j1,j2]=region2pos(4) 
// region 8 ->  elements (7,4) and (9,6)
[i1,i2,j1,j2]=region2pos(8)
