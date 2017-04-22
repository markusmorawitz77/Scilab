function [S]=solve_sudoku(S)
    Free=(S==0)  // initial sudoku coefficient positions
    k=1           // cell number of interest
    upordown=1    // to manage the progression forwards or backwards
    while k<=9^2  // as long as we haven't looked at all cells 
        [i,j]=num2pos(k)      // position of cell number k
        if Free(i,j) then    // if cell (i,j) is empty
            S(i,j)=S(i,j)+1   // increment the value
            if test_cell(i,j,S) then // if it passes the test
                upordown=1        // move on to the next cell
	    // we have checked all possible values:
            elseif S(i,j)>9 then 
                S(i,j)=0         // free up the cell
                upordown=-1      // go back a step
            else  upordown=0     //otherwise stay on this cell
            end
        end
        k=k+upordown  // move on to the next cell 
    end
endfunction
