function [ feat ] = featExtract( img )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

  imgPoints=detectSURFFeatures(img);
  [imgFeatures, imgPoints]=extractFeatures(img,imgPoints);
  feat=imgFeatures;
  return 
  
end

