function foo()
    1/0
endfunction
// error inside a function
ierr=execstr('foo()','errcatch','m')
[str,n,line,func]=lasterror()  //  error inside func="foo"
// error inside a command
ierr=execstr(['a=2';'b=1';'1/0'],'errcatch','m')
[str,n,line,func]=lasterror()  //  here func=""
