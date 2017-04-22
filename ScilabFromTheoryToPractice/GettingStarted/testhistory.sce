path=pwd();               // current directory
id=diary('scilab-base-diary.txt')    // open the diary
cd TMPDIR                 // temporary Scilab directory
resethistory()            // erase history log
addhistory('ls')          // add a line to the history log
gethistory()              // retrieve the command history inside a variable
displayhistory()          // display history log
savehistory('essai.txt')  // save the history inside a file
dir('essai.txt')          // the file is created inside the current directory
browsehistory()           // open the history browser 
cd(path);                 // return to the initial directory
diary(id,'close')         // close the diary
