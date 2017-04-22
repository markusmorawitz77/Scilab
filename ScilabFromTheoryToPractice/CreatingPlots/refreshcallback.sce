//*********************************************
//  Setting up the interface
//*********************************************

Height=480;
Width=640;

// the figure
G = figure('position', [0 0 Width Height],...
'Tag','figure_handle',...
'backgroundcolor', name2rgb('lightblue')/255,...
"figure_name", 'Scilab Demo GUI');

//A : Axes that contain the graph  
A=newaxes(); 
A.auto_clear="on"; // automatically clear 

// F contains the uicontrols
F = uicontrol(G,...
'Tag','frame_handle',...
'position', [0 0 Width-2 35], ...
'fontsize', 12, ...
'style', 'frame',...
'string', 'buttons', ...
'backgroundcolor',  name2rgb('lightgray')/255);

//the slider
S = uicontrol('parent',F,...
'style', 'slider', ...
'Tag','slider_value',...
'position', [20 2 350 30],....
"Min",0,"Max",10,...
"value",0);

// several zones of text
T = uicontrol('parent',F,...
'style', 'text', ...
'Tag','slider_value_display',...
'position', [500 2  80 30],...
'String',' ',...
'callback','disp_callback', ...// displays the slider value
'backgroundcolor',  name2rgb('lightgray')/255,...
'HorizontalAlignment', 'left', ...
'FontAngle', 'italic', ...
'FontSize', 20, ...
'FontWeight', 'bold');

T1 = uicontrol('parent',F,...
'style', 'text', ...
'Tag','slider_value_min',...
'position', [2 2  18 30],...
'String', '0',...
'backgroundcolor',  name2rgb('lightgray')/255,...
'HorizontalAlignment', 'left', ...
'FontAngle', 'italic', ...
'FontSize', 20, ...
'FontWeight', 'bold');

T2 = uicontrol('parent',F,...
'style', 'text', ...
'Tag','slider_value_max',...
'position', [372 2  40 30],...
'String', '10',...
'HorizontalAlignment', 'left', ...
'FontAngle', 'italic', ...
'FontSize', 20, ...
'FontWeight', 'bold');

T3 = uicontrol('parent',F,...
'style', 'text', ...
'Tag','var_name',...
'position', [440 2  40 20],...
'String', '$$a=$$',...
'backgroundcolor',  name2rgb('lightgray')/255,...
'HorizontalAlignment', 'right', ...
'FontSize',20);

// a button to quit the interface
B = uicontrol('parent',F,...
'position', [Width-55,2 50 30], ...
'Tag','quit_button',...
'fontsize', 12, ...
'style', 'pushbutton',...
'string', 'Exit', ...
'callback', 'quit_callback', ...// will stop the loop and close the window
'backgroundcolor', name2rgb('red')/255);


//*********************************************
//  callbacks
//*********************************************

function disp_callback()
    //retrieve the slider value
    E1=findobj("Tag","slider_value");
    value=E1.value;
    //change the value displayed
    E2=findobj("Tag","slider_value_display");
    E2.string=string(value)
endfunction

function plot_callback()
    //retrieve the cursor value
    E1=findobj("Tag","slider_value");
    value=E1.value;
    //draw the curve
    drawlater()
    x=[1:0.001:20*%pi];
    y=cos(x).*cos(value*x)
    plot(x,y,'-r')
    xgrid(3)
    A=gca()
    A.title.text="$$y=\cos(x)\cos(a x)$$";
    A.title.font_size=4;
    drawnow()
endfunction

function quit_callback()
h=findobj("Tag","figure_handle");// retrieve the window's handle
delete(h);
abort  //  exit the while loop
endfunction


//*********************************************
//  launch the interface
//*********************************************

cont=%t
while cont // the main loop
    if findobj("Tag","figure_handle")==[] then
        cont=%f; // exit the window prematurely
        break
    else 
        F.position=[0 0 G.figure_size(1)-2 35];
       disp_callback()  // update the value a
       plot_callback()  // update the plot
       end
end
delete(gcf())  // if quit the window without using the button B
