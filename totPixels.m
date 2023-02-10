function [ tPix ] = totPixels( y2,y1,x2,x1 )
%TOTPIXLES find distance in pix btw pints
%   Detailed explanation goes here

 tPix=round(sqrt((y2-y1)^2+(x2-x1)^2));  


end

