function [y,varargout]=foo(x,varargin)
    y=x^2
// number of optional input arguments
    n=length(varargin)  
    if n>0 then 
        for i=1:n
            printf('optional argument number %d :',i)
            disp(varargin(i))
//use optional output arguments
            varargout(i)=varargin(i)
        end
    end
endfunction

// no optional arguments
foo(1) 
// 3 optional input arguments           
foo(1,2,3,4)          
// retrieve 2 optional output arguments
[y,a,b]=foo(1,2,3,4)  
