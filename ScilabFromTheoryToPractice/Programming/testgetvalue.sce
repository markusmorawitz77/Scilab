text='assign values to a,b,c';
identifiers=["a=";"b=";"c="];
list_of_types=list("vec",1,"mat",[2,2],"str",1);
default_values=["1";"[1,2;3,4]";"hello"];
[ok,a,b,c]=getvalue(text,identifiers,list_of_types,default_values)
