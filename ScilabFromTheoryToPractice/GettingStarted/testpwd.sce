path=pwd();  // current directory
cd SCI  // go to the Scilab installation directory
pwd  // value of current directory
cd contrib  // go to the SCI/contrib/ directory 
cd '../'  // "move up" to the SCI directory
chdir('contrib')  // go to the SCI/contrib/ directory 
pwd  // value of current directory 
chdir(TMPDIR)  // go to the temporary directory 
mkdir('test')  // create the directory test/
ls('te*') //list the elements starting with "te"
rmdir('test')  // remove the test/ directory
dir('te*') // this is the content of the current directory which is empty []
chdir(path)  // return to the initial current directory
