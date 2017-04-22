%io
// write to the standard output
write(%io(2),'hello') 
// read a string of size 1x1 from the standard input
txt=read(%io(1),1,1,'(a)') 
typeof(txt)
