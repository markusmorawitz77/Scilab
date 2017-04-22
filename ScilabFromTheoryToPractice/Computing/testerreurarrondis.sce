// discrepancy between the display and result 
sqrt(2)^2  // displays 2
sqrt(2)^2-2  // but the previous result is not 2
//minor rounding error:
sqrt(6),sqrt(2)*sqrt(3)  // displays the same result
// however their results are slightly different: 
sqrt(6)-sqrt(2)*sqrt(3)  
// significant rounding error: 
X=1D30;Y=1D10;
X+Y-X  // result 0
X-X+Y  // result Y
//complex rounding error:
%e^(%i*%pi)  // =-1 within a 10^(-16) error margin
