function [ pic ] = thin
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
global pic;
pic=bwmorph(~pic,'thin','inf');

pic=~pic;


end

