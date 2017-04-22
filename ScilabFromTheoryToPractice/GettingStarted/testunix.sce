path=pwd();    // current directory
cd SCI    // go to the Scilab installation directory 
cd contrib    // go to the contrib directory 
unix('dir')      // return code
unix_s('dir')    // no output
unix_g('dir')    // output to variable
unix_w('dir')    // output to console
unix_x('dir')    // output to window
cd(path);
