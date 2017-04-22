exec('testplot.sce',-1)
A=gca();data_bounds=A.data_bounds,
replot([0.5,0.5,1,1]);              // modify A. data_bounds
A.data_bounds          
replot(data_bounds');               // revert to initial plot
A.data_bounds          
