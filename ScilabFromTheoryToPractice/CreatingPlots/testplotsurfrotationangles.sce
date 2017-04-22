exec('testplotsurf.sce',-1) //to delete
F=gcf();  //to delete  figure handle
// compairing view angles
R=zeros(2,4);R(:)=F.children.rotation_angles
