unix('DEL myfile.txt');
x=[1:4]';y=cos(x);
write('myfile.txt',[x y])
str2=read('myfile.txt',-1,2)
