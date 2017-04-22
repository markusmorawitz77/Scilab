exec('testplot.sce',-1)
A=gca();A.zoom_box
zoom_rect([0.5,0.5,1,1]);            // zoom  
A.zoom_box
unzoom()                             // revert to initial plot 
A.zoom_box
A.zoom_box=[0.5,0.5,1,1];    // equivalent to zoom_rect
A.zoom_box
unzoom()                             // revert to initial plot
A.zoom_box        
