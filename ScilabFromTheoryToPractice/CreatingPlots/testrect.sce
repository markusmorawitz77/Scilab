rect=['xmin' 'ymin';'xmax' 'ymax']  //  format data_bounds
rect(:)'                            //  format zoom_box
box=['xmin' 'ymin' 'xmax' 'ymax']  //  format zoom_box
[box(1:2);box(3:4)]                //  format data_bounds
