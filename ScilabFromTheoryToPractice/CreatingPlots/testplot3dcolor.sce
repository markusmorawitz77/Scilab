exec('testplot3d.sce',-1)  //to delete
F=gcf();  // le handle de la figure
// les 3 surfacesde type  Fac3d
F.children(2:4).children
// le titre de chaque tracé
F.children(2:4).title.text
// couleurs de l'affichage 
F.children(2:4).children.color_flag
F.children(2:4).children.color_mode
F.children(2:4).children.hiddencolor

