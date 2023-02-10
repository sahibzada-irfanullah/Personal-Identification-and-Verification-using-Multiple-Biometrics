function piccmp%( tem,org )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    % 1_Reading images
    tem=imread('eyes.jpg');
    org=imread('girl.jpg');
    
   tem=rgb2gray(tem);
   org=rgb2gray(org);
% tem=im2bw(tem);
%    org=im2bw(org);
% figure,imshow(tem);
% title('template image');
% figure,imshow(org);
% title('scene Image');
    %2_Detecting Features
    temPoints=detectSURFFeatures(tem);
    orgPoints=detectSURFFeatures(org);
%     figure,imshow(tem);
%     title('100 strongest features from template image');
%     hold on;
%     plot(temPoints.selectStrongest(1000));
%     figure,imshow(org);
%     title('300 strongest features from template image');
%     hold on;
%     plot(orgPoints.selectStrongest(300));
    
    
    %3_Extract Features
    [temFeatures, temPoints]=extractFeatures(tem,temPoints);
    [orgFeatures, orgPoints]=extractFeatures(org,orgPoints);
    %4 find putative match  points
    temorgPairs=matchFeatures(temFeatures,orgFeatures,'MaxRatio',0.9);
    disp('tem features');temFeatures
    disp('org features');orgFeatures
    matchedtempPoints=temPoints(temorgPairs(:,1),:);
    matchedorgPoints=orgPoints(temorgPairs(:,2),:);
%     disp('tem and org pints');temorgPairs
%     disp('tem points');matchedtempPoints
%     disp('org pints');matchedorgPoints
% %     figure;
%     showMatchedFeatures(tem,org,matchedtempPoints,matchedorgPoints,'montage');
%     title('Putatively Matched Points (Including Outliers)');
    
    % 5_ locate object in the scence
    [tform, inliertemPoints,inlierorgPoints]=...
       estimateGeometricTransform(matchedtempPoints,matchedorgPoints,'affine');
%     figure;
%     showMatchedFeatures(tem,org,inliertemPoints,inlierorgPoints,'montage');
%     title('Matched Points (Inliers Only)');
    temPolygon=[1,1;...   %top left point
        size(tem,2),1;... %top right point(last column and 1st row)
        size(tem,2),size(tem,1);... %bottom rgith point(last colmn last row)
        1,size(tem,1);... %botton left point(last row first column
        1,1];%first point again(top left point)
    newtemPolygon=transformPointsForward(tform,temPolygon);
    figure;imshow(org);
    hold on;
    line(newtemPolygon(:,1),newtemPolygon(:,2),'Color','y');
    title('detected Objected');
    
end

