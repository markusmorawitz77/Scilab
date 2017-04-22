function [varargout]=foo(varargin)
    [lhs,rhs]=argn()  //  number of input/output arguments
    printf('there are %d input arguments\n',rhs)
    printf('there are %d output arguments\n',lhs)
    for i=1:lhs
        varargout(i)=i
    end
endfunction

foo(1,2,3)
[a,b,c]=foo(1,2)
