str=['scilab';strcat(string(1:10),';')]
mputl(str,'myfile.txt')
str2=mgetl('myfile.txt')