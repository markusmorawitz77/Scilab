//********************************************************
// animation d'un pendule élastique 
//********************************************************
//  fonction pour créer la matrice de rotation
function M=rot(a)
    M=[cos(a),sin(a);-sin(a),cos(a)];   
endfunction
//  quelques constantes
n=40;      // nombre de spires du ressort
T=5;       // durée de la simulation 
g=9.81;    //  g (gravitation)
k=10;      //  k (raideur du ressort)
dt=0.01;   // dt (pas de temps)
//********************************************************
// lancement de l'affichage  
//********************************************************
//  titre de la fenêtre
xtitle("(clic gauche pour démarrer l''animation, clic droit pour arrêter)")   
// page de titre   (en LaTeX)
titlepage(["résolution numérique d''une EDO le pendule à ressort : ";
" ";
"$$\Large r{d^2\over dt^2}a+2{d\over dt}r \times {d\over dt}a=g\times \sin(a)$$";
" ";
"$$\Large {d^2\over dt^2}r-{k\over m}(r-r_0)=r\left({d\over dt} a\right)^2+g\times \cos(a)$$";
" ";
" avec les conditions initiales : ";
"$$\Large  a(0)=? \;\;\;\;\;\; {d\over dt}a(0)=0  \;\;\;\;\;\; r(0)=r_0=? \;\;\;\;\;\; {d\over dt}r(0)=0 $$"])
//********************************************************
// traitement des interactions avec la fenêtre graphique  
//********************************************************
[c_i,c_x,c_y,c_w]=xclick();    //  attente d'un clic de souris dans la fenêtre
while (c_i<>2)&(c_i<>5)        //  tant qu'on n'a pas fait un clic droit 
      clf()    //effacer la fenêtre
      //********************************************************
      // récupération  des données initiales de l'animation   
      //********************************************************
      // titre de la fenêtre
      xtitle("(un click pour initialiser la position du pendule, a(0) et r(0) )")   
      // paramétrage du handle Axes	de la fenêtre
      plot(0,0,'.k');A=gca();A.x_location="origin";A.y_location="origin";    
      A.auto_scale="off";A.isoview="on";A.data_bounds=[-1 -1; 1,0];xgrid(3)
      //récupération des coordonnées de la position initiale du pendule
      [c_i,x,y,c_w]=xclick();    
      // calcul des données initiales 
      a=sign(x)*abs(atan(x/y));a0=a;da=0;    // calcul de l'angle a(0)   
      l=sqrt(x^2+y^2);r=l;,dr=0;             //  calcul de  r(0)
      //adapter la taille de la fenêtre à la taille maximale du pendule
      A.data_bounds=[-1.5,-max(4*l,4);1.5,max(l,0.5)];  
	//********************************************************
	// boucle créant l'animation  
	//********************************************************	  
      for t=0:dt:T  
           //********************************************************
           // calcul des nouvelles positions  
           //********************************************************	  
           // résolution des équations différentielles sur a et r par la méthode d'Euler
           dda=-(g*sin(a)+2*dr*da)/r;
           ddr=r*(da)^2-k*(r-l)+g*cos(a);
           da=da+dt*dda; 
           dr=dr+dt*ddr;
           a=a+dt*da;
           r=r+dt*dr;
           // calcul de la ligne  traçant le ressort
           ressortr=linspace(0,r,n)';             // étirement du ressort 
           ressorta=[0;(-1).^[0:n-3]';0]*(l/10);  // coordonnées transversales à l'axe du ressort -> /\/\/\
           //rotation de l'image du ressort selon l'angle a
           x=[x;r*sin(a)];
           y=[y;-r*cos(a)];
           M=-rot(-a);
           N=[ressortr,ressorta]*M;
           ressorty=N(:,1);ressortx=N(:,2);
           //********************************************************
           // affichage du pendule 
           //********************************************************	
           drawlater()                     // écriture dans le buffer graphique 
           clf()                           // effacer la fenêtre
           plot(ressortx,ressorty)         // affichage du ressort du pendule
           xstring(0,0.1,["t=" string(t)]) // temps écoulé
           xfarc(r*sin(a)-0.05,-r*cos(a)+0.05,0.1,0.1,0,360*64)     // la boule du prendule
           // redimensionnement de la fenêtre graphique 
           A=gca();A.data_bounds=[-1.5,-max(4*l,4);1.5,max(l,0.5)];
           A.auto_scale="off";A.isoview="on";A.axes_visible=["off" "off" "off"];
           drawnow()                      // afficher le buffer graphique  
           sleep(10);                     // delai d'affichage
     end 
	//***********************************************************
	// choix d'une nouvelle animation  ou d'une sortie du script  
	//***********************************************************
      xtitle("(un clic pour continuer )")   // titre de la fenêtre
      plot(x,y,'-r')                        // affichage trajectoire
      A=gca();A.isoview="on";xgrid(3);      // afficher une grille  (verte)
      [c_i,x,y,c_w]=xclick();               // attente d'un clic de souris dans la fenêtre graphique
      clf();                                // choix d'une nouvelle action 
      xtitle("(clic gauche pour démarrer l''animation, clic droit pour arrêter)")     
      plot(0,0,'.k');A=gca();A.x_location="origin";A.y_location="origin";    
      [c_i,x,y,c_w]=xclick();               //attente d'un clic de souris dans la fenêtre
end
