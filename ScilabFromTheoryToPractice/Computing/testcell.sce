L=cell()  // empty array of lists
L=cell(2,3)  // array of lists of size 2x3
// filling L with objects of different types
L(1,1).entries="Scilab"
L(1,2).entries=%i
L(1,3).entries=%T
L(2,1).entries=eye(2,2)
L(2,2).entries=poly(1,'x')
L.dims,size(L)  // size of L
typeof(L),type(L) // type 17 =ce
L(2,1),typeof(L(2,1)) // L(2,1) of type ce
// L(2,1).entries of type constant :
L(2,1).entries,typeof(L(2,1).entries) 
