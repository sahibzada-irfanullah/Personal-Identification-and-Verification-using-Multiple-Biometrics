function [ ] = matchFeattest( img1,img2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


img1Features=featExtract(img1);
img2Features=featExtract(img2);
img12pairs=matchFeatures(img1Features,img2Features,'MaxRatio',0.9);

img1Points=featPoints(img1);

img2Points=featPoints(img2);
    matchedimg1Points=img1Points(img12pairs(:,1),:);
    matchedimg2Points=img2Points(img12pairs(:,2),:);

s=(length(img12pairs)/length(img2Features))*100
disp('% matched')


end

