function play_sudoku(S,varargin)
    // create or get the list of previous moves 
    if length(varargin)>0 then L=varargin(1) 
    // at the beginning, store S inside the list of previous moves
    else L=list(S)  
    end
    // choose the next move
    item=['choose a value ';                   //  num=1
    'undo the previous move';                  //  num=2
    'display the options for each cell';       //  num=3
    'display the sudoku';                      //  num=4
    'save the game';]                          //  num=5
    text=['double-click your choice']
    num=x_choose(item,text,'quit')
    // process the choice
    select num
    case 1 then 
        S1=enter_values(S,L($))
        if and(S1==S)  then   // no changes!
        // play again without modifying to list of moves
            play_sudoku(S,L) 
        //all the cells are filled correctly   
        elseif and(S1<>0) then 
            disp('you won!')     // you won
        else                   // keep playing
            L($+1)=S    // add the previous move to the list
            play_sudoku(S1,L) // play again
        end
    case 2 then               // undo the previous move
        if size(L)>1 then     // we can undo the previous move
            S0=L($)      // retrieve the previous state of the sudoku
            L($)=null()       // then delete it from the list
            disp('last choice canceled')
        else S0=S              // S  is the initial sudoku  
            L=list()           // list of previous moves is empty
            disp('you are back to the sudoku''s initial state!')
        end
        play_sudoku(S0,L)     // play again 
    case 3 then see_possibility(S)   // display options 
        play_sudoku(S,L)             // play again
    case 4 then            // display the sudoku in the console
        K=string(S)        // convert S to a strings
        K(find(S==0))='_'  // find empty cells
        disp(K,'current sudoku state :')
        play_sudoku(S,L)  // then play again
    case 5 then // save the game
        path=uiputfile('*.sod',pwd(),'choose a file to save the game:')
        if path<>'' then    //  a path is entered correctly 
            save('''+path+''','S','L') // save S and L
            disp('game saved')
            else disp('game not saved')
        end
    else // abort the game without saving
        disp('bye!')
    end
endfunction
