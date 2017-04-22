exec('scilab-base-program-make_point.sce',-1)  //to delete 
exec('scilab-base-program-check_point.sce',-1) //to delete 

// création du type "vector" à partir de deux points 
function V=make_vector(x,y)
    V=mlist(['vector','x','y'],x,y)
endfunction

U=make_vector(1,1)  // crétaion d'un vecteur par ses coordonnées

// gestion des erreurs 
function check_vector(V)
    if typeof(V)<>'vector' then error(20001,'l''argument n''est pas de type ''vecteur'' !')
    elseif length(V)<>3 then error(20002,'le vecteur n''a pas deux coordonnées!')
    elseif (type(V.x)<>1)|(type(V.y)<>1) then error(10003,'les coordonnées ne sont pas des nombres!')
    elseif (length(V.x)<>1)|(length(V.y)<>1) then error(10004,'les coordonnées sont des tableaux de nombres!')
    elseif (imag(V.x)<>0)|(imag(V.y)<>0) then error(10004,'les coordonnées ne sont pas des nombres réels!')
    end
endfunction

//modification de l'affichage d'un "vector"
function %vector_p(P)
    check_vector(P)
    printf('[x=%f,y=%f]\n',P.x,P.y)
endfunction

V=make_vector(1,1)   // nouvel affichage des "vector" 

// fonction calculant la longueur d'un "vector"
function U=vecteur_unitaire(V)
    check_vector(V)
    l=sqrt((V.x)^2+(V.y)^2)
    if l<>0 then U=make_vector(V.x/l,V.y/l)
    else U=V
    end
endfunction

V              // vector V
U=vecteur_unitaire(V)  // V/sqrt(2)



// création d'un "vector" comme soustraction de deux "point"
function V=%point_s_point(A,B)
    //V=A-B =  "vecteur BA" 
    check_point(A)
    check_point(B)
    V=make_vector(A.x-B.x,A.y-B.y)
    check_vector(V)
endfunction
A=make_point(0,1)
B=make_point(1,0)
V=B-A              // vecteur AB


function W=%vector_a_vector(U,V)
    //W=U+V
    check_vector(U)
    check_vector(V)
    W=make_vector(U.x-V.x,U.y-V.y)
endfunction
U,V
W=U+V

//addition d'un "point" et d'un "vector"  donne un "point"
function V=%s_m_vector(c,V)
    check_vector(V)
    if type(c)<>1 then whereami(),error(20004,'c n''est pas de type ''constant'' !')
    elseif prod(size(c))<>1 then whereami(),error(20005,'c n''est pas detaille 1x1 !')
    else V=make_vector(c*V.x,c*V.y)
    end
endfunction
V
2*V    //  doit être égal à B

function V=%vector_s(V)
    check_vector(V)
    V=make_vector(-V.x,-V.y)
endfunction
-V

function W=%vector_s_vector(U,V)
    check_vector(U)
    check_vector(V)
    W=make_vector(U.x-V.x,U.y-V.y)
endfunction
V-V



//addition d'un "point" et d'un "vector"  donne un "point"
function P=%point_a_vector(M,V)
    check_point(M)
    check_vector(V)
    P=make_point(M.x+V.x,M.y+V.y)
endfunction
A+V    //  doit être égal à B


//soustraction d'un "point" et d'un "vector"  donne un "point"
function P=%point_s_vector(M,V)
    check_point(M)
    check_vector(V)
    P=make_point(M.x-V.x,M.y-V.y)
endfunction
B-V   // doit être égal à A
