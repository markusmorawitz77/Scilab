copyfile('scilab-base-program-testscript.sce','testscript.sce') //to delete
exec('testscript.sce',-1) // no echo except "disp"
exec('testscript.sce',0) // echo unless using a ";"
// same as option 0 + command prompt
exec('testscript.sce',1) 
// same as option 0 + new line
exec('testscript.sce',2) 
// same as option 1 + new line
exec('testscript.sce',3) 
