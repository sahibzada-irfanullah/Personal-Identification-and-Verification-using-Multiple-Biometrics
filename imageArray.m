function  imageArray
%function [ result ] = imageArray( nArrays, arraySize )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

clc;
% result = cell(1,4);
% for i = 1 : nArrays
% %for i = 1 :4
% result{i} =imresize(im2bw(imread(sprintf('%d.jpg',i))),[400 400]);


% test=imresize(im2bw(imread('1.tif')),[400 400]);
test=imresize(imread('11.tif'),[400 400]);

test=test(:,:,1)>160;
 figure,imshow(test)
for i = 1 :5
% org =imresize(im2bw(imread(sprintf('%d.tif',i))),[400 400]);
org =imresize(imread(sprintf('%d.tif',i)),[400 400]);
org=org(:,:,1)>160;
disp('******************************************************')
disp(strcat('comparing with "',sprintf('%d.tif',i),'"'))
matchFeat( test,org )

 figure,imshow(org)
end
% for i = 1 :6
% org =imresize(imread(sprintf('%d.jpg',i)),[400 400]);
% 
% 
% figure,imshow(org)
% end

end

