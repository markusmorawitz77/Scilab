//********************************************************
// simulation de la trajectoire (perturbée) d'une comète
//********************************************************
//  paramétrisation d'une sphère
function [x,y,z]=sphere(theta,phi)
   A=0.1,B=0.01
   x=A*cos(phi).*cos(theta)
   y=A*cos(phi).*sin(theta)
   z=B*sin(phi)
endfunction
//  fonction pour dessiner une sphère
function plot_sphere(x,y,z)
   phi=[0:0.1:2*3.15];
   theta=[2*3.15:-0.05:0];
   [dx,dy,dz]=eval3dp(sphere,theta,phi);
   surf(x+dx,y+dy,z+dz);
endfunction
//  fonction pour dessiner le plan z=0
function plot_ecliptique(ebox)
   x=[ebox(1);ebox(2)]
   y=[ebox(3);ebox(4)]
   z=zeros(2,2)
   surf(x,y,z)
endfunction

// les fonctions calculant les forces gravitationnelles
function [u2]=force_g(t,u,masse)
   module=-G*masse*((u(1)^2+u(2)^2+u(3)^2)^(-3/2))
   u2=[module*u(1); module*u(2); module*u(3)]
endfunction

function [du]=force(t,u,masse0,masse1)
   u1=[u(1);u(2);u(3)]
   du1=[u(4);u(5);u(6)]
   u2=[u(7);u(8);u(9)]
   du2=[u(10);u(11);u(12)]
   ddu1=force_g(t,u1,masse0)
   ddu2=force_g(t,u2,masse0)+force_g(t,u2-u1,masse1)
   du=[du1;ddu1;du2;ddu2]
endfunction

// constantes
G=0.04;
m0=1000;
m1=1;
dt=0.05;
T=50;
dx=0.5;
dy=0.5;
dz=0.5;
alpha=65;
Beta=150;
//********************************************************
// calcul des trajectoires
//********************************************************
//coordonnées initiales de la planète
x1=5;y1=0;z1=0;vx1=0;vy1=2.5;vz1=0;
//coordonnées initiales de la comète
x2=6;y2=6;z2=0.21;vx2=-2;vy2=-0.5;vz2=-0.1;
//résolution de l'équation différentielle avec ode
t=[0:dt:T];
u0=[x1; y1; z1; vx1; vy1; vz1; x2; y2; z2; vx2; vy2; vz2];
u=ode(u0,0,t,list(force,m0,m1));
//  récupération des résultats 
X=[u(1,:)',u(7,:)'];
Y=[u(2,:)',u(8,:)'];
Z=[u(3,:)',u(9,:)'];
//********************************************************
// lancement de la fenêtre graphique
//********************************************************
ebox=[min(X),max(X),min(Y),max(Y),min(Z),max(Z)];
N=length(t);                       // nombre d'étapes
drawlater()
plot_ecliptique(ebox) // tracé du plan de l'écliptique
plot_sphere(0,0,0)                 // soleil
plot_sphere(X(1,1),Y(1,1),Z(1,1))  // planète
plot_sphere(X(1,2),Y(1,2),Z(1,2))  // comète
A=gca();
A.axes_visible=["off" "off" "off"];
A.rotation_angles=[alpha Beta];
A.data_bounds=ebox;
drawnow()
//********************************************************
// boucle principale créant l'animation graphique
//********************************************************
for k=1:5:N
   Beta=Beta+k/300;                      //  angle de vue 
   drawlater()           // ouverture du buffer graphique 
   clf()                 // on efface le buffer graphique 
   plot_ecliptique(ebox) // tracé du plan de l'écliptique 
   param3d1(X(1:k,:),Y(1:k,:),...        // affichage des 
   list(Z(1:k,:),[5,2]))                  // trajectoires
   plot_sphere(0,0,0)                        // le soleil 
   plot_sphere(X(k,1),Y(k,1),Z(k,1))        // la planète
   plot_sphere(X(k,2),Y(k,2),Z(k,2))         // la comète
   title('comet dynamics simulation :t='...
   +string(t(k))+'/'+string(T)+' years')     // le titre
   xinfo(string(t(k)))              // affichage du temps
   A=gca();  // redimensionnement de la fenêtre graphique
   A.axes_visible=["off" "off" "off"];
   A.rotation_angles=[alpha Beta];  // rotation pt de vue
   A.data_bounds=ebox;
   drawnow()             // affichage du buffer graphique 
   sleep(30)  // pause pour ajuster le rythme d'affichage
end
