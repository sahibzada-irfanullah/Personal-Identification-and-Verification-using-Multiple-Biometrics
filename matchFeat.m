function [  ] = matchFeat( img1,img2 )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% img1=imresize(im2bw(imread('fp.tif')),[400 400]);
% img2=imresize(im2bw(imread('finger.tif')),[400 400]);
img1Features=featExtract(img1);
img2Features=featExtract(img2);
% imshow(img1)
% figure,imshow(img2)
img12pairs=matchFeatures(img1Features,img2Features,'MaxRatio',0.9);
%     disp('tem features');temFeatures
%     disp('org features');orgFeatures
% img1Points=featPoints(img1);
% 
% img2Points=featPoints(img2);
%     matchedimg1Points=img1Points(img12pairs(:,1),:);
%     matchedimg2Points=img2Points(img12pairs(:,2),:);
%    disp('match features');img12pairs
%    disp('matched img1 features');matchedimg1Points 
%   disp('matched img2 features');matchedimg2Points
%[r,c]=size(img1Features);
% img12pairs
%disp('matched img2 features')
%a=imresize(img12pairs,[r c]);
% size(normc(img1Features))
% size(normc(img2Features))
% size(img1Features)
% size(img2Features)
% a
% matchedimg2Points
% matchedimg1Points
% disp('matched features');

% disp('image1 features');
% if(length(img1Features)>=length(img2Features))
%      disp('img1Features');
%     compare(img2Features,img1Features)
%     
% else
%      disp('img2Features');
%     compare(img1Features,img2Features)
%end

Ratio=((length(img12pairs)/length(img2Features))*100)

disp('% matched')
disp('******************************************************')
%compare(matchedimg1Points,matchedimg2Points);  
end

