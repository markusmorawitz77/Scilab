// définition d'une grille
x=[-1:0.1:1];y=x; 
// calcul de la surface
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
//affichage de la surface 
clf;
F=gcf();F.color_map=jetcolormap(8);
contour(x,y,Z,7)
xtitle('contour+legend')
//  contour entre mèle "Text" et "Polyline"
F.children.children.children
// on cache les handles "Text"
F.children.children.children([2 4],:).visible='off';
// on récupère le text des lignes de niveaux et la couleur
valeurs=F.children.children.children(2,:).text
// on récupère la couleur  des lignes de niveaux 
couleurs=F.children.children.children(1,:).foreground
// on affiche une légende à part
legends(valeurs,couleurs,1)
