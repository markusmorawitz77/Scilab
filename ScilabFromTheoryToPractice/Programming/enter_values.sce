function S=enter_values(S,S0)
    // S  = sudoku's current state
    // S0 = initial sudoku
    // call from the variable editor to modify the sudoku
    text=[ 'enter new values for the sudoku ...
    (only modify cells that contain a 0) :';
    '';
    strcat(string(S0),' ','c')]
    S1=evstr(x_mdialog(text,string(1:9),string(1:9),string(S)))
    //check that the modification is valid
    [I,J]=find((S1<>S)&(S0<>0))
    if I<>[] then  // we modified cells that were not allowed
        messagebox('you have modified the sudoku''s initial given values!',...
        'error','modal')
    else  // check the validity of the new sudoku
        [I,J]=find((S1<>S))
        bool=%t
        while bool & (I<>[]) 
            // for each change 
            i=I(1),I(1)=[] // get the row
            j=J(1),J(1)=[] // get the column
            bool=test_cell(i,j,S1)  // check
        end
        if bool then // verify the change 
             S=S1
         else // if it is incompatible, undo modifications
              messagebox('the value '+string(S1(i,j))+' of cell ('+string(i)+','+string(j)+') is not permitted!','error','modal')
        end
    end
endfunction
