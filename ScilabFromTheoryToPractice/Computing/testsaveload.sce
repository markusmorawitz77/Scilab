x=%e*%pi,y=%i, // two variables
save('myvar.sod','x','y') // saving to the file myvar.sod
ls('*.sod')    // file created in the current directory
clear x    // erase x
y=y+1    // modify y
load('myvar.sod')    // reload x and y
x,y
