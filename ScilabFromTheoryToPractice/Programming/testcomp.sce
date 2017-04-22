clear foo;//to delete
deff('y=foo(x)','y=1+x^2','n')// fonction non-compilée
tic()
for i=1:1d4
    foo(i);
end
temps=toc()       // temps d'exécution
comp(foo)         // compile la fonction "foo"
tic()
for i=1:1d4
    foo(i);
end
temps=toc()       // temps d'exécution plus rapide

clear foo;        //  efface foo
function y=foo(x)
    y=1+x^2
endfunction

comp(foo)        // fonction compilée par défaut
